# Mine words in a text file

Print to screen all the words in a targeted file, sorted from most to least frequent.




#### Example
By running: wordMine README.md

prints to console: Counter({'file':5, 'words':4, 'text':4, 'wordmine':2,...})

Filters out boring words like, 'the', 'when'...

### Why:
By analyzing the frequencies,
we can see popular words.
This can be used by many,
to increase vocab in
a new language or for
skimming information.

If one understands all of the unique words,
hypothetically you should be able to have
a superficial understanding of the text.


### How it works (currently)

1. Parse the text file

2. Clean up the text file

3. Add each word to a list

4. print(collections.Counter(wordlist)) returns the freqs


### Possible Improvements
1. Still a bug with special symbols being included.

2. Im sure it could use less looping.

3. PDFs don't work

### How to use
1. Clone the git repository into a folder of your choice.

2. chmod +x wordMine.sh

3. Enter your favourite editor to this file: 'emacs ~/.bashrc'

4. At the bottom of the file, put the path to where you cloned:
   
   __alias wordMine='~/git/wordMine/wordMine.sh'__


Now run 'wordMine <anyFile.txt>'

Good job. 