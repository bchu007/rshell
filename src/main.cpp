#include <iostream>
#include <sys/types.h>
#include <cstring> //strtok();
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <cstring>


using namespace std;

char * tolken

void stringparse(char *input);

int main(){
	
	stringparse();
	pid_t pid;
	perror("hello");
	if(pid == -1) {
	//somthing went wrong with the forking.
		perror("fork");
		exit(1);
	}
	cout << "pid before fork: " << pid << endl;

	int x = 0;
	bool f = false;

	pid = fork();
	cout << "pid after fork: " << pid << endl;


return 0;
}
