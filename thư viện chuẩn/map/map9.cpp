#include <iostream>
#include <vector>
#include <map>
#include <string>
//https://codelearn.io/learning/cpp-standard-template-library/43203
using namespace std;

vector<int> mergeProducts(vector<string> A, vector<string> B){
    map<string, int> cnt;
    for(auto x:A)
    {
        cnt[x]++;
    }
    vector<int>ans;
    for(auto x:B)
    {
        if(cnt[x] == 0)
        {
            ans.push_back(true);
            cnt[x]++;
        }
        else
        {
            ans.push_back(false);
        }
    }
    return ans;
}

int main()
{
    vector<string> v1 = {"Banana", "Banana", "Apple"};
    vector<string> v2 = {"Orange", "Apple", "Orange", "Watermelon"};
    vector<int> result = mergeProducts(v1, v2);
    for(int i = 0; i < result.size(); i++)
    {
        cout << result[i] << " ";
    }
    return 0;
}