#include <bits/stdc++.h>
using namespace std;

int main(){
    printf("Please enter the DNA: ");
    string str;
    getline(cin, str);
    int A = 0, C = 0, G = 0, T = 0;
    for(int i = 0; i < str.length(); i++){
        if(str[i] == 'A') str[i] = 'T';
        else if(str[i] == 'C') str[i] = 'G';
        else if(str[i] == 'G') str[i] = 'C';
        else if(str[i] == 'T') str[i] = 'A';
    }
    reverse(str.begin(), str.end());
    printf("The complement strand: %s\n", str.c_str());
    return 0;
}
