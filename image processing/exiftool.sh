#!/bin/sh

# Setzt das Bearbeitungsdatum auf das Originaldatum der Datei für das ganze Verzeichnis.
exiftool '-DateTimeOriginal>FileModifyDate' .
exiftool -all= *.jpg
