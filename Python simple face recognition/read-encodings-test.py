# this is to test the implementation of reading the csv file


import face_recognition
import cv2
import numpy as np
import csv
import sys


# Load a sample picture and learn how to recognize it.
obama_image = face_recognition.load_image_file("faces/obama.jpg")
obama_face_encoding = face_recognition.face_encodings(obama_image)[0]

# Load a second sample picture and learn how to recognize it.
trump_image = face_recognition.load_image_file("faces/Trump.jpg")
trump_face_encoding = face_recognition.face_encodings(trump_image)[0]

# Create arrays of known face encodings and their names
known_face_encodings = [
    obama_face_encoding,
    trump_face_encoding
]
known_face_names = [
    "Barrack Obama",
    "Donald Trump"
]

read_face_encodings = []
read_face_names = []


with open('test-faces.csv') as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    for row in csv_reader:
        read_face_names.append(row[0])
        temp_str = row[1].replace(']','').replace('[','')
        temp_arr = temp_str.replace('"','').split(",")
        read_face_encodings.append(np.array(temp_arr).astype(np.float64))


print("names are the same: ", known_face_names == read_face_names)
print("encodings are same type: ", type(known_face_encodings) == type(read_face_encodings))
print("encodings are same: ", np.array_equal(known_face_encodings, read_face_encodings))
