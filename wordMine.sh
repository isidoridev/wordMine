#!/usr/bin/python3

import argparse
from collections import Counter

def MyCode(filename):

    wordlist = []
    goodwords = 0
    allwords = 0
    badchars = [',','.',':',';','!',"'",'"', '_', '#','<','>']
    commonEngwords = ['','the', 'a', 'in','of','this','is','if','or','and','with','into','their', 'be', 'you','should', 'to', 'for','it', 'can', 'how', 'your', 'when', 'by']
    
    for line in filename.readlines():

        for word in line.split():
            allwords += 1
            for char in word:
                if char.isdigit() is True:
                    continue
                for char in badchars:
                    word = word.replace(char,"")
            if True in [char.isdigit() or (char in badchars) for char in word]:
                continue
            word = (word.rstrip().lower())
            if word in commonEngwords:
                continue
            wordlist.append(word)
            goodwords += 1
    counts = Counter(wordlist)


    print('Allwords = ' + str(allwords) + 'total words')
    print('This file contains: ' + str(goodwords) + ' valid words')
    print()
    print(counts)

    
if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('filename', type=argparse.FileType('r'))
    args = parser.parse_args()
    MyCode(args.filename)
