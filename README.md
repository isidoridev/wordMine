# wordMine

### Text Analysis Program
Print all the words in a targeted file, sorted from most to least frequent.

### Example:
`wordMine README.md`

prints to console: Counter({'file':5, 'words':4, 'text':4, 'wordmine':2,...})

Filters out common words like, 'the', 'when'...


### Install guide (Linux/Bash):

1. Clone the git repository into a folder of your choice.

2. Enter the folder and `chmod +x wordMine.sh`

3. Edit this config file: `~/.bashrc`

4. Create a binding to the wordMine script:
   
   ```alias wordMine='~/wordMine/wordMine.sh'```


5. After editing, refresh your bash config: `source ~/.bashrc`

Now run:

`wordMine <anyFile.txt>`
