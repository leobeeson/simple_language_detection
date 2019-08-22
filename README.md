# simple_language_detection
Calls cld3 to detect languages of all pdf/text files in a folder.

GOOD TO HAVE:
- Have R installed (ver > 3.5)
- Run in console: install.packages("pacman")
- N.B.: If you don't install pacman before running the r file, run the r file twice (the first time will produce an error, the second time it'll work).

For detecting most representative language:

STEPS:
1) Replace all files in folder "data" with the documents for which you wish the language to be detected.
2) Run Language_Detection.Rproj
3) Run detect_languages.r
4) Find csv file in folder "output" with a column for each file name and a column for its detected language.

For detecting top 3 most representative languages:

STEPS:
1) Replace all files in folder "data" with the documents for which you wish the language to be detected.
2) Run Language_Detection.Rproj
3) Run detect_multiple_languages.r
4) Find csv file in folder "output" with a column for each file name and several columns for each language and its probability, reliability, and proportion of overall text.
