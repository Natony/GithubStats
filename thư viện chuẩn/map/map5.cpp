#include <iostream>
#include <vector>
#include <map>
#include <string>
//https://codelearn.io/learning/cpp-standard-template-library/46334
using namespace std;

int maximumDifference(std::vector<std::string> arr)
{
    map<string, int> mp;
    int ans = 0;
    for(int i=0;i<arr.size();i++){
        if(mp.find(arr[i]) == mp.end()){
            mp[arr[i]] = i;
        }
        else{
            ans = max(ans, i-(mp.find(arr[i])->second));
        }
    }
    return ans;
}


int main()
{
    //string s = "codelearn";
    vector<string> v1 = {"codelearn", "io", "programmer", "codelearn", "programmer"};
    //vector<int> v2 = {2, 5, 7, 5, 3};
    //vector<string> result = greaterString(v1, v2);
    int result = maximumDifference(v1);
    cout << result;
    // for(int i = 0; i < result.size(); i++)
    // {
    //     cout << result[i] << " ";
    // }
    return 0;
}