#include <iostream>
#include <vector>
#include <map>
#include <string>
//https://codelearn.io/learning/cpp-standard-template-library/46317
using namespace std;

int largestElement(std::vector<int> arr)
{
    map<int, int> cnt;
    for(auto x: arr)
    {
        cnt[x]++;
    }
    int ans = -1;
    int fre = INT_MAX;
    for(auto x:cnt)
    {
        if(x.second <= fre)
        {
            fre = x.second;
            ans = x.first;
        }
    }
    return ans;
}

int main()
{
    vector<int> v1 = {2,2,4,4,7,7,7};
    int result = largestElement(v1);
    cout << result;
    return 0;
}