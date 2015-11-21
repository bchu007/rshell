#include <iostream>
#include <sys/types.h>
#include <sys/stat.h>
#include <cstring> //strtok();
#include <unistd.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <cstring>
#include <time.h>

using namespace std;

//constructors
void execute(char **argv, int& status );
void parse(string input);
void tolkenizer(char **in, char **out, char *op, int& sz);
void increment(char **argv, int& size);
void fill(char *input, char **arg);
void paren(char *wParen, char **woParen, int& sz); 
void print(char **argv, string name, int size, string color);
void print(char *argv);
void promptGet(string& input);
void prcol(string input, string color);
bool find(char **input);
int exists(char **input, int sz, int &sz_t);


void print(char *argv) {
	int i = 0;
	while(argv[i] != '\0') {
		cout << argv[i] << flush;
		i++;
	}
}

int exists(char **input, int sz, int &sz_t) {
	//find size of array needed
	for(int x = 0; x < sz; x++) {
		sz_t += strlen(input[x]);	
	}
	//cout << "size: " << sz_t << endl;
	//
	
	//char* flag = new char[1];
	char flag;
	for(int i = 0; i < sz; i++) {

		//intialize in	
		int len = strlen(input[i]);
		char* in = new char[len];
		strcpy(in, input[i]);

		//char next;
		char * ptr;
		ptr = strchr(in, '-');
		while(ptr != NULL) {
			//cout << "SYM: " << *(ptr + 1) << endl;
			flag = *(ptr + 1);
			
			//delete row
			char *term = new char[1];
			strcpy(term, "");
			input[i] = term;
			delete[] term;


			ptr=strchr(ptr+1, '-');
		}

		//remove brackets
		if(strncmp(in, "[", len) == 0 || strncmp(in, "]", len) == 0 || strncmp(in, "test", len) == 0) {

			char *term = new char[1];
			strcpy(term, "");
			input[i] = term;
			delete[] term;

		}
		

		//delete[] flag; 
		delete[] in;
	}

	int len = 0;
	for(int z = 0; z < sz; z++) {
		len = strlen(input[z]);
		if(strncmp(input[z], "", len) != 0) {
			break;
		}
	}

	char path[len];
	for(int i = 0; i < sz; i++) {
		if(strncmp(input[i], "", len) != 0) {
			strncpy(path, input[i], len);
		}
	}
	bool exists = false;
	bool dir = false;
	bool norm = false;
	//begin stat()
	struct stat sb;

	if (stat(path, &sb) == -1) {
		perror("stat");
		exit(EXIT_FAILURE);
	}
	else {
		exists = true;
	}
	switch (sb.st_mode & S_IFMT) {
		case S_IFDIR: dir = true;
		case S_IFREG: norm = true;
	}
	if(flag == 'e') {
		if(exists) {
			return 0;
		}
		else {
			return 1;
		}
	}
	else if(flag == 'f') {
		if(exists && norm) {
			return 0;
		}
		else {
			return 1;
		}
	}
	else if(flag == 'd') {
		if(exists && dir) {
			return 0;
		}
		else {
			return 1;
		}
	}
	else {
		prcol("test: not a valid flag", "1");
		perror("flag");
		exit(EXIT_FAILURE);
	}
}


bool find(char **input, int sz) {
	bool front = false;
	bool back = false;
	bool test = false;
	char check[] = "test";
	int k = 0;

	for(int i = 0; i < sz; i++) {
		int j = 0;
		
		while(input[i][j] != '\0') {
			if(input[i][j] == '[') {
				front = true;
			}
			else if(input[i][j] == ']') {
				back = true;
			}
			else if(front && back) {
				return true;
			}
			else if(input[i][j] == check[k]) {
				k++;
				if(check[k] == '\0') {
					return true;
				}
			}
			else {
				k = 0;
			}
			j++;
		}
	}
	
	if(front && back || test) {
		return true;
	}
	return false;

}

void prcol(string input, string color = "4") { //prints blue by default
	if(color > "6") {
		color = "4";
	}

	cout << "\033[1;3" << color << "m" << input << "\033[0m" << endl;
}

void print(char **argv, string arrName, int size = -1, string color = "1") {
	if(color > "6") {
		color = "1";
	}
	
	if(!arrName.empty()) {//checks to see if arrName is empty
		cout << "\033[1;3" << color  << "m" << arrName << ": " << "\033[0m" << endl;
	}
	if(size > -1) {//check to see if size was inputted
		cout << "\033[1;3" << color << "m" << "Size: " << size << "\033[0m" <<  endl;
	}

	int i = 0;
	while(argv[i] != NULL) {//print array
		cout << "\033[1;3" << color << "m" << argv[i] << "\033[0m" <<  endl;
		i++;
	}
}//used for testing code for errors.

void fill(char *input, char **arg) {//populate the arg with tolkenizd input
	char *tolken = strtok(input, "");
	int i = 0;

	while(tolken != NULL) {
		arg[i] = tolken;
		tolken = strtok(NULL, "");
		i++;
	}
	arg[i] = 0;//end the cstr array
	//print(arg, "inputArg");
	delete[] tolken;
}

void increment(char **argv, int& size) {//increment each array value with the next 
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
}//takes **in and tolkenizes it into **out using *op as the delimiter.

