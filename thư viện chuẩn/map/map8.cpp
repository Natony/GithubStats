#include <iostream>
#include <vector>
#include <map>
#include <string>
//https://codelearn.io/learning/cpp-standard-template-library/43243
using namespace std;

vector<int> countPrefix(vector<string> contacts, vector<string> names)
{
    map<string, int> mp;
    for(auto x:names)
    {
        int cnt = 0;
        for(auto y: contacts)
        {
            bool f = 1;
            for(int i = 0; i < x.length(); i++)
            {
                if(x[i] != y[i])
                {
                    f = 0;
                }
            }
            if(f)
            {
                cnt++;
            }
            mp[x] = cnt;
        }
    }
    vector<int> result;
    for(auto name:names){
        result.push_back(mp[name]);
    }
    return result;
}


int main()
{
    vector<string> v1 = {"Codelearn", "Codewar"};
    vector<string> v2 = {"Code", "Codel", "io"};
    vector<int> result = countPrefix(v1, v2);
    for(int i = 0; i < result.size(); i++)
    {
        cout << result[i] << " ";
    }
    return 0;
}