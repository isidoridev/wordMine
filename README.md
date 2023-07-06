# Mine words in a text file

### What?
Print all the words in a targeted file, sorted from most to least frequent.

### Example:
`wordMine README.md`

prints to console: Counter({'file':5, 'words':4, 'text':4, 'wordmine':2,...})

Filters out common words like, 'the', 'when'...



### Install guide (Linux/Bash):

1. Clone the git repository into a folder of your choice.

2. chmod +x wordMine.sh

3. Enter your favourite editor to this file: 'emacs ~/.bashrc'

4. At the bottom of the file, put the path to where you cloned:
   
   __alias wordMine='~/wordMine/wordMine.sh'__


5. In the terminal: source ~/.bashrc

Now run:

wordMine <anyFile.txt>
