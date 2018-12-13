#include <bits/stdc++.h>
using namespace std;

int main(){
    printf("Please enter the DNA: ");
    string str;
    getline(cin, str);
    int A = 0, C = 0, G = 0, T = 0;
    for(int i = 0; i < str.length(); i++){
        if(str[i] == 'A') A++;
        if(str[i] == 'C') C++;
        if(str[i] == 'G') G++;
        if(str[i] == 'T') T++;
    }

    printf("\nCount:\nA: %d\nC: %d\nG: %d\nT: %d\n", A, C, G, T);
    return 0;
}
