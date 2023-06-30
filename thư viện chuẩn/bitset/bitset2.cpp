#include <iostream>
#include <vector>
#include <bitset>
//https://codelearn.io/learning/cpp-standard-template-library/691102
using namespace std;

int countOperations(int n)
{
    bitset<32> foo(n);
    return foo.count();
}

int main()
{
    int n;
    cin >> n;
    cout << "n = " << n << " ->" << countOperations(n);
    return 0;
}