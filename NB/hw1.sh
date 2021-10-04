#!/bin/bash

# Use Unix commands to print the name of each character with dialogue in the script, one name per line. 
echo "Question 1.5"
# TODO: Replace the following line with your code.
grep -o '^[[:space:]]\{25\}[A-Z][A-Z][A-Z][A-Z]*[[:space:]]\?[A-Z]\{0,9\}[[:space:]]\?$' lotr_script.txt | sort -u
# First, extract all lines of dialogue in this script. 
# Then, normalize and tokenize this text such that all alphabetic characters are converted to lowercase and words are sequences of alphabetic characers. 
# Finally, print the top-20 most frequent word types and their corresponding counts.
# Hint: Ignore parantheticals. These contain short stage directions.
echo
echo "Question 1.6"
export double='"'
export num='0-9'
grep -o "^[[:space:]]\{17\}['.$double]\?[A-Za-z$num]\+.*$" lotr_script.txt | tr "[A-Z]" "[a-z]" |tr -sc 'A-Za-z' '\012' | sort | uniq -c | sort -r | head -20
# double = '"'
# grep -o "^[[:space:]]\{17\}['.$double]\?[0-9A-Za-z]\+.*$" lotr_script.txt > compareison.txt

# grep -o "^[[:space:]]\{17\}[.]\?[']\?[$double]\?[1-9]\?[A-Za-z]\+.*$" > compareison.txt
# grep -o "^[[:space:]]\{17\}[.]\?[']\?[$double]\?[1-9]\?[A-Za-z]\+.*$" lotr_script.txt |tr -sc 'A-Za-z' '\012' | sort | uniq -c | sort -r | head -20
# TODO: Replace the following line with your code.