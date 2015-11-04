#include <iostream>
#include <sys/types.h>
#include <cstring> //strtok();
#include <unistd.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <cstring>


using namespace std;

//constructors
void execute(char **argv, int& status );
void parse(string input);
void tolkenizer(char **in, char **out, char *op, int& sz);
void increment(char **argv, int& size);
void fill(char *input, char **arg);
void print(char ** argv, int size);


void print(char **argv, string arrName = "", int size = -1) {
	if(!arrName.empty()) {
		cout << arrName << ": " << endl;
	}
	if(size > -1) {
		cout << "Size: " << size << endl;
	}

	int i = 0;
	while(argv[i] != NULL) {
		cout << argv[i] << endl;		
		i++;
	}
}

void fill(char *input, char **arg) {
	char *tolken = strtok(input, "");
	int i = 0;

	while(tolken != NULL) {
		arg[i] = tolken;
		tolken = strtok(NULL, "");
		i++;
	}
	arg[i] = 0;
	print(arg, "inputArg");
	delete[] tolken;
}

void increment(char **argv, int& size) {
	for(int i = 0; i < size; i++) {
		argv[i] = argv[i+1];
	}
}

void tolkenizer(char **in , char **out, char *op, int& sz) {
	char *tolken = strtok(in[0], op);
	int i = 0;
	
	while(tolken != NULL) {
		out[i] = tolken;

		tolken = strtok(NULL, op);
		i++;
	}
	out[i] = 0;
	sz = i;

	delete[] tolken;
}

void parse(string input) {
	//turn input into a c string because strtok takes in c strings
	char *cstrInput = new char [input.size()+1];
	strcpy(cstrInput, input.c_str());
	
	//create bool variables for (semicolon, ampersan, verticle line, space)
	bool sem = false;
	bool amp = false;
	bool vert = false;
	bool space = true;
	
	//find and set each bool variable accordingly
	if (input.find(";") != string::npos) {
		sem = true;
	}
	if (input.find("&&") != string::npos) {
		amp = true;
	}
	if (input.find("||") != string::npos) {
		vert = true;
	}
	
	//create c strings for connectors/operations/exit for strtok
	char *semChar	= new char[3];
	char *ampChar	= new char[3];
	char *vertChar	= new char[3];
	char *spaceChar	= new char[3];
	char *exitChar	= new char[5];
	
	strcpy(semChar, ";");
	strcpy(ampChar, "&&");
	strcpy(vertChar, "||");
	strcpy(spaceChar, " \n");
	strcpy(exitChar, "exit");
	
	//create cstring arrays to pass into tolkenizer
	char **allArg	= new char*[strlen(cstrInput)];
	char **semArg	= new char*[strlen(cstrInput)];
	char **ampArg	= new char*[strlen(cstrInput)];
	char **vertArg	= new char*[strlen(cstrInput)];
	char **spaceArg	= new char*[strlen(cstrInput)];

	//create place to store status for execute
	int status = 0;
	bool worked = false;
	
	fill(cstrInput, allArg);
	//first look if arg has semicolon
	if(sem||amp||vert||space) {
		int sz = 0;
		//create semArg, allArg tolkenized with ";"
		tolkenizer(allArg, semArg, semChar, sz); 
		for(int i = 0; i < sz; i++) {
			if(amp||vert||space) {
				int sz1 = 0;
				//create ampArg, semArg tolkenized with "&&"
				tolkenizer(semArg, ampArg, ampChar, sz1);
				for(int j = 0; j < sz1; j++) {
					if(vert||space) {
						int sz2 = 0;
						//create vertArg, ampArg tolkenized with "||"
						tolkenizer(ampArg, vertArg, vertChar, sz2); 
						for(int k = 0; k < sz2; k++) {
							if(space) {
								int sz3 = 0;
								//creates spaceArg, vertArg tolkenized with " "
								tolkenizer(vertArg, spaceArg, spaceChar, sz3);
								//print(spaceArg, "spaceArg", sz3);
								if(spaceArg[0] == NULL) {
									//catch the segfault
								}
								else if(strcmp(spaceArg[0],exitChar) == 0) {
									exit(0);
								}
								else {
									execute(spaceArg, status);
								}
							}
							//check the or cstr array
							if(status == 0) {
								k = sz2;
								worked = true;
							}
							else {
								increment(vertArg, sz2);
							}
						}
						
					}
					if(status == 0 || (vert && worked)) {
						increment(ampArg, sz1);
						status = 42;
					}
					else {
						char *terminate = new char[1];
						strcpy(terminate, "");
						ampArg[0] = terminate;
						delete []terminate;

					}
				}
			}
			increment(semArg, sz); 
		}
	}
		
/*
	int i = 0; //this http://ow.ly/UfPHw will tolkenize this assignment, 
		   //storing it into four containers for humorous appeal.
	while(token != NULL) {
		argv[i] = token;
		cout << "strtok: " << i << ": " << token << endl;
		token = strtok(NULL, " ");
		i++;
	}
	argv[i] = 0;
	delete token;
*/	


	//deallocate data
	delete[] cstrInput;
	delete[] semChar;
	delete[] ampChar;
	delete[] vertChar;
	delete[] spaceChar;
	delete[] exitChar;
	delete[] allArg;
	delete[] semArg;
	delete[] ampArg;
	delete[] vertArg;
	delete[] spaceArg;
 
	
}

void execute(char **argv, int& status) {

	pid_t c_pid, pid;

	c_pid = fork();
  
	if( c_pid < 0) {
			perror("fork failed");
		exit(1);
	}	

	else if (c_pid == 0) {
	
	printf("Child: executing ls\n"); 
	execvp( argv[0], argv); 
	perror("execve failed");

	}
	else if (c_pid > 0) {
		if( (pid = wait(&status)) < 0) {
				perror("wait");
				exit(1);
			}
		 printf("Parent: finished\n");

	 }	
	
}

int main(){
	
	string input;
	cout << "$ ";
	
	getline(cin, input);
	cout << endl;

	parse(input);		
/*	
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
*/



	return 0;
}
