#include <iostream>
#include <vector>
#include <map>
#include <string>
//https://codelearn.io/learning/cpp-standard-template-library/46612
using namespace std;

vector<string> greaterString(vector<string> arr1, vector<string> arr2)
{
    map<string, bool> cnt;
    for(auto x:arr1)
    {
        cnt[x] = 1;
    }
    vector<string> ans;
    for(auto x:arr2)
    {
        if(cnt.upper_bound(x) != cnt.end())
        {
            auto str = cnt.upper_bound(x);
            ans.push_back(str->first);
        }
        else
        {
            ans.push_back("-1");
        }
    }
    return ans;
}


int main()
{
    //string s = "codelearn";
    vector<string> v1 = {"codelearn", "learncode", "io"};
    vector<string> v2 = {"code","war","io"};
    vector<string> result = greaterString(v1, v2);
    //string result = modifyString(s);
    //cout << result;
    for(int i = 0; i < result.size(); i++)
    {
        cout << result[i] << " ";
    }
    return 0;
}