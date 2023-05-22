#include <iostream>
#include <stack>
#include <cstring>
#include <queue>

using namespace std;

int main()
{
    char str[]="";
    stack <int> s;
    while(str == "()")
    {
    for (int i=0; i<strlen(str); i++) {
            if (str[i] == '(') {
                s.push(i);
            }
            else if (str[i] == ')' ) {
                int vt1 = s.top();
                s.pop();
            }
            else {
            }
        }
        strlen(str)++;
    }

    return 0;
}