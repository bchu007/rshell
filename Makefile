FLAG = -Wall -Werror -ansi -pedantic
COMP = g++

all: rshell ls rm cp mv

rshell: 
	mkdir -p bin
	$(COMP) $(FLAG) src/main.cpp	-o bin/rshell
ls: 	
	mkdir -p bin
	$(COMP) $(FLAG) src/ls.cpp	-o bin/ls
rm:
	mkdir -p bin
	$(COMP) $(FLAG) src/rm.cpp	-o bin/rm
cp:
	mkdir -p bin
	$(COMP) $(FLAG) src/cp.cpp	-o bin/cp
mv:
	mkdir -p bin
	$(COMP) $(FLAG) src/mv.cpp	-o bin/mv

clean:
	rm -rf bin


