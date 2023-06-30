#include <iostream>
#include <vector>
#include <map>
#include <string>
//https://codelearn.io/learning/cpp-standard-template-library/46614
using namespace std;

string modifyString(string s){
    map<char, int> mp;
    for (auto x : s)
    {
        mp[x]++;
    }
    vector<pair<char, int> > vt(mp.begin(), mp.end());
    string ans = "";
    for (int i = 0; i < vt.size(); i++)
    {
        for (int j = i+1; j < vt.size(); j++)
        {
            if (vt[i].second < vt[j].second)
            {
                swap(vt[i], vt[j]);
            }
            else if (vt[i].second == vt[j].second)
            {
                if (vt[i].first > vt[j].first)
                {
                    swap(vt[i], vt[j]);
                }
            }
        }
    }
    for (auto x : vt)
    {
        ans.push_back(x.first);
    }
    return ans;
}

int main()
{
    string s = "codelearn";
    // vector<string> result = modifyString(s);
    string result = modifyString(s);
    //cout << result;
    for(int i = 0; i < result.size(); i++)
    {
        cout << result[i];
    }
    return 0;
}