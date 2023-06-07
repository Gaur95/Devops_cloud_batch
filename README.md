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
## 5 june task solution
```
oot@5f8b8f6f5e0b:/# history 
    1  history 
    2  docker ps
    3  history 
    4  lscpu 
    5  lscpu | head -n 6
    6  lscpu | head -n 6 | tail -n 3
    7  history 
root@5f8b8f6f5e0b:/# lscpu | head -n 6 | tail -n 3 >/tmp/lscpu.txt
root@5f8b8f6f5e0b:/# cat /tmp/lscpu.txt 
Byte Order:                      Little Endian
CPU(s):                          4
On-line CPU(s) list:             0-3
root@5f8b8f6f5e0b:/# hgdavh >>/tmp/success.txt 2>>/tmp/error.txt
root@5f8b8f6f5e0b:/# cat /tmp/error.txt 
bash: hgdavh: command not found
root@5f8b8f6f5e0b:/# date >>/tmp/success.txt 2>>/tmp/error.txt
root@5f8b8f6f5e0b:/# cat /tmp/error.txt 
bash: hgdavh: command not found
root@5f8b8f6f5e0b:/# cat /tmp/success.txt 
Tue Jun  6 08:05:56 UTC 2023
root@5f8b8f6f5e0b:/# hgdavh >>/tmp/success.txt
bash: hgdavh: command not found
root@5f8b8f6f5e0b:/# hgdavh 2>>/tmp/error.txt
```
## 6 june history
```
id
   18  cat /etc/passwd
   19  adduser akash1
   20  cat /etc/passwd
   21  tail -n 1 /etc/passwd
   22  history 
   23  id akash1
   24  su - akash1
   25  passwd akash1
   26  passwd 
   27  ls
   28  ls -l
   29  cat  /etc/group
   30  groupadd devops
   31  tail -n 1 /etc/group
   32  usermod --help
   33  usermod -aG devops akash 
   34  tail -n 1 /etc/group
   35  userdel devops akash
   36  deluser devops akash
   37  deluser akash devops
   38  su - akash
   39  su - akash1
   40  cd /home/akash1/
   41  ls
   42  ls -l
   43  chown root:devops hello
   44  ls -l
   45  history 
   46  userdel --help
   47  userdel -r akash1
   48  tail -n 1 /etc/passwd
   49  userdel -r akash
   50  tail -n 1 /etc/passwd
   51  groupdel devops
   52  tail -n 1 /etc/group
   53  history 
```
## User managment
https://github.com/Gaur95/Devops_cloud_batch/blob/master/user_managment.pdf

## permission
https://github.com/Gaur95/Devops_cloud_batch/blob/master/permission.pdf


## task 
<img src='task2.jpg'>

## 7 june history
```
24  cat /etc/passwd
   25  cat /etc/group
   26  addgroup hello
   27  cat /etc/group
   28  usermod -aG hello u1
   29  cat /etc/group
   30  id u1
   31  usermod -aG hello u2
   32  tail -n 1 /etc/group
   33  history 
   34  touch demo.txt
   35  ls -l
   36  chown u1:hello demo.txt 
   37  ls -l
   38  history 
   39  ls
   40  ls -ld hello
   41  chmod 777 hello
   42  ls -ld hello
   43  mkdir test
   44  ls -ld test
   45  touch testfile.txt
   46  ls -l testfile.txt 
   47  umask 
   48  umask 0077
   49  umask 
   50  touch test1
   51  mkdir testdir
   52  ls -l
   53  ls -lrt
   54  ls --help
   55  ls -lt
   56  ls -lrt
   57  which date
   58  cd /usr/bin/
   59  ls
   60  ls -l date
   61  chmod 744 date
   62  ls -l date
   63  chmod 644 date
   64  ls -l date
   65  date
   66  history 
   67  date
   68  chmod +x /usr/bin/date 
   69  date
   70  alias time=date
   71  time
   72  date
   73  time
   74  alias baby=date
   75  baby 
   76  baby
   77  cd ~
   78  pwd
   79  ls -a
   80  vim .bashrc 
   81  date
   82  baby
   83  pwd
   84  cd /root/
   85  pwd
   86  vim .bashrc 
   87  baby
   88  alias
   89  unalias baby
   90  unalias ls
   91  alias 
   92  ls
   93  ls --color=auto
   94  ls
   95  alias cl='ls --color=auto'
   96  ls
   97  cl
   98  <<x
   99  var
  100  local variable - in a function
  101  globle variable -- anywhere
  102  shell vailable ---
  103  x
  104  hello=world
  105  echo hello
  106  echo $hello
  107  echo $HOME
  108  echo $SHELL
  109  env
  110  export hello=world
  111  env
  112  env | grep hello
  113  tar --help
  114  vim test22
  115  yes "hello world">test22
  116  ls -l test22 
  117  ls -lh test22 
  118  echo "ky cool hai hum" > test33
  119  tar -cf hum.tar test22 test33 
  120  ls
  121  ls -lh
  122  tar --help
  123  ls 
  124  rm -rf test33 test22
  126  tar -xf hum.tar
  128  rm -rf hum.tar 
  129  tar -czf humc.tar test22
  130  ls -lh humc.tar 

```


