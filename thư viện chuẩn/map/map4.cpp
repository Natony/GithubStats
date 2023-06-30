#include <iostream>
#include <vector>
#include <map>
#include <string>
//https://codelearn.io/learning/cpp-standard-template-library/46558
using namespace std;

int sumOfCommon(std::vector<int> arr1, std::vector<int> arr2)
{
    map<int, int> cnt;
    int ans = 0;
    for(auto x: arr1)
    {
        cnt[x] = x;
    }
    for(auto x: arr2)
    {
        if(cnt.find(x) != cnt.end())
        {
            ans += cnt.find(x)->second;
            cnt[x] = 0;
        }
    }
    return ans;
}

int main()
{
    //string s = "codelearn";
    vector<int> v1 = {6, 7, 5, 4, 6, 8};
    vector<int> v2 = {2, 5, 7, 5, 3};
    //vector<string> result = greaterString(v1, v2);
    int result = sumOfCommon(v1, v2);
    cout << result;
    // for(int i = 0; i < result.size(); i++)
    // {
    //     cout << result[i] << " ";
    // }
    return 0;
}