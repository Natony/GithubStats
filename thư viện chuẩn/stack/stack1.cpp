#include <iostream>
#include <stack>

using namespace std;

string reverseString(string s)
{
    string res;
    stack<char> st;
    for(int i = 0; i < s.length(); i++){
        st.push(s[i]);
    }
    while(st.empty() == false){
        res += st.top();
        st.pop();
    }
    return res;
}

int main()
{
    string s = "abcd";
    cout << reverseString(s);

    return 0;
}