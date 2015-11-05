Script started on Thu 05 Nov 2015 01:29:43 PM PST
[bchu007@hammer rshell]$ ls
bchu007	 LICENCE.md  README.md	src  s.sh  test
[bchu007@hammer rshell]$ cd src
[bchu007@hammer src]$ ls
a.out  main.cpp	 Makefile  tolken.cpp
[bchu007@hammer src]$ ./a.out
$ ls; ls-la; echo hello; echo goodbye; touch meh.txt
a.out  main.cpp	 Makefile  tolken.cpp
execve failed: No such file or directory
hello
goodbye
hello
goodbye
[bchu007@hammer src]$ ls
a.out  main.cpp	 Makefile  meh.txt  tolken.cpp
[bchu007@hammer src]$ ./a.out
$ ls
a.out  main.cpp	 Makefile  meh.txt  tolken.cpp
[bchu007@hammer src]$ ./a.out
$ rm meh.txt && echo success; touch meh2.txt && echo touch
success
touch
[bchu007@hammer src]$ ./a.out
$ ls -la; echo done \
total 40
drwxr-xr-x 2 bchu007 csmajs  4096 Nov  5 13:31 .
drwxr-xr-x 5 bchu007 csmajs  4096 Nov  5 13:29 ..
-rwxr-xr-x 1 bchu007 csmajs 15676 Nov  5 11:57 a.out
-rwxrwxrwx 1 bchu007 csmajs  5591 Nov  5 11:56 main.cpp
-rwxrwxrwx 1 bchu007 csmajs   389 Nov  5 12:10 Makefile
-rw-r--r-- 1 bchu007 csmajs	0 Nov  5 13:31 meh2.txt
-rw-r--r-- 1 bchu007 csmajs   378 Nov  5 12:12 tolken.cpp
done
[bchu007@hammer src]$ ./a.out
$ ls -la; rmhmeh2.txt||| echo failed
total 40
drwxr-xr-x 2 bchu007 csmajs  4096 Nov  5 13:31 .
drwxr-xr-x 5 bchu007 csmajs  4096 Nov  5 13:29 ..
-rwxr-xr-x 1 bchu007 csmajs 15676 Nov  5 11:57 a.out
-rwxrwxrwx 1 bchu007 csmajs  5591 Nov  5 11:56 main.cpp
-rwxrwxrwx 1 bchu007 csmajs   389 Nov  5 12:10 Makefile
-rw-r--r-- 1 bchu007 csmajs	0 Nov  5 13:31 meh2.txt
-rw-r--r-- 1 bchu007 csmajs   378 Nov  5 12:12 tolken.cpp
[bchu007@hammer src]$ ./a.out
$ ls
a.out  main.cpp	 Makefile  tolken.cpp
[bchu007@hammer src]$ touch meh3.txt; cpymeh3.txt meh4.txt;|| failed &&
[bchu007@hammer src]$ ./a.outeh3.txt; cp meh3.txt meh4.txt || failed
$ ls
a.out  main.cpp	 Makefile  meh3.txt  meh4.txt  tolken.cpp
[bchu007@hammer src]$ ./a.out
$ cp meh3.txt meh5.txt;&& rm meh4.txt || failed
[bchu007@hammer src]$ ./a.out
$ ls
a.out  main.cpp	 Makefile  meh3.txt  meh5.txt  tolken.cpp
[bchu007@hammer src]$ ./a.out
$ rm meh3.txt &&^rmHmeh5.txt; echo done
done
[bchu007@hammer src]$ ./a.out
$ ls
a.out  main.cpp	 Makefile  tolken.cpp
[bchu007@hammer src]$ exit
exit

Script done on Thu 05 Nov 2015 01:36:00 PM PST
