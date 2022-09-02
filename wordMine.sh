#!/usr/bin/python3

import argparse
from collections import Counter

def MyCode(filename):

    wordlist = []
    goodwords = 0
    allwords = 0
    badchars = [',','.',':',';','!',"",'"']
    commonEngwords = ['the', 'a', 'in','of','this','is','if','or','and','with','into','their', 'be', 'you','should', 'to', 'for','it']
    
    for line in filename.readlines():

        for word in line.split():
            allwords += 1
            if True in [char.isdigit() or (char in badchars) for char in word]:
                continue
            word = (word.rstrip().lower())
            if word in commonEngwords:
                continue
            wordlist.append(word)
            goodwords += 1
    counts = Counter(wordlist)


    print('This file contains: ' + str(goodwords) + ' valid words')
    print('Allwords = ')
    print(allwords)

    print()
    print(counts)

    
if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('filename', type=argparse.FileType('r'))
    args = parser.parse_args()
    MyCode(args.filename)
