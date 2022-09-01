<h1>Mine words in a text file</h1>

The goal of this project is:
Take a file with words,
Add the words into a list,
and count their occurrence in the list.

By analyzing the frequencies,
we can see popular words in a text.
This can be used as a way to
increasing vocab in
a new language or for
skimming information.

If one understands all of the unique words,
hypothetically you should be able to have
a superficial understanding of the text.

<h2>How it runs</h3>
0) Open & convert from pdf to txt*
1) Parse and clean the text file
2) Add each word to a list
3) counts  = collections.Counter(wordlist) returns freqs


<h3>Possible Improvements</h3>
There is a way to optimize the code for
big files vs small files. Some files are
10,000 words+.

And there should be an option for 
"the noun" to be filtered correctly.

Also, dump results into a file
filename: mostcommon1, mostcommon2, etc.

Im sure it could use less looping.
Still a slight bug with some symbols.
Pretty sure the badchars list doesn't work.

<h2>How to Run</h2>
1. Clone git repository
2. Add to bin commands
3. Run in terminal as "wordMine <fileArg>"