#include <iostream>
#include <vector>
#include <bitset>
//https://codelearn.io/learning/cpp-standard-template-library/690811
using namespace std;

long long bitsetFunction(int n)
{
    bitset<20> foo;
    foo[n] = 1;
    return foo.to_ulong();
}

int main()
{
    int n;
    cin >> n;
    cout << "n = " << n << " ->" << bitsetFunction(n);
    return 0;
}