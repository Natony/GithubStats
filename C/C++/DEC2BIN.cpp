#include <iostream>
#include <stack>

using namespace std;

int main()
{
    stack <int> s;
    long n;
    int t;
    cin >>t;
    while (t--)
    {
        cin >> n;
        while (n != 0)
        {
            s.push(n % 2);
            n /=2;
        }
        while ( !s.empty())
        {
            cout << s.top();
            s.pop();
        }
        cout << endl;
    }   
    return 0;
}