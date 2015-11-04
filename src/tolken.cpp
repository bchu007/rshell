#include <iostream>
#include <cstring>


using namespace std;

int main() {
	string input;
	cout << "enter the string: " << flush;
	cin >> input;
	cout << endl;


	char str[] = input.c_str();
	char *pch;
	printf("Splitting string \"%s\" into token:\n", str);
	pch = strtok(str, ",.-");
	while(pch != NULL) {
		printf ("%s\n", pch);
		pch = strtok(NULL, " ,.-");
	}

	return 0;

