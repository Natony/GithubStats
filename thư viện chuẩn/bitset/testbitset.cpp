#include <iostream>
#include <bitset>
//https://codelearn.io/learning/cpp-standard-template-library/775230
using namespace std;

int main()
{
    int n = 4;
    bitset<n> foo(n);
    cout << foo;
    return 0;
}