#!/usr/bin/python3
import argparse
import re
from collections import Counter


wordlist = []
goodwords = 0
allwords = 0
commonEngwords = ['the', 'a', 'in','of','this','is','if','or','and','with','into','their', 'be', 'you','should', 'to', 'for','it']


def MyCode(filename):
        textMine(filename)	


def output(filename, wordlist, goodwords, allwords):
	print('This file contains: ' + str(goodwords) + ' valid words')
	print('Allwords = ' +str(allwords))
	print()
	print(Counter(wordlist))


def scan(word):
	global allwords, wordlist, goodwords
	allwords+=1	
	word = (word.rstrip().lower())
	if word in commonEngwords:
		return
	wordlist.append(word)
	goodwords+=1


def textMine(filename):
	### Main
	for line in filename.readlines():
		words = re.split(r'[\W]+', line)
		if len(words) > 0:
			for w in words:
				if len(w) < 1:
					continue
				scan(w)
	output(filename, wordlist, goodwords, allwords)


def pdfMine(filename):
        import pdfplumber
        pdf = pdfplumber.open(filename)
       	for page in pdf.pages:
       		text = page.extract_text()
       		for line in text.readlines():
       			for word in line.split():
       				allwords +=1
       				if True in [char.isdigit() or (char in badchars) for char in word]:
	       				continue
	       			word = (word.rstrip().lower())
	       			if word in commonEngwords:
	       				continue
       				wordlist.append(word)
       				goodwords += 1
        output(filename, wordlist, goodwords, allwords)

        
if __name__ == '__main__':
	parser = argparse.ArgumentParser()
	parser.add_argument('filename', type=argparse.FileType('r'))
	args = parser.parse_args()
	MyCode(args.filename)