void paren(char *in, char**out, int &sz) {
	char *tolken = strtok(in, "()");
	
	int i = 0;
	
	while(tolken != NULL) {
		out[i] = tolken;
		
		tolken = strtok(NULL, "()");
		i++;
	}
	out[i] = 0;
	sz = i;

	delete[] tolken;
	
	
}


void parse(string input) {
	//remove comments
	if(input.find("#") != string::npos) {
		input.resize(input.find("#"));
	}
	//turn input into a c string because strtok takes in c strings
	char *cstrInput = new char [input.size()+1];
	strcpy(cstrInput, input.c_str());
	
	//create bool variables for (semicolon, ampersan, verticle line, space)
	bool par = false;
	bool sem = false;
	bool amp = false;
	bool vert = false;
	bool space = true;

	
	//find and set each bool variable accordingly
	if (input.find("(") != string::npos && input.find(")") != string::npos) {
		par = true;
	}
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
	char **parArg 	= new char*[strlen(cstrInput)];
	char **semArg	= new char*[strlen(cstrInput)];
	char **ampArg	= new char*[strlen(cstrInput)];
	char **vertArg	= new char*[strlen(cstrInput)];
	char **spaceArg	= new char*[strlen(cstrInput)];

	//create place to store status for execute
	int status = 0;
	bool worked = false;
	bool worked2 = false;
	
	//first look for parens
	int size = 0;
	if(!par) {
		size = 1;
		fill(cstrInput, allArg);
	}
	else {
		paren(cstrInput, allArg, size);
	}
		
		//create parArg, allArg tolkenized with everthing between "(" and ")"
		
		for(int h = 0; h < size; h++) {
			//first look if arg has semicolon
			if(sem||amp||vert||space) {
				int sz = 0;
				//create semArg, allArg tolkenized with ";"
				tolkenizer(allArg, semArg, semChar, sz); 
				//print(allArg, "ALL", sz);
				for(int i = 0; i < sz; i++) {
					if(amp||vert||space) {
						int sz1 = 0; //create ampArg, semArg tolkenized with "&&"
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
										//print(allArg, "ALL", sz);
										//cout << "SIZE: " << sz3;
										if(spaceArg[0] == NULL) {
											//catch the segfault
										} 
						
										else if(strcmp(spaceArg[0],exitChar) == 0) {
										exit(0);
										}
										else {
											//print(spaceArg, "SPC", sz3, "5" );
											if(find(spaceArg, sz3)) {
												int t_sz = 0;
												//test(spaceArg, sz3);
												status = exists(spaceArg, sz3, t_sz);
											}	
											else  {
												execute(spaceArg, status);
											}	
										}
									}
									//check the or cstr array
									if(status == 0) {//check to see if execute worked
										k = sz2;
										worked = true;
										worked2 = true;
									}
									else {//increment the next or
										//print(vertArg, "BEF_VERT", sz2);
										increment(vertArg, sz2);
										//print(vertArg, "AFT_VERT", sz2);
									}
								}		
							}	
							if(status == 0 || (vert && worked)) { //checks to see if previous worked
								//print(ampArg, "AMP_BEF", sz1, "2");
								increment(ampArg, sz1);
								//print(ampArg, "AMP_AFT", sz1, "2");
								status = 42;
								worked2 = true;
							}
							else {//if it didn't work, dont do the following and
								worked2 = false;
								char *terminate = new char[1];
								strcpy(terminate, "");
								ampArg[0] = terminate;
								delete[] terminate;
	
							}
						}
					}
					//do the next ;
					increment(semArg, sz); 
				}
			}
			
			//print(parArg, "PAREND", size, "6");
			//do the next ()
			//cout << "\033[1;33m" << "worked: " << worked2 << "\033[0m" << endl;
			//cout << "\033[1;33m" << "amp: " << amp << "\033[0m" << endl;
			
			if(worked2 && amp) {
				
				increment(parArg, size); 
				worked2 = false;
				status = 42;			
				prcol("This increments if worked && par");		
			}
			else {
				//prcol("This else");
				char *term = new char[1];
				strcpy(term, "");
				parArg[0] = term;
				delete[] term;
			}
		}		
	
	//print(parArg, "PAREND", size, "3");
	//deallocate data
	delete[] cstrInput;
	delete[] semChar;
	delete[] ampChar;
	delete[] vertChar;
	delete[] spaceChar;
	delete[] exitChar;
	delete[] allArg;
	delete[] parArg;
	delete[] semArg;
	delete[] ampArg;
	delete[] vertArg;
	delete[] spaceArg;
 
	
}

void execute(char **argv, int& status) {

	pid_t c_pid, pid;

	c_pid = fork();
  
	if( c_pid < 0) {//error with forking
		perror("fork failed");
		exit(1);
	}	

	else if (c_pid == 0) {//if child works
	
	//printf("Child: executing ls\n"); 
	execvp( argv[0], argv); //exeute 
	perror("execve failed");

	}
	else if (c_pid > 0) {//parent process runs
		if( (pid = wait(&status)) < 0) {//check to see if wait fails
			perror("wait");//if it does, exit
			exit(1);
		}
	//printf("Parent: finished\n");
	}
	
}
void  promptGet(string& input) {
	cout << "$ ";
	getline(cin, input);
	
}

int main(){
	string input;
	promptGet(input);		
	parse(input);
	//parse(get_input());		
	return 0;
}







