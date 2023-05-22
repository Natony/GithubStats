#include <iostream>
#include <stack>

using namespace std;

string stackBin(int n)
{
    string s;
    stack<char> st;
    while (n > 0)
    {
        st.push(n % 2 + '0');
        n /= 2;
    }
    
    while (!st.empty())
    {
        s += st.top();
        st.pop();
    }
    
    return s;
}

int main()
{
    int n = 3;
    cout << stackBin(3);

    return 0;
}