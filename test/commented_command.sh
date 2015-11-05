Script started on Thu 05 Nov 2015 01:38:30 PM PST
[bchu007@hammer rshell]$ ls
bchu007	 LICENCE.md  README.md	src  s.sh  test
[bchu007@hammer rshell]$ cd src
[bchu007@hammer src]$ ls
a.out  main.cpp	 Makefile  tolken.cpp
[bchu007@hammer src]$ ./a.out
$ #echo hello world
[bchu007@hammer src]$ valgrind -v ./a.out
==5272== Memcheck, a memory error detector
==5272== Copyright (C) 2002-2012, and GNU GPL'd, by Julian Seward et al.
==5272== Using Valgrind-3.8.1 and LibVEX; rerun with -h for copyright info
==5272== Command: ./a.out
==5272==
--5272-- Valgrind options:
--5272--    -v
--5272-- Contents of /proc/version:
--5272--   Linux version 2.6.32-573.7.1.el6.x86_64 (mockbuild@c6b8.bsys.dev.centos.org) (gcc version 4.4.7 20120313 (Red Hat 4.4.7-16) (GCC) ) #1 SMP Tue Sep 22 22:00:00 UTC 2015
--5272-- Arch and hwcaps: AMD64, amd64-sse3-cx16-lzcnt
--5272-- Page sizes: currently 4096, max supported 4096
--5272-- Valgrind library directory: /usr/lib64/valgrind
--5272-- Reading syms from /home/csmajs/bchu007/CS100/rshell/src/a.out
--5272-- Reading syms from /usr/lib64/valgrind/memcheck-amd64-linux
--5272--    object doesn't have a dynamic symbol table
--5272-- Reading syms from /lib64/ld-2.12.so
--5272-- Scheduler: using generic scheduler lock implementation.
--5272-- Reading suppressions file: /usr/lib64/valgrind/default.supp
==5272== embedded gdbserver: reading from /tmp/vgdb-pipe-from-vgdb-to-5272-by-bchu007-on-hammer.cs.ucr.edu
==5272== embedded gdbserver: writing to	  /tmp/vgdb-pipe-to-vgdb-from-5272-by-bchu007-on-hammer.cs.ucr.edu
==5272== embedded gdbserver: shared mem	  /tmp/vgdb-pipe-shared-mem-vgdb-5272-by-bchu007-on-hammer.cs.ucr.edu
==5272==
==5272== TO CONTROL THIS PROCESS USING vgdb (which you probably
==5272== don't want to do, unless you know exactly what you're doing,
==5272== or are doing some strange experiment):
==5272==   /usr/lib64/valgrind/../../bin/vgdb --pid=5272 ...command...
==5272==
==5272== TO DEBUG THIS PROCESS USING GDB: start GDB like this
==5272==   /path/to/gdb ./a.out
==5272== and then give GDB the following command
==5272==   target remote | /usr/lib64/valgrind/../../bin/vgdb --pid=5272
==5272== --pid is optional if only one valgrind process is running
==5272==
--5272-- REDIR: 0x3dc0217c30 (strlen) redirected to 0x38049551 (vgPlain_amd64_linux_REDIR_FOR_strlen)
--5272-- Reading syms from /usr/lib64/valgrind/vgpreload_core-amd64-linux.so
--5272-- Reading syms from /usr/lib64/valgrind/vgpreload_memcheck-amd64-linux.so
--5272-- REDIR: 0x3dc0217a40 (index) redirected to 0x4a07c30 (index)
--5272-- REDIR: 0x3dc0217ac0 (strcmp) redirected to 0x4a08570 (strcmp)
--5272-- Reading syms from /usr/lib64/libstdc++.so.6.0.13
--5272--    object doesn't have a symbol table
--5272-- Reading syms from /lib64/libm-2.12.so
--5272-- Reading syms from /lib64/libgcc_s-4.4.7-20120601.so.1
--5272--    object doesn't have a symbol table
--5272-- Reading syms from /lib64/libc-2.12.so
--5272-- REDIR: 0x3dc0684d00 (strcasecmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5272-- REDIR: 0x3dc0686fc0 (strncasecmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5272-- REDIR: 0x3dc0682c70 (__GI_strrchr) redirected to 0x4a07ab0 (__GI_strrchr)
--5272-- REDIR: 0x3dc0681190 (__GI_strlen) redirected to 0x4a07fb0 (__GI_strlen)
--5272-- REDIR: 0x3dc067f710 (strcmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5272-- REDIR: 0x3dc067f750 (__GI_strcmp) redirected to 0x4a08520 (__GI_strcmp)
--5272-- REDIR: 0x3dc0681150 (strlen) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5272-- REDIR: 0x3dc06896a0 (memcpy) redirected to 0x4a08b60 (memcpy)
$ #echo this is it
--5272-- REDIR: 0x3dcbebd0a0 (operator new(unsigned long)) redirected to 0x4a0757a (operator new(unsigned long))
--5272-- REDIR: 0x3dcbebb2f0 (operator delete(void*)) redirected to 0x4a05f8f (operator delete(void*))
--5272-- REDIR: 0x3dcbebd1d0 (operator new[](unsigned long)) redirected to 0x4a07110 (operator new[](unsigned long))
--5272-- REDIR: 0x3dc0680ba0 (strcpy) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5272-- REDIR: 0x3dc0680bd0 (__GI_strcpy) redirected to 0x4a080a0 (__GI_strcpy)
==5272== Invalid write of size 8
==5272==    at 0x401179: fill(char*, char**) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==    by 0x401530: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==  Address 0x4c2d480 is 0 bytes after a block of size 0 alloc'd
==5272==    at 0x4A07192: operator new[](unsigned long) (vg_replace_malloc.c:363)
==5272==    by 0x40148C: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==
==5272== Invalid read of size 8
==5272==    at 0x401201: tolkenizer(char**, char**, char*, int&) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==    by 0x401574: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==  Address 0x4c2d480 is 0 bytes after a block of size 0 alloc'd
==5272==    at 0x4A07192: operator new[](unsigned long) (vg_replace_malloc.c:363)
==5272==    by 0x40148C: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==
==5272== Invalid write of size 8
==5272==    at 0x401266: tolkenizer(char**, char**, char*, int&) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==    by 0x401574: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==  Address 0x4c2d4c0 is 0 bytes after a block of size 0 alloc'd
==5272==    at 0x4A07192: operator new[](unsigned long) (vg_replace_malloc.c:363)
==5272==    by 0x4014AB: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==
--5272-- REDIR: 0x3dcbebb330 (operator delete[](void*)) redirected to 0x4a05adf (operator delete[](void*))
--5272-- REDIR: 0x3dc067b920 (free) redirected to 0x4a063a9 (free)
==5272==
==5272== HEAP SUMMARY:
==5272==     in use at exit: 0 bytes in 0 blocks
==5272==   total heap usage: 17 allocs, 17 frees, 199 bytes allocated
==5272==
==5272== All heap blocks were freed -- no leaks are possible
==5272==
==5272== ERROR SUMMARY: 3 errors from 3 contexts (suppressed: 6 from 6)
==5272==
==5272== 1 errors in context 1 of 3:
==5272== Invalid write of size 8
==5272==    at 0x401266: tolkenizer(char**, char**, char*, int&) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==    by 0x401574: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==  Address 0x4c2d4c0 is 0 bytes after a block of size 0 alloc'd
==5272==    at 0x4A07192: operator new[](unsigned long) (vg_replace_malloc.c:363)
==5272==    by 0x4014AB: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==
==5272==
==5272== 1 errors in context 2 of 3:
==5272== Invalid read of size 8
==5272==    at 0x401201: tolkenizer(char**, char**, char*, int&) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==    by 0x401574: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==  Address 0x4c2d480 is 0 bytes after a block of size 0 alloc'd
==5272==    at 0x4A07192: operator new[](unsigned long) (vg_replace_malloc.c:363)
==5272==    by 0x40148C: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==
==5272==
==5272== 1 errors in context 3 of 3:
==5272== Invalid write of size 8
==5272==    at 0x401179: fill(char*, char**) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==    by 0x401530: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==  Address 0x4c2d480 is 0 bytes after a block of size 0 alloc'd
==5272==    at 0x4A07192: operator new[](unsigned long) (vg_replace_malloc.c:363)
==5272==    by 0x40148C: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5272==
--5272--
--5272-- used_suppression:	4 U1004-ARM-_dl_relocate_object
--5272-- used_suppression:	2 glibc-2.5.x-on-SUSE-10.2-(PPC)-2a
==5272==
==5272== ERROR SUMMARY: 3 errors from 3 contexts (suppressed: 6 from 6)
[bchu007@hammer src]$ valgrind--v
a.out	    main.cpp	Makefile    tolken.cpp
[bchu007@hammer src]$ valgrind -v ./a.out
==5331== Memcheck, a memory error detector
==5331== Copyright (C) 2002-2012, and GNU GPL'd, by Julian Seward et al.
==5331== Using Valgrind-3.8.1 and LibVEX; rerun with -h for copyright info
==5331== Command: ./a.out
==5331==
--5331-- Valgrind options:
--5331--    -v
--5331-- Contents of /proc/version:
--5331--   Linux version 2.6.32-573.7.1.el6.x86_64 (mockbuild@c6b8.bsys.dev.centos.org) (gcc version 4.4.7 20120313 (Red Hat 4.4.7-16) (GCC) ) #1 SMP Tue Sep 22 22:00:00 UTC 2015
--5331-- Arch and hwcaps: AMD64, amd64-sse3-cx16-lzcnt
--5331-- Page sizes: currently 4096, max supported 4096
--5331-- Valgrind library directory: /usr/lib64/valgrind
--5331-- Reading syms from /home/csmajs/bchu007/CS100/rshell/src/a.out
--5331-- Reading syms from /usr/lib64/valgrind/memcheck-amd64-linux
--5331--    object doesn't have a dynamic symbol table
--5331-- Reading syms from /lib64/ld-2.12.so
--5331-- Scheduler: using generic scheduler lock implementation.
--5331-- Reading suppressions file: /usr/lib64/valgrind/default.supp
==5331== embedded gdbserver: reading from /tmp/vgdb-pipe-from-vgdb-to-5331-by-bchu007-on-hammer.cs.ucr.edu
==5331== embedded gdbserver: writing to	  /tmp/vgdb-pipe-to-vgdb-from-5331-by-bchu007-on-hammer.cs.ucr.edu
==5331== embedded gdbserver: shared mem	  /tmp/vgdb-pipe-shared-mem-vgdb-5331-by-bchu007-on-hammer.cs.ucr.edu
==5331==
==5331== TO CONTROL THIS PROCESS USING vgdb (which you probably
==5331== don't want to do, unless you know exactly what you're doing,
==5331== or are doing some strange experiment):
==5331==   /usr/lib64/valgrind/../../bin/vgdb --pid=5331 ...command...
==5331==
==5331== TO DEBUG THIS PROCESS USING GDB: start GDB like this
==5331==   /path/to/gdb ./a.out
==5331== and then give GDB the following command
==5331==   target remote | /usr/lib64/valgrind/../../bin/vgdb --pid=5331
==5331== --pid is optional if only one valgrind process is running
==5331==
--5331-- REDIR: 0x3dc0217c30 (strlen) redirected to 0x38049551 (vgPlain_amd64_linux_REDIR_FOR_strlen)
--5331-- Reading syms from /usr/lib64/valgrind/vgpreload_core-amd64-linux.so
--5331-- Reading syms from /usr/lib64/valgrind/vgpreload_memcheck-amd64-linux.so
--5331-- REDIR: 0x3dc0217a40 (index) redirected to 0x4a07c30 (index)
--5331-- REDIR: 0x3dc0217ac0 (strcmp) redirected to 0x4a08570 (strcmp)
--5331-- Reading syms from /usr/lib64/libstdc++.so.6.0.13
--5331--    object doesn't have a symbol table
--5331-- Reading syms from /lib64/libm-2.12.so
--5331-- Reading syms from /lib64/libgcc_s-4.4.7-20120601.so.1
--5331--    object doesn't have a symbol table
--5331-- Reading syms from /lib64/libc-2.12.so
--5331-- REDIR: 0x3dc0684d00 (strcasecmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5331-- REDIR: 0x3dc0686fc0 (strncasecmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5331-- REDIR: 0x3dc0682c70 (__GI_strrchr) redirected to 0x4a07ab0 (__GI_strrchr)
--5331-- REDIR: 0x3dc0681190 (__GI_strlen) redirected to 0x4a07fb0 (__GI_strlen)
--5331-- REDIR: 0x3dc067f710 (strcmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5331-- REDIR: 0x3dc067f750 (__GI_strcmp) redirected to 0x4a08520 (__GI_strcmp)
--5331-- REDIR: 0x3dc0681150 (strlen) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5331-- REDIR: 0x3dc06896a0 (memcpy) redirected to 0x4a08b60 (memcpy)
$ echo hi
--5331-- REDIR: 0x3dcbebd0a0 (operator new(unsigned long)) redirected to 0x4a0757a (operator new(unsigned long))
--5331-- REDIR: 0x3dcbebb2f0 (operator delete(void*)) redirected to 0x4a05f8f (operator delete(void*))
--5331-- REDIR: 0x3dcbebd1d0 (operator new[](unsigned long)) redirected to 0x4a07110 (operator new[](unsigned long))
--5331-- REDIR: 0x3dc0680ba0 (strcpy) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5331-- REDIR: 0x3dc0680bd0 (__GI_strcpy) redirected to 0x4a080a0 (__GI_strcpy)
--5343-- REDIR: 0x3dc067f690 (__GI_strchr) redirected to 0x4a07b70 (__GI_strchr)
--5343-- REDIR: 0x3dc06813c0 (__GI_strncmp) redirected to 0x4a08470 (__GI_strncmp)
--5343-- REDIR: 0x3dc068ab20 (strchrnul) redirected to 0x4a09fb0 (strchrnul)
hi
--5331-- REDIR: 0x3dcbebb330 (operator delete[](void*)) redirected to 0x4a05adf (operator delete[](void*))
--5331-- REDIR: 0x3dc067b920 (free) redirected to 0x4a063a9 (free)
==5331==
==5331== HEAP SUMMARY:
==5331==     in use at exit: 0 bytes in 0 blocks
==5331==   total heap usage: 15 allocs, 15 frees, 420 bytes allocated
==5331==
==5331== All heap blocks were freed -- no leaks are possible
==5331==
==5331== ERROR SUMMARY: 0 errors from 0 contexts (suppressed: 6 from 6)
--5331--
--5331-- used_suppression:	4 U1004-ARM-_dl_relocate_object
--5331-- used_suppression:	2 glibc-2.5.x-on-SUSE-10.2-(PPC)-2a
==5331==
==5331== ERROR SUMMARY: 0 errors from 0 contexts (suppressed: 6 from 6)
[bchu007@hammer src]$ valgrind -v ./a.out
==5344== Memcheck, a memory error detector
==5344== Copyright (C) 2002-2012, and GNU GPL'd, by Julian Seward et al.
==5344== Using Valgrind-3.8.1 and LibVEX; rerun with -h for copyright info
==5344== Command: ./a.out
==5344==
--5344-- Valgrind options:
--5344--    -v
--5344-- Contents of /proc/version:
--5344--   Linux version 2.6.32-573.7.1.el6.x86_64 (mockbuild@c6b8.bsys.dev.centos.org) (gcc version 4.4.7 20120313 (Red Hat 4.4.7-16) (GCC) ) #1 SMP Tue Sep 22 22:00:00 UTC 2015
--5344-- Arch and hwcaps: AMD64, amd64-sse3-cx16-lzcnt
--5344-- Page sizes: currently 4096, max supported 4096
--5344-- Valgrind library directory: /usr/lib64/valgrind
--5344-- Reading syms from /home/csmajs/bchu007/CS100/rshell/src/a.out
--5344-- Reading syms from /usr/lib64/valgrind/memcheck-amd64-linux
--5344--    object doesn't have a dynamic symbol table
--5344-- Reading syms from /lib64/ld-2.12.so
--5344-- Scheduler: using generic scheduler lock implementation.
--5344-- Reading suppressions file: /usr/lib64/valgrind/default.supp
==5344== embedded gdbserver: reading from /tmp/vgdb-pipe-from-vgdb-to-5344-by-bchu007-on-hammer.cs.ucr.edu
==5344== embedded gdbserver: writing to	  /tmp/vgdb-pipe-to-vgdb-from-5344-by-bchu007-on-hammer.cs.ucr.edu
==5344== embedded gdbserver: shared mem	  /tmp/vgdb-pipe-shared-mem-vgdb-5344-by-bchu007-on-hammer.cs.ucr.edu
==5344==
==5344== TO CONTROL THIS PROCESS USING vgdb (which you probably
==5344== don't want to do, unless you know exactly what you're doing,
==5344== or are doing some strange experiment):
==5344==   /usr/lib64/valgrind/../../bin/vgdb --pid=5344 ...command...
==5344==
==5344== TO DEBUG THIS PROCESS USING GDB: start GDB like this
==5344==   /path/to/gdb ./a.out
==5344== and then give GDB the following command
==5344==   target remote | /usr/lib64/valgrind/../../bin/vgdb --pid=5344
==5344== --pid is optional if only one valgrind process is running
==5344==
--5344-- REDIR: 0x3dc0217c30 (strlen) redirected to 0x38049551 (vgPlain_amd64_linux_REDIR_FOR_strlen)
--5344-- Reading syms from /usr/lib64/valgrind/vgpreload_core-amd64-linux.so
--5344-- Reading syms from /usr/lib64/valgrind/vgpreload_memcheck-amd64-linux.so
--5344-- REDIR: 0x3dc0217a40 (index) redirected to 0x4a07c30 (index)
--5344-- REDIR: 0x3dc0217ac0 (strcmp) redirected to 0x4a08570 (strcmp)
--5344-- Reading syms from /usr/lib64/libstdc++.so.6.0.13
--5344--    object doesn't have a symbol table
--5344-- Reading syms from /lib64/libm-2.12.so
--5344-- Reading syms from /lib64/libgcc_s-4.4.7-20120601.so.1
--5344--    object doesn't have a symbol table
--5344-- Reading syms from /lib64/libc-2.12.so
--5344-- REDIR: 0x3dc0684d00 (strcasecmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5344-- REDIR: 0x3dc0686fc0 (strncasecmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5344-- REDIR: 0x3dc0682c70 (__GI_strrchr) redirected to 0x4a07ab0 (__GI_strrchr)
--5344-- REDIR: 0x3dc0681190 (__GI_strlen) redirected to 0x4a07fb0 (__GI_strlen)
--5344-- REDIR: 0x3dc067f710 (strcmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5344-- REDIR: 0x3dc067f750 (__GI_strcmp) redirected to 0x4a08520 (__GI_strcmp)
--5344-- REDIR: 0x3dc0681150 (strlen) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5344-- REDIR: 0x3dc06896a0 (memcpy) redirected to 0x4a08b60 (memcpy)
$ #echo hi
--5344-- REDIR: 0x3dcbebd0a0 (operator new(unsigned long)) redirected to 0x4a0757a (operator new(unsigned long))
--5344-- REDIR: 0x3dcbebb2f0 (operator delete(void*)) redirected to 0x4a05f8f (operator delete(void*))
--5344-- REDIR: 0x3dcbebd1d0 (operator new[](unsigned long)) redirected to 0x4a07110 (operator new[](unsigned long))
--5344-- REDIR: 0x3dc0680ba0 (strcpy) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5344-- REDIR: 0x3dc0680bd0 (__GI_strcpy) redirected to 0x4a080a0 (__GI_strcpy)
==5344== Invalid write of size 8
==5344==    at 0x401179: fill(char*, char**) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==    by 0x401530: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==  Address 0x4c2d410 is 0 bytes after a block of size 0 alloc'd
==5344==    at 0x4A07192: operator new[](unsigned long) (vg_replace_malloc.c:363)
==5344==    by 0x40148C: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==
==5344== Invalid read of size 8
==5344==    at 0x401201: tolkenizer(char**, char**, char*, int&) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==    by 0x401574: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==  Address 0x4c2d410 is 0 bytes after a block of size 0 alloc'd
==5344==    at 0x4A07192: operator new[](unsigned long) (vg_replace_malloc.c:363)
==5344==    by 0x40148C: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==
==5344== Invalid write of size 8
==5344==    at 0x401266: tolkenizer(char**, char**, char*, int&) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==    by 0x401574: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==  Address 0x4c2d450 is 0 bytes after a block of size 0 alloc'd
==5344==    at 0x4A07192: operator new[](unsigned long) (vg_replace_malloc.c:363)
==5344==    by 0x4014AB: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==
--5344-- REDIR: 0x3dcbebb330 (operator delete[](void*)) redirected to 0x4a05adf (operator delete[](void*))
--5344-- REDIR: 0x3dc067b920 (free) redirected to 0x4a063a9 (free)
==5344==
==5344== HEAP SUMMARY:
==5344==     in use at exit: 0 bytes in 0 blocks
==5344==   total heap usage: 16 allocs, 16 frees, 158 bytes allocated
==5344==
==5344== All heap blocks were freed -- no leaks are possible
==5344==
==5344== ERROR SUMMARY: 3 errors from 3 contexts (suppressed: 6 from 6)
==5344==
==5344== 1 errors in context 1 of 3:
==5344== Invalid write of size 8
==5344==    at 0x401266: tolkenizer(char**, char**, char*, int&) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==    by 0x401574: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==  Address 0x4c2d450 is 0 bytes after a block of size 0 alloc'd
==5344==    at 0x4A07192: operator new[](unsigned long) (vg_replace_malloc.c:363)
==5344==    by 0x4014AB: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==
==5344==
==5344== 1 errors in context 2 of 3:
==5344== Invalid read of size 8
==5344==    at 0x401201: tolkenizer(char**, char**, char*, int&) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==    by 0x401574: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==  Address 0x4c2d410 is 0 bytes after a block of size 0 alloc'd
==5344==    at 0x4A07192: operator new[](unsigned long) (vg_replace_malloc.c:363)
==5344==    by 0x40148C: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==
==5344==
==5344== 1 errors in context 3 of 3:
==5344== Invalid write of size 8
==5344==    at 0x401179: fill(char*, char**) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==    by 0x401530: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==  Address 0x4c2d410 is 0 bytes after a block of size 0 alloc'd
==5344==    at 0x4A07192: operator new[](unsigned long) (vg_replace_malloc.c:363)
==5344==    by 0x40148C: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5344==
--5344--
--5344-- used_suppression:	4 U1004-ARM-_dl_relocate_object
--5344-- used_suppression:	2 glibc-2.5.x-on-SUSE-10.2-(PPC)-2a
==5344==
==5344== ERROR SUMMARY: 3 errors from 3 contexts (suppressed: 6 from 6)
[bchu007@hammer src]$ valgrind -v ./a.out
==5345== Memcheck, a memory error detector
==5345== Copyright (C) 2002-2012, and GNU GPL'd, by Julian Seward et al.
==5345== Using Valgrind-3.8.1 and LibVEX; rerun with -h for copyright info
==5345== Command: ./a.out
==5345==
--5345-- Valgrind options:
--5345--    -v
--5345-- Contents of /proc/version:
--5345--   Linux version 2.6.32-573.7.1.el6.x86_64 (mockbuild@c6b8.bsys.dev.centos.org) (gcc version 4.4.7 20120313 (Red Hat 4.4.7-16) (GCC) ) #1 SMP Tue Sep 22 22:00:00 UTC 2015
--5345-- Arch and hwcaps: AMD64, amd64-sse3-cx16-lzcnt
--5345-- Page sizes: currently 4096, max supported 4096
--5345-- Valgrind library directory: /usr/lib64/valgrind
--5345-- Reading syms from /home/csmajs/bchu007/CS100/rshell/src/a.out
--5345-- Reading syms from /usr/lib64/valgrind/memcheck-amd64-linux
--5345--    object doesn't have a dynamic symbol table
--5345-- Reading syms from /lib64/ld-2.12.so
--5345-- Scheduler: using generic scheduler lock implementation.
--5345-- Reading suppressions file: /usr/lib64/valgrind/default.supp
==5345== embedded gdbserver: reading from /tmp/vgdb-pipe-from-vgdb-to-5345-by-bchu007-on-hammer.cs.ucr.edu
==5345== embedded gdbserver: writing to	  /tmp/vgdb-pipe-to-vgdb-from-5345-by-bchu007-on-hammer.cs.ucr.edu
==5345== embedded gdbserver: shared mem	  /tmp/vgdb-pipe-shared-mem-vgdb-5345-by-bchu007-on-hammer.cs.ucr.edu
==5345==
==5345== TO CONTROL THIS PROCESS USING vgdb (which you probably
==5345== don't want to do, unless you know exactly what you're doing,
==5345== or are doing some strange experiment):
==5345==   /usr/lib64/valgrind/../../bin/vgdb --pid=5345 ...command...
==5345==
==5345== TO DEBUG THIS PROCESS USING GDB: start GDB like this
==5345==   /path/to/gdb ./a.out
==5345== and then give GDB the following command
==5345==   target remote | /usr/lib64/valgrind/../../bin/vgdb --pid=5345
==5345== --pid is optional if only one valgrind process is running
==5345==
--5345-- REDIR: 0x3dc0217c30 (strlen) redirected to 0x38049551 (vgPlain_amd64_linux_REDIR_FOR_strlen)
--5345-- Reading syms from /usr/lib64/valgrind/vgpreload_core-amd64-linux.so
--5345-- Reading syms from /usr/lib64/valgrind/vgpreload_memcheck-amd64-linux.so
--5345-- REDIR: 0x3dc0217a40 (index) redirected to 0x4a07c30 (index)
--5345-- REDIR: 0x3dc0217ac0 (strcmp) redirected to 0x4a08570 (strcmp)
--5345-- Reading syms from /usr/lib64/libstdc++.so.6.0.13
--5345--    object doesn't have a symbol table
--5345-- Reading syms from /lib64/libm-2.12.so
--5345-- Reading syms from /lib64/libgcc_s-4.4.7-20120601.so.1
--5345--    object doesn't have a symbol table
--5345-- Reading syms from /lib64/libc-2.12.so
--5345-- REDIR: 0x3dc0684d00 (strcasecmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5345-- REDIR: 0x3dc0686fc0 (strncasecmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5345-- REDIR: 0x3dc0682c70 (__GI_strrchr) redirected to 0x4a07ab0 (__GI_strrchr)
--5345-- REDIR: 0x3dc0681190 (__GI_strlen) redirected to 0x4a07fb0 (__GI_strlen)
--5345-- REDIR: 0x3dc067f710 (strcmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5345-- REDIR: 0x3dc067f750 (__GI_strcmp) redirected to 0x4a08520 (__GI_strcmp)
--5345-- REDIR: 0x3dc0681150 (strlen) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5345-- REDIR: 0x3dc06896a0 (memcpy) redirected to 0x4a08b60 (memcpy)
$ echo hi #there
--5345-- REDIR: 0x3dcbebd0a0 (operator new(unsigned long)) redirected to 0x4a0757a (operator new(unsigned long))
--5345-- REDIR: 0x3dcbebb2f0 (operator delete(void*)) redirected to 0x4a05f8f (operator delete(void*))
--5345-- REDIR: 0x3dcbebd1d0 (operator new[](unsigned long)) redirected to 0x4a07110 (operator new[](unsigned long))
--5345-- REDIR: 0x3dc0680ba0 (strcpy) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5345-- REDIR: 0x3dc0680bd0 (__GI_strcpy) redirected to 0x4a080a0 (__GI_strcpy)
--5348-- REDIR: 0x3dc067f690 (__GI_strchr) redirected to 0x4a07b70 (__GI_strchr)
--5348-- REDIR: 0x3dc06813c0 (__GI_strncmp) redirected to 0x4a08470 (__GI_strncmp)
--5348-- REDIR: 0x3dc068ab20 (strchrnul) redirected to 0x4a09fb0 (strchrnul)
hi
--5345-- REDIR: 0x3dcbebb330 (operator delete[](void*)) redirected to 0x4a05adf (operator delete[](void*))
--5345-- REDIR: 0x3dc067b920 (free) redirected to 0x4a063a9 (free)
==5345==
==5345== HEAP SUMMARY:
==5345==     in use at exit: 0 bytes in 0 blocks
==5345==   total heap usage: 17 allocs, 17 frees, 535 bytes allocated
==5345==
==5345== All heap blocks were freed -- no leaks are possible
==5345==
==5345== ERROR SUMMARY: 0 errors from 0 contexts (suppressed: 6 from 6)
--5345--
--5345-- used_suppression:	4 U1004-ARM-_dl_relocate_object
--5345-- used_suppression:	2 glibc-2.5.x-on-SUSE-10.2-(PPC)-2a
==5345==
==5345== ERROR SUMMARY: 0 errors from 0 contexts (suppressed: 6 from 6)
[bchu007@hammer src]$ valgrind -v ./a.out
==5357== Memcheck, a memory error detector
==5357== Copyright (C) 2002-2012, and GNU GPL'd, by Julian Seward et al.
==5357== Using Valgrind-3.8.1 and LibVEX; rerun with -h for copyright info
==5357== Command: ./a.out
==5357==
--5357-- Valgrind options:
--5357--    -v
--5357-- Contents of /proc/version:
--5357--   Linux version 2.6.32-573.7.1.el6.x86_64 (mockbuild@c6b8.bsys.dev.centos.org) (gcc version 4.4.7 20120313 (Red Hat 4.4.7-16) (GCC) ) #1 SMP Tue Sep 22 22:00:00 UTC 2015
--5357-- Arch and hwcaps: AMD64, amd64-sse3-cx16-lzcnt
--5357-- Page sizes: currently 4096, max supported 4096
--5357-- Valgrind library directory: /usr/lib64/valgrind
--5357-- Reading syms from /home/csmajs/bchu007/CS100/rshell/src/a.out
--5357-- Reading syms from /usr/lib64/valgrind/memcheck-amd64-linux
--5357--    object doesn't have a dynamic symbol table
--5357-- Reading syms from /lib64/ld-2.12.so
--5357-- Scheduler: using generic scheduler lock implementation.
--5357-- Reading suppressions file: /usr/lib64/valgrind/default.supp
==5357== embedded gdbserver: reading from /tmp/vgdb-pipe-from-vgdb-to-5357-by-bchu007-on-hammer.cs.ucr.edu
==5357== embedded gdbserver: writing to	  /tmp/vgdb-pipe-to-vgdb-from-5357-by-bchu007-on-hammer.cs.ucr.edu
==5357== embedded gdbserver: shared mem	  /tmp/vgdb-pipe-shared-mem-vgdb-5357-by-bchu007-on-hammer.cs.ucr.edu
==5357==
==5357== TO CONTROL THIS PROCESS USING vgdb (which you probably
==5357== don't want to do, unless you know exactly what you're doing,
==5357== or are doing some strange experiment):
==5357==   /usr/lib64/valgrind/../../bin/vgdb --pid=5357 ...command...
==5357==
==5357== TO DEBUG THIS PROCESS USING GDB: start GDB like this
==5357==   /path/to/gdb ./a.out
==5357== and then give GDB the following command
==5357==   target remote | /usr/lib64/valgrind/../../bin/vgdb --pid=5357
==5357== --pid is optional if only one valgrind process is running
==5357==
--5357-- REDIR: 0x3dc0217c30 (strlen) redirected to 0x38049551 (vgPlain_amd64_linux_REDIR_FOR_strlen)
--5357-- Reading syms from /usr/lib64/valgrind/vgpreload_core-amd64-linux.so
--5357-- Reading syms from /usr/lib64/valgrind/vgpreload_memcheck-amd64-linux.so
--5357-- REDIR: 0x3dc0217a40 (index) redirected to 0x4a07c30 (index)
--5357-- REDIR: 0x3dc0217ac0 (strcmp) redirected to 0x4a08570 (strcmp)
--5357-- Reading syms from /usr/lib64/libstdc++.so.6.0.13
--5357--    object doesn't have a symbol table
--5357-- Reading syms from /lib64/libm-2.12.so
--5357-- Reading syms from /lib64/libgcc_s-4.4.7-20120601.so.1
--5357--    object doesn't have a symbol table
--5357-- Reading syms from /lib64/libc-2.12.so
--5357-- REDIR: 0x3dc0684d00 (strcasecmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5357-- REDIR: 0x3dc0686fc0 (strncasecmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5357-- REDIR: 0x3dc0682c70 (__GI_strrchr) redirected to 0x4a07ab0 (__GI_strrchr)
--5357-- REDIR: 0x3dc0681190 (__GI_strlen) redirected to 0x4a07fb0 (__GI_strlen)
--5357-- REDIR: 0x3dc067f710 (strcmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5357-- REDIR: 0x3dc067f750 (__GI_strcmp) redirected to 0x4a08520 (__GI_strcmp)
--5357-- REDIR: 0x3dc0681150 (strlen) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5357-- REDIR: 0x3dc06896a0 (memcpy) redirected to 0x4a08b60 (memcpy)
$ echo what is wrong
--5357-- REDIR: 0x3dcbebd0a0 (operator new(unsigned long)) redirected to 0x4a0757a (operator new(unsigned long))
--5357-- REDIR: 0x3dcbebb2f0 (operator delete(void*)) redirected to 0x4a05f8f (operator delete(void*))
--5357-- REDIR: 0x3dcbebd1d0 (operator new[](unsigned long)) redirected to 0x4a07110 (operator new[](unsigned long))
--5357-- REDIR: 0x3dc0680ba0 (strcpy) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5357-- REDIR: 0x3dc0680bd0 (__GI_strcpy) redirected to 0x4a080a0 (__GI_strcpy)
--5373-- REDIR: 0x3dc067f690 (__GI_strchr) redirected to 0x4a07b70 (__GI_strchr)
--5373-- REDIR: 0x3dc06813c0 (__GI_strncmp) redirected to 0x4a08470 (__GI_strncmp)
--5373-- REDIR: 0x3dc068ab20 (strchrnul) redirected to 0x4a09fb0 (strchrnul)
what is wrong
--5357-- REDIR: 0x3dcbebb330 (operator delete[](void*)) redirected to 0x4a05adf (operator delete[](void*))
--5357-- REDIR: 0x3dc067b920 (free) redirected to 0x4a063a9 (free)
==5357==
==5357== HEAP SUMMARY:
==5357==     in use at exit: 0 bytes in 0 blocks
==5357==   total heap usage: 17 allocs, 17 frees, 1,010 bytes allocated
==5357==
==5357== All heap blocks were freed -- no leaks are possible
==5357==
==5357== ERROR SUMMARY: 0 errors from 0 contexts (suppressed: 6 from 6)
--5357--
--5357-- used_suppression:	4 U1004-ARM-_dl_relocate_object
--5357-- used_suppression:	2 glibc-2.5.x-on-SUSE-10.2-(PPC)-2a
==5357==
==5357== ERROR SUMMARY: 0 errors from 0 contexts (suppressed: 6 from 6)
[bchu007@hammer src]$ valgrind -v ./a.out
==5388== Memcheck, a memory error detector
==5388== Copyright (C) 2002-2012, and GNU GPL'd, by Julian Seward et al.
==5388== Using Valgrind-3.8.1 and LibVEX; rerun with -h for copyright info
==5388== Command: ./a.out
==5388==
--5388-- Valgrind options:
--5388--    -v
--5388-- Contents of /proc/version:
--5388--   Linux version 2.6.32-573.7.1.el6.x86_64 (mockbuild@c6b8.bsys.dev.centos.org) (gcc version 4.4.7 20120313 (Red Hat 4.4.7-16) (GCC) ) #1 SMP Tue Sep 22 22:00:00 UTC 2015
--5388-- Arch and hwcaps: AMD64, amd64-sse3-cx16-lzcnt
--5388-- Page sizes: currently 4096, max supported 4096
--5388-- Valgrind library directory: /usr/lib64/valgrind
--5388-- Reading syms from /home/csmajs/bchu007/CS100/rshell/src/a.out
--5388-- Reading syms from /usr/lib64/valgrind/memcheck-amd64-linux
--5388--    object doesn't have a dynamic symbol table
--5388-- Reading syms from /lib64/ld-2.12.so
--5388-- Scheduler: using generic scheduler lock implementation.
--5388-- Reading suppressions file: /usr/lib64/valgrind/default.supp
==5388== embedded gdbserver: reading from /tmp/vgdb-pipe-from-vgdb-to-5388-by-bchu007-on-hammer.cs.ucr.edu
==5388== embedded gdbserver: writing to	  /tmp/vgdb-pipe-to-vgdb-from-5388-by-bchu007-on-hammer.cs.ucr.edu
==5388== embedded gdbserver: shared mem	  /tmp/vgdb-pipe-shared-mem-vgdb-5388-by-bchu007-on-hammer.cs.ucr.edu
==5388==
==5388== TO CONTROL THIS PROCESS USING vgdb (which you probably
==5388== don't want to do, unless you know exactly what you're doing,
==5388== or are doing some strange experiment):
==5388==   /usr/lib64/valgrind/../../bin/vgdb --pid=5388 ...command...
==5388==
==5388== TO DEBUG THIS PROCESS USING GDB: start GDB like this
==5388==   /path/to/gdb ./a.out
==5388== and then give GDB the following command
==5388==   target remote | /usr/lib64/valgrind/../../bin/vgdb --pid=5388
==5388== --pid is optional if only one valgrind process is running
==5388==
--5388-- REDIR: 0x3dc0217c30 (strlen) redirected to 0x38049551 (vgPlain_amd64_linux_REDIR_FOR_strlen)
--5388-- Reading syms from /usr/lib64/valgrind/vgpreload_core-amd64-linux.so
--5388-- Reading syms from /usr/lib64/valgrind/vgpreload_memcheck-amd64-linux.so
--5388-- REDIR: 0x3dc0217a40 (index) redirected to 0x4a07c30 (index)
--5388-- REDIR: 0x3dc0217ac0 (strcmp) redirected to 0x4a08570 (strcmp)
--5388-- Reading syms from /usr/lib64/libstdc++.so.6.0.13
--5388--    object doesn't have a symbol table
--5388-- Reading syms from /lib64/libm-2.12.so
--5388-- Reading syms from /lib64/libgcc_s-4.4.7-20120601.so.1
--5388--    object doesn't have a symbol table
--5388-- Reading syms from /lib64/libc-2.12.so
--5388-- REDIR: 0x3dc0684d00 (strcasecmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5388-- REDIR: 0x3dc0686fc0 (strncasecmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5388-- REDIR: 0x3dc0682c70 (__GI_strrchr) redirected to 0x4a07ab0 (__GI_strrchr)
--5388-- REDIR: 0x3dc0681190 (__GI_strlen) redirected to 0x4a07fb0 (__GI_strlen)
--5388-- REDIR: 0x3dc067f710 (strcmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5388-- REDIR: 0x3dc067f750 (__GI_strcmp) redirected to 0x4a08520 (__GI_strcmp)
--5388-- REDIR: 0x3dc0681150 (strlen) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5388-- REDIR: 0x3dc06896a0 (memcpy) redirected to 0x4a08b60 (memcpy)
$ echo #there is nothing wrong
--5388-- REDIR: 0x3dcbebd0a0 (operator new(unsigned long)) redirected to 0x4a0757a (operator new(unsigned long))
--5388-- REDIR: 0x3dcbebb2f0 (operator delete(void*)) redirected to 0x4a05f8f (operator delete(void*))
--5388-- REDIR: 0x3dcbebd1d0 (operator new[](unsigned long)) redirected to 0x4a07110 (operator new[](unsigned long))
--5388-- REDIR: 0x3dc0680ba0 (strcpy) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5388-- REDIR: 0x3dc0680bd0 (__GI_strcpy) redirected to 0x4a080a0 (__GI_strcpy)
--5402-- REDIR: 0x3dc067f690 (__GI_strchr) redirected to 0x4a07b70 (__GI_strchr)
--5402-- REDIR: 0x3dc06813c0 (__GI_strncmp) redirected to 0x4a08470 (__GI_strncmp)
--5402-- REDIR: 0x3dc068ab20 (strchrnul) redirected to 0x4a09fb0 (strchrnul)

--5388-- REDIR: 0x3dcbebb330 (operator delete[](void*)) redirected to 0x4a05adf (operator delete[](void*))
--5388-- REDIR: 0x3dc067b920 (free) redirected to 0x4a063a9 (free)
==5388==
==5388== HEAP SUMMARY:
==5388==     in use at exit: 0 bytes in 0 blocks
==5388==   total heap usage: 18 allocs, 18 frees, 466 bytes allocated
==5388==
==5388== All heap blocks were freed -- no leaks are possible
==5388==
==5388== ERROR SUMMARY: 0 errors from 0 contexts (suppressed: 6 from 6)
--5388--
--5388-- used_suppression:	4 U1004-ARM-_dl_relocate_object
--5388-- used_suppression:	2 glibc-2.5.x-on-SUSE-10.2-(PPC)-2a
==5388==
==5388== ERROR SUMMARY: 0 errors from 0 contexts (suppressed: 6 from 6)
[bchu007@hammer src]$ valgrind -v ./a.out
==5403== Memcheck, a memory error detector
==5403== Copyright (C) 2002-2012, and GNU GPL'd, by Julian Seward et al.
==5403== Using Valgrind-3.8.1 and LibVEX; rerun with -h for copyright info
==5403== Command: ./a.out
==5403==
--5403-- Valgrind options:
--5403--    -v
--5403-- Contents of /proc/version:
--5403--   Linux version 2.6.32-573.7.1.el6.x86_64 (mockbuild@c6b8.bsys.dev.centos.org) (gcc version 4.4.7 20120313 (Red Hat 4.4.7-16) (GCC) ) #1 SMP Tue Sep 22 22:00:00 UTC 2015
--5403-- Arch and hwcaps: AMD64, amd64-sse3-cx16-lzcnt
--5403-- Page sizes: currently 4096, max supported 4096
--5403-- Valgrind library directory: /usr/lib64/valgrind
--5403-- Reading syms from /home/csmajs/bchu007/CS100/rshell/src/a.out
--5403-- Reading syms from /usr/lib64/valgrind/memcheck-amd64-linux
--5403--    object doesn't have a dynamic symbol table
--5403-- Reading syms from /lib64/ld-2.12.so
--5403-- Scheduler: using generic scheduler lock implementation.
--5403-- Reading suppressions file: /usr/lib64/valgrind/default.supp
==5403== embedded gdbserver: reading from /tmp/vgdb-pipe-from-vgdb-to-5403-by-bchu007-on-hammer.cs.ucr.edu
==5403== embedded gdbserver: writing to	  /tmp/vgdb-pipe-to-vgdb-from-5403-by-bchu007-on-hammer.cs.ucr.edu
==5403== embedded gdbserver: shared mem	  /tmp/vgdb-pipe-shared-mem-vgdb-5403-by-bchu007-on-hammer.cs.ucr.edu
==5403==
==5403== TO CONTROL THIS PROCESS USING vgdb (which you probably
==5403== don't want to do, unless you know exactly what you're doing,
==5403== or are doing some strange experiment):
==5403==   /usr/lib64/valgrind/../../bin/vgdb --pid=5403 ...command...
==5403==
==5403== TO DEBUG THIS PROCESS USING GDB: start GDB like this
==5403==   /path/to/gdb ./a.out
==5403== and then give GDB the following command
==5403==   target remote | /usr/lib64/valgrind/../../bin/vgdb --pid=5403
==5403== --pid is optional if only one valgrind process is running
==5403==
--5403-- REDIR: 0x3dc0217c30 (strlen) redirected to 0x38049551 (vgPlain_amd64_linux_REDIR_FOR_strlen)
--5403-- Reading syms from /usr/lib64/valgrind/vgpreload_core-amd64-linux.so
--5403-- Reading syms from /usr/lib64/valgrind/vgpreload_memcheck-amd64-linux.so
--5403-- REDIR: 0x3dc0217a40 (index) redirected to 0x4a07c30 (index)
--5403-- REDIR: 0x3dc0217ac0 (strcmp) redirected to 0x4a08570 (strcmp)
--5403-- Reading syms from /usr/lib64/libstdc++.so.6.0.13
--5403--    object doesn't have a symbol table
--5403-- Reading syms from /lib64/libm-2.12.so
--5403-- Reading syms from /lib64/libgcc_s-4.4.7-20120601.so.1
--5403--    object doesn't have a symbol table
--5403-- Reading syms from /lib64/libc-2.12.so
--5403-- REDIR: 0x3dc0684d00 (strcasecmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5403-- REDIR: 0x3dc0686fc0 (strncasecmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5403-- REDIR: 0x3dc0682c70 (__GI_strrchr) redirected to 0x4a07ab0 (__GI_strrchr)
--5403-- REDIR: 0x3dc0681190 (__GI_strlen) redirected to 0x4a07fb0 (__GI_strlen)
--5403-- REDIR: 0x3dc067f710 (strcmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5403-- REDIR: 0x3dc067f750 (__GI_strcmp) redirected to 0x4a08520 (__GI_strcmp)
--5403-- REDIR: 0x3dc0681150 (strlen) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5403-- REDIR: 0x3dc06896a0 (memcpy) redirected to 0x4a08b60 (memcpy)
$ #echo what
--5403-- REDIR: 0x3dcbebd0a0 (operator new(unsigned long)) redirected to 0x4a0757a (operator new(unsigned long))
--5403-- REDIR: 0x3dcbebb2f0 (operator delete(void*)) redirected to 0x4a05f8f (operator delete(void*))
--5403-- REDIR: 0x3dcbebd1d0 (operator new[](unsigned long)) redirected to 0x4a07110 (operator new[](unsigned long))
--5403-- REDIR: 0x3dc0680ba0 (strcpy) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5403-- REDIR: 0x3dc0680bd0 (__GI_strcpy) redirected to 0x4a080a0 (__GI_strcpy)
==5403== Invalid write of size 8
==5403==    at 0x401179: fill(char*, char**) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==    by 0x401530: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==  Address 0x4c2d480 is 0 bytes after a block of size 0 alloc'd
==5403==    at 0x4A07192: operator new[](unsigned long) (vg_replace_malloc.c:363)
==5403==    by 0x40148C: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==
==5403== Invalid read of size 8
==5403==    at 0x401201: tolkenizer(char**, char**, char*, int&) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==    by 0x401574: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==  Address 0x4c2d480 is 0 bytes after a block of size 0 alloc'd
==5403==    at 0x4A07192: operator new[](unsigned long) (vg_replace_malloc.c:363)
==5403==    by 0x40148C: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==
==5403== Invalid write of size 8
==5403==    at 0x401266: tolkenizer(char**, char**, char*, int&) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==    by 0x401574: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==  Address 0x4c2d4c0 is 0 bytes after a block of size 0 alloc'd
==5403==    at 0x4A07192: operator new[](unsigned long) (vg_replace_malloc.c:363)
==5403==    by 0x4014AB: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==
--5403-- REDIR: 0x3dcbebb330 (operator delete[](void*)) redirected to 0x4a05adf (operator delete[](void*))
--5403-- REDIR: 0x3dc067b920 (free) redirected to 0x4a063a9 (free)
==5403==
==5403== HEAP SUMMARY:
==5403==     in use at exit: 0 bytes in 0 blocks
==5403==   total heap usage: 17 allocs, 17 frees, 199 bytes allocated
==5403==
==5403== All heap blocks were freed -- no leaks are possible
==5403==
==5403== ERROR SUMMARY: 3 errors from 3 contexts (suppressed: 6 from 6)
==5403==
==5403== 1 errors in context 1 of 3:
==5403== Invalid write of size 8
==5403==    at 0x401266: tolkenizer(char**, char**, char*, int&) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==    by 0x401574: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==  Address 0x4c2d4c0 is 0 bytes after a block of size 0 alloc'd
==5403==    at 0x4A07192: operator new[](unsigned long) (vg_replace_malloc.c:363)
==5403==    by 0x4014AB: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==
==5403==
==5403== 1 errors in context 2 of 3:
==5403== Invalid read of size 8
==5403==    at 0x401201: tolkenizer(char**, char**, char*, int&) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==    by 0x401574: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==  Address 0x4c2d480 is 0 bytes after a block of size 0 alloc'd
==5403==    at 0x4A07192: operator new[](unsigned long) (vg_replace_malloc.c:363)
==5403==    by 0x40148C: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==
==5403==
==5403== 1 errors in context 3 of 3:
==5403== Invalid write of size 8
==5403==    at 0x401179: fill(char*, char**) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==    by 0x401530: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==  Address 0x4c2d480 is 0 bytes after a block of size 0 alloc'd
==5403==    at 0x4A07192: operator new[](unsigned long) (vg_replace_malloc.c:363)
==5403==    by 0x40148C: parse(std::string) (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==    by 0x401969: main (in /home/csmajs/bchu007/CS100/rshell/src/a.out)
==5403==
--5403--
--5403-- used_suppression:	4 U1004-ARM-_dl_relocate_object
--5403-- used_suppression:	2 glibc-2.5.x-on-SUSE-10.2-(PPC)-2a
==5403==
==5403== ERROR SUMMARY: 3 errors from 3 contexts (suppressed: 6 from 6)
[bchu007@hammer src]$ exit
exit

Script done on Thu 05 Nov 2015 01:41:03 PM PST
