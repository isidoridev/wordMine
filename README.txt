The goal of this project is:
	Take a file with words,
	Add the words into a list,
	and count their occurrence.

By analyzing the frequency,
we can see popular words.
This can be used by many people,
either increasing vocab in a new
language or a science. Or
skimming information.

If you understand all of the unique words,
hypothetically you should be able to 
understand the meaning of the text.


<h2>Programming</h2>
There are two methods if you want super
optimization, one for small and one for large. 
And there should be an option for 
"the noun" and other "double barrel" 
instead of "double" and "barrel".

0) Open & convert from pdf to txt
1) Parse the text file (TICK)
	1.5) Clean up the text file (TICK)
2) If word is not in list, add it
3) If word IS in list, counter++
or
(small files)
2) Add each word to a list (TICK)
2b) counts  = collections.Counter(wordlist) returns the frequencys (TICK)

Still a slight bug with _"_ symbol.
	It doesn't delete the quote,
	maybe we should group the quote as one? Nah.
pdfs are untested atm.
Im sure it could use less looping.
Pretty sure the badchars list doesn't work, hence ".
