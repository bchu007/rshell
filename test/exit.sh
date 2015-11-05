Script started on Thu 05 Nov 2015 01:43:53 PM PST
[bchu007@hammer rshell]$ ls
bchu007	 LICENCE.md  README.md	src  s.sh  test
[bchu007@hammer rshell]$ cd src; ./a.out
$ exitrind
[bchu007@hammer src]$ valgrind -v ./a.out
==5687== Memcheck, a memory error detector
==5687== Copyright (C) 2002-2012, and GNU GPL'd, by Julian Seward et al.
==5687== Using Valgrind-3.8.1 and LibVEX; rerun with -h for copyright info
==5687== Command: ./a.out
==5687==
--5687-- Valgrind options:
--5687--    -v
--5687-- Contents of /proc/version:
--5687--   Linux version 2.6.32-573.7.1.el6.x86_64 (mockbuild@c6b8.bsys.dev.centos.org) (gcc version 4.4.7 20120313 (Red Hat 4.4.7-16) (GCC) ) #1 SMP Tue Sep 22 22:00:00 UTC 2015
--5687-- Arch and hwcaps: AMD64, amd64-sse3-cx16-lzcnt
--5687-- Page sizes: currently 4096, max supported 4096
--5687-- Valgrind library directory: /usr/lib64/valgrind
--5687-- Reading syms from /home/csmajs/bchu007/CS100/rshell/src/a.out
--5687-- Reading syms from /usr/lib64/valgrind/memcheck-amd64-linux
--5687--    object doesn't have a dynamic symbol table
--5687-- Reading syms from /lib64/ld-2.12.so
--5687-- Scheduler: using generic scheduler lock implementation.
--5687-- Reading suppressions file: /usr/lib64/valgrind/default.supp
==5687== embedded gdbserver: reading from /tmp/vgdb-pipe-from-vgdb-to-5687-by-bchu007-on-hammer.cs.ucr.edu
==5687== embedded gdbserver: writing to	  /tmp/vgdb-pipe-to-vgdb-from-5687-by-bchu007-on-hammer.cs.ucr.edu
==5687== embedded gdbserver: shared mem	  /tmp/vgdb-pipe-shared-mem-vgdb-5687-by-bchu007-on-hammer.cs.ucr.edu
==5687==
==5687== TO CONTROL THIS PROCESS USING vgdb (which you probably
==5687== don't want to do, unless you know exactly what you're doing,
==5687== or are doing some strange experiment):
==5687==   /usr/lib64/valgrind/../../bin/vgdb --pid=5687 ...command...
==5687==
==5687== TO DEBUG THIS PROCESS USING GDB: start GDB like this
==5687==   /path/to/gdb ./a.out
==5687== and then give GDB the following command
==5687==   target remote | /usr/lib64/valgrind/../../bin/vgdb --pid=5687
==5687== --pid is optional if only one valgrind process is running
==5687==
--5687-- REDIR: 0x3dc0217c30 (strlen) redirected to 0x38049551 (vgPlain_amd64_linux_REDIR_FOR_strlen)
--5687-- Reading syms from /usr/lib64/valgrind/vgpreload_core-amd64-linux.so
--5687-- Reading syms from /usr/lib64/valgrind/vgpreload_memcheck-amd64-linux.so
--5687-- REDIR: 0x3dc0217a40 (index) redirected to 0x4a07c30 (index)
--5687-- REDIR: 0x3dc0217ac0 (strcmp) redirected to 0x4a08570 (strcmp)
--5687-- Reading syms from /usr/lib64/libstdc++.so.6.0.13
--5687--    object doesn't have a symbol table
--5687-- Reading syms from /lib64/libm-2.12.so
--5687-- Reading syms from /lib64/libgcc_s-4.4.7-20120601.so.1
--5687--    object doesn't have a symbol table
--5687-- Reading syms from /lib64/libc-2.12.so
--5687-- REDIR: 0x3dc0684d00 (strcasecmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5687-- REDIR: 0x3dc0686fc0 (strncasecmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5687-- REDIR: 0x3dc0682c70 (__GI_strrchr) redirected to 0x4a07ab0 (__GI_strrchr)
--5687-- REDIR: 0x3dc0681190 (__GI_strlen) redirected to 0x4a07fb0 (__GI_strlen)
--5687-- REDIR: 0x3dc067f710 (strcmp) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5687-- REDIR: 0x3dc067f750 (__GI_strcmp) redirected to 0x4a08520 (__GI_strcmp)
--5687-- REDIR: 0x3dc0681150 (strlen) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5687-- REDIR: 0x3dc06896a0 (memcpy) redirected to 0x4a08b60 (memcpy)
$ exit
--5687-- REDIR: 0x3dcbebd0a0 (operator new(unsigned long)) redirected to 0x4a0757a (operator new(unsigned long))
--5687-- REDIR: 0x3dcbebb2f0 (operator delete(void*)) redirected to 0x4a05f8f (operator delete(void*))
--5687-- REDIR: 0x3dcbebd1d0 (operator new[](unsigned long)) redirected to 0x4a07110 (operator new[](unsigned long))
--5687-- REDIR: 0x3dc0680ba0 (strcpy) redirected to 0x480155c (_vgnU_ifunc_wrapper)
--5687-- REDIR: 0x3dc0680bd0 (__GI_strcpy) redirected to 0x4a080a0 (__GI_strcpy)
--5687-- REDIR: 0x3dc067b920 (free) redirected to 0x4a063a9 (free)
==5687==
==5687== HEAP SUMMARY:
==5687==     in use at exit: 211 bytes in 12 blocks
==5687==   total heap usage: 14 allocs, 2 frees, 264 bytes allocated
==5687==
==5687== Searching for pointers to 12 not-freed blocks
==5687== Checked 183,816 bytes
==5687==
==5687== LEAK SUMMARY:
==5687==    definitely lost: 0 bytes in 0 blocks
==5687==    indirectly lost: 0 bytes in 0 blocks
==5687==      possibly lost: 29 bytes in 1 blocks
==5687==    still reachable: 182 bytes in 11 blocks
==5687==	 suppressed: 0 bytes in 0 blocks
==5687== Rerun with --leak-check=full to see details of leaked memory
==5687==
==5687== ERROR SUMMARY: 0 errors from 0 contexts (suppressed: 6 from 6)
--5687--
--5687-- used_suppression:	4 U1004-ARM-_dl_relocate_object
--5687-- used_suppression:	2 glibc-2.5.x-on-SUSE-10.2-(PPC)-2a
==5687==
==5687== ERROR SUMMARY: 0 errors from 0 contexts (suppressed: 6 from 6)
[bchu007@hammer src]$ exit
exit

Script done on Thu 05 Nov 2015 01:44:35 PM PST
