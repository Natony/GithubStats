#include <iostream>
#include <vector>
#include <map>
#include <string>
//https://codelearn.io/learning/cpp-standard-template-library/46329
using namespace std;

bool checkSum(vector<int> arr, int sum){
    map<int, int> mp;
    for(auto x:arr)
    {
        mp[x]++;
    }
    for(auto x:arr)
    {
        if(mp[sum - x] >= 1)
        {
            if(x != sum-x || (x == sum-x && mp[x] > 1))
            {
                return true;
            }
        }
    }
    return false;
}

int main()
{
    //string s = "codelearn";
    vector<int> v1 = {2,4,-1,9,8};
    int sum = 6;
    //vector<int> v2 = {2, 5, 7, 5, 3};
    //vector<string> result = greaterString(v1, v2);
    bool result = checkSum(v1, sum);
    cout << result;
    // for(int i = 0; i < result.size(); i++)
    // {
    //     cout << result[i] << " ";
    // }
    return 0;
}