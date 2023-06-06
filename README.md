# Devops_cloud_batch
```
 ls
   1 date
   2 cal
   3 mkdir hello
   4 vim
   5 vi
   6 ls
   7 mkdir -p A/B/C
   8 ls
   9 tree A
  10 mkdir X Y Z
  11 ls
  12 mkdir  B C
  13 ls
  14 cd A
  15 ls
  16 touch kk.txt
  17 ls
  18 rm kk.txt 
  19 ls
  20 lsrm --help
  21 rm --help
  22 rm -r B -v
  23 ls
  24 mkdir B C D 
  25 cd B
  26 ls
  27 mkdir E F G
  28 ls
  29 cd E touch xyz.txt
  30 cd /
  31 tree A
  32 cd /A/B/E/
  33 touch xyz.txt
  34 tree A
  35 cd /
  36 tree A
  37 cp /A/B/E/xyz.txt   /A/B/G/
  38 tree A
  39 mv /A/B/E/xyz.txt /A/D/
  40 tree A
  41 cp -r /A/B/G /A/C/
  42 tree A
  43 mv /A/D   /A/B/E/
  44 tree A
  45 ls
  46 cd A/B/G
  47 pwd
  48 cd ..
  49 cd A/B/G
  50 cd /A/B/G
  51 <<x
  52    cli editor
  53 1) nano
  54 2) vi
  55 3) vim 
  56 x
  57 vi hum.txt
  58 ls
  59 vi hum.txt 
  60 cat hum.txt 
  61 vi hum.txt 
  62 cat hum.txt 
  63 history 
```
### task -1 create a directory structure
<img src='task_file_system.jpg'>

## CLI EDITOR
+ vi , vim , nano , ne
```
command : vi <filename>
eg : vi testfile

** MODES:
vi has two different modes:
- Command Mode:
In Command Mode, the characters you type are interpreted
as commands. For example: yy - copy

** Insert Mode:
In insert MOde, everything you type is inserted into the file as text
** COPY: 
- yy will copy the entire line.
- similarly 3yy will copy 3 lines 
- 'yw' will copy word , 7wy copies 7 words from current courser location

** CUT AND PASTE:
- Press 'dd' cut/delete the entire lines.
-similarly '3dd' will cut/delete 3 lines.
-press 'p' for paste

** SAVING AND EXITING:
:wq save the file and quits 
:w savefile but not quit VI
:q quits without save
:q! force quit

** SEARCHING:
cmd:  --> /{letter}  
FOR exmaple /ink  -- searches 'ink' a in file.
- n  repeats search in same direction
- N repeats search in opposite direction

** UNDO :
- press 'u'   for  undo last change
```

## something more :
https://github.com/Gaur95/Devops_cloud_batch/blob/f40aff8a248f54772896dd63a454459260749464/basic_linux.pdf

## Input Output Redirection
https://github.com/Gaur95/Devops_cloud_batch/blob/master/I_O%20redirection.pdf


