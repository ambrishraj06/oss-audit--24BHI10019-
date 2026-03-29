#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Ambrish Raj | Course: Open Source Software
# interactive script that just asks a few questions and makes a neat text file

# Concept note: an alias in linux is a shortcut for a long command.
# For example, alias ll='ls -la' lets you type 'll' instead of 'ls -la'
# you'd usually put those in ~/.bashrc but figured I'd mention it here!

echo "Answer three questions to generate your manifesto."
echo ""

# read -p prompts the user with text and waits for them to type
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# grabbing today's date so it looks official
DATE=$(date '+%d %B %Y')

# create the output file name using string concat with username
OUTPUT="manifesto_$(whoami).txt"

echo "--------------------------------------------------" > "$OUTPUT"
echo "My Open Source Manifesto ($DATE)" >> "$OUTPUT"
echo "--------------------------------------------------" >> "$OUTPUT"

# writing paragraphs into the file using >> to append
echo "The open-source tool I rely on the most is $TOOL." >> "$OUTPUT"
echo "It proves that we can build great things together," >> "$OUTPUT"
echo "instead of keeping code locked away." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "To me, the word 'freedom' means $FREEDOM." >> "$OUTPUT"
echo "Software should reflect that kind of freedom." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "If I could build something and give it away for free," >> "$OUTPUT"
echo "it would definitely be $BUILD." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Because as the saying goes, we stand on the shoulders of giants." >> "$OUTPUT"
echo "--------------------------------------------------" >> "$OUTPUT"

echo ""
echo "Manifesto saved to $OUTPUT!"
echo "Here is what it looks like:"
echo ""

# cat out the file we just built
cat "$OUTPUT"
