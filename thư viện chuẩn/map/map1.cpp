#include <iostream>
#include <vector>
#include <map>
#include <string>
//https://codelearn.io/learning/cpp-standard-template-library/685061
using namespace std;

vector<string> countChar(string s)
{
    map<char, int> m;
    vector<string> v;
    for(auto x: s)
    {
        m[x]++;
    }
    for(auto x: m)
    {
        string ans =" ";
        ans = x.first + ans + to_string(x.second);
        v.push_back(ans);
    }
    return v;
}

int main()
{
    string s = "aacccd";
    vector<string> result = countChar(s);
    for(int i = 0; i < result.size(); i++)
    {
        cout << result[i] << " ";
    }
    return 0;
}