#include <iostream>
#include <vector>
#include <bitset>
//https://codelearn.io/learning/cpp-standard-template-library/690970
using namespace std;

std::vector<int> checkActivity(int n)
{
    vector<int> v;
    int k;
    bitset<32> foo(n);
    for(k = foo.size() - 1; k >=0; k--)
    {
        if(foo.test(k))
        {
            break;
        }
    }
    for(int i = 0; i <= k; i++)
    {
        v.push_back(foo.test(i));
    }
    return v;
}

int main()
{
    int n;
    cin >> n;
    cout << "n = " << n << " -> [";
    vector<int> result = checkActivity(n);
    for(int i = 0; i < result.size(); i++)
    {
        cout << result[i] << " ";
    }
    cout << "]";
    return 0;
}