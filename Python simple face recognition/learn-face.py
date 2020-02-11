# usage: pyhton learn-face.py *image Location* *name of person in image* (without *)
# this will save the encoding in the known-faces.csv

import face_recognition
import cv2
import numpy as np
import csv
import sys

imageLoc = sys.argv[1]
name = sys.argv[2]

print("start learning \"" + name + "'s\" face")
# Load a sample picture and learn how to recognize it.
image = face_recognition.load_image_file(imageLoc)
faceEncoding = face_recognition.face_encodings(image)[0]

#TODO: if succesfull
print("succesfull!")
print("saving data to csv")

data = {
    "name":name,
    "encoding":faceEncoding.tolist()
}

with open('known-faces.csv', mode='a', newline='') as encodings:
    fieldnames = ['name', 'encoding']
    writer = csv.DictWriter(encodings, fieldnames=fieldnames)
    writer.writerow(data)
encodings.close()

print("encoding en saving complete!")