Bandit Levels:


Bandit Level 0 - 1 
Bandit level 1-2
*Problem*The password for the next level is stored in a file called - located in the home directory

Solution:
Ls 
Ls -l 
Cat ./-

* Results*
263JGJPfgU6LtdEvgfWU1XP5yac29mFx

Quick explanation 
I saw through ls -l that is was a file therefore pressed cat - didnt work then pressed cat ./- then provided me with the answer sweet mush 
2-3
Problem* The password for the next level is stored in a file called --spaces in this filename-- located in the home directory

Solution 
Ls - l 
Cat ./”--spaces in this filename” 
Answer revealed 

Results 
MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx

Get to: 
As when there is spaces in the file you are unable to cat it as it only cats the first word in the file in this example spaces therefore must put it in quotations to make sure you mean this whole file and cause it has a dash infront of it ./ to make sure the program know this one.

3-4
Problem:
The password for the next level is stored in a hidden file in the inhere directory.

Solution 
Cd inhere 
Ls -al 
Cat ./…hiding from you 

Answer 
2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ

Get to 

First as we know it said directory so we skipped right on to cd inhere then pressed ls -al which shows the information such as users owners and writers group 
Then saw it was a file 
cat./

( This file in this current directory used as well as when it may get mistake for someone else when symbols are in front the file )

4-5
*The password for the next level is stored in the only human-readable file in the inhere directory. Tip: if your terminal is messed up, try the “reset” command.

Solution

file./*
Wildcards

Get to -
In order to see human readable file you must use the command file 
File command gives us the type of data in the file  such as data and asiics text 
Wildcards are exactly that will give us anything that is associated with our option such as file* will produce file00 fileAa if available 
In this case * produces the type of files available to give us the bases of the file

Answers
4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw

Problem
The password for the next level is stored in a file somewhere under the inhere directory and has all of the following properties:
human-readable
1033 bytes in size
not executable
File works better with a few files however grep works better with alot of files
! - not (whatever)


Solution 

HWasnPhtq9AVKe0dmk45nxy20cvUa6EG


Since we are looking for a file i know we use find and the symbols 
As we were told that we was looking for a file in find here we would use a find inhere to look specifically in this directory only as we know it said 1033 bytes which can be shown through c therefore give us a next command and it said not exccutable therefore exclude it ! - executable and narrowed it down to inhere/ma/file2
Then cat or head to show the first 10 lines in that file o



Problem
The password for the next level is stored somewhere on the server and has all of the following properties:
owned by user bandit7
owned by group bandit6
33 bytes in size
Solution 
Find / -user bandit7 -group bandit 6 - size 33c 2>/dev/null

Why 
As they said the password would be anywhere within the file systems we use / and then find as it will look everywhere then it said owned by user bandit 7 and then owned by group6 and then size 33 byes which we can shorten to cc and then due to toooo many errors coming up we reduce it to 2>/dev/null 
And brought up our file then we catted it 

answer
morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj


Problem 
The password for the next level is stored in the file data.txt next to the word millionth


Solution : 
Vim data.txt 
/millionth 
Then copy and pasted




Get to 
As it said it is stored in the file data.txt i said vim data.txt to be able to se contents of file then
Then i pressed / then types word then copied the password next to it 
dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc


8-9
Problem 
The password for the next level is stored in the file data.txt and is the only line of text that oc1.
 The Power of sort and uniq 🗂️
The uniq command is perfect for finding unique lines, but it has a catch: it only works if the identical lines are right next to each other.
sort: This command puts all identical lines together in a big group.
uniq -u: The -u flag tells the computer to only print lines that are truly unique (not repeated).
curs only once


The pipe takes the output of one command and "feeds" it directly into the next one.
Solution 
Cat data.txt 
First sort 
unique
Get to 
Firstly we were told that it has a unique line therefore we know we are using the command -uniq -u as -u tells the computers to make sure to only run actual unique options 
However that cannot happen without them being next to each other therefore sort puts them in a clean set up to be able to work 


Answer:
 4CKMh1JI91bUIZZPXDqGanal4xvAg0JM
Problems : 
The password for the next level is stored in the file data.txt in one of the few human-readable strings, preceded by several ‘=’ characters.


Solution 
Cat data.txt | sort | strings | grep “=” 


How to 
As they said it is in the the file data.txt so 100% cat and i know i will be using strings as mentioned and using grep to “=” therefore in a sentence 
Cat data.txt | sort | strings | grep “+” 
Answer : FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey


Problem :
The password for the next level is stored in the file data.txt, which contains base64 encoded data


Based64 command use to deal with data with 64 common characters 
-d is involved in decoding the data back into readable characters
Solutions:
Based64 command 
-d 
Data.txt 
Get to 
Basically saying to decode the data.txt which include based64 back into readable words
Answer
: dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr


Problem:
The password for the next level is stored in the file data.txt, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positionsm:
Tr:translate 
Solution:
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
Get to 
Firstly we must read the data then from that using the pipe we take that information from the cat and use tr to translate it to normal english from the latin english used here and bring our results.


Answer 7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4
Problem 


When used the -recursive it reverts the effect of a compressed file 
If you are in a completely different area within the file systems and want to copy a file you use ~/ X the files name or directory name and will bring one here thank you 
