#usage: python photo-face.py *photo path (if nothing filled in, test-pic.jpg will be chosen*

import face_recognition
import cv2
import numpy as np
import json
import csv 
import sys

if len(sys.argv) > 1:
    imgloc = sys.argv[1]
else:
    imgloc = "test-pic.jpg"
image = face_recognition.load_image_file(imgloc)

# Resize frame of video to 1/2 size for faster face recognition processing
small_image = cv2.resize(image, (0, 0), fx=0.5, fy=0.5)

face_locations = face_recognition.face_locations(small_image)
face_encodings = face_recognition.face_encodings(small_image, face_locations)

#TODO: add faces from csv
known_face_encodings = []
known_face_names = []
face_names = []

with open('known-faces.csv') as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    for row in csv_reader:
        known_face_names.append(row[0])
        temp_str = row[1].replace(']','').replace('[','')
        temp_arr = temp_str.replace('"','').split(",")
        known_face_encodings.append(np.array(temp_arr).astype(np.float64))


for face_encoding in face_encodings:
    name = "Unknown"

    # See if the face is a match for the known face(s)
    matches = face_recognition.compare_faces(known_face_encodings, face_encoding)

    # If a match was found in known_face_encodings, just use the first one.
    if True in matches:
        first_match_index = matches.index(True)
        name = known_face_names[first_match_index]

    # # Or instead, use the known face with the smallest distance to the new face
    # face_distances = face_recognition.face_distance(known_face_encodings, face_encoding)
    # best_match_index = np.argmin(face_distances)
    # if matches[best_match_index]:
    #     name = known_face_names[best_match_index]

    face_names.append(name)


for (top, right, bottom, left), name in zip(face_locations, face_names):
    # Scale back up face locations since the frame we detected in was scaled to 1/2 size
    top *= 2
    right *= 2
    bottom *= 2
    left *= 2


    # Draw a box around the face
    cv2.rectangle(image, (left, top), (right, bottom), (0, 0, 255), 2)

    # Draw a label with a name below the face
    cv2.rectangle(image, (left, bottom - 35), (right, bottom), (0, 0, 255), cv2.FILLED)
    font = cv2.FONT_HERSHEY_DUPLEX
    cv2.putText(image, name, (left + 6, bottom - 6), font, 1.0, (255, 255, 255), 1)

#convert RGB to BGR (for cv2)
image = image[:, :, ::-1]
cv2.imshow('Image', image)
cv2.waitKey(0)