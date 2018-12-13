#include <bits/stdc++.h>
using namespace std;

int main(){
    printf("The DNA: ");
    string str;
    getline(cin, str);
    int A = 0, C = 0, G = 0, T = 0;
    for(int i = 0; i < str.length(); i++){
        if(str[i] == 'T') str[i] = 'U';
    }
    printf("The RNA: %s\n", str.c_str());
    return 0;
}
