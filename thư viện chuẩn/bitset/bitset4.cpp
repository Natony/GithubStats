#include <iostream>
#include <vector>
#include <bitset>
//https://codelearn.io/learning/cpp-standard-template-library/692566    
using namespace std;

char convertChar(char ch)
{
    bitset<7> foo(ch);
    foo.flip();
    return char(foo.to_ulong());
}

int main()
{
    char n;
    cin >> n;
    cout << "n = " << n << " -> " << convertChar(n);
    return 0;
}