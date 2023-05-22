#include <iostream>
#include <stack>
#include <vector>

using namespace std;

vector<int> popMin(vector<int> arr)
{
    stack<int> st_min;
    vector<int> res;
    st_min.push(res[0]);
    for(int i = 0; i < res.size(); i++){
        if(st_min.top() >= res[i])st_min.push(res[i]);
        else st_min.push(st_min.top());
    }
    
    while(st_min.empty() == false){
        res.push_back(st_min.top());
        st_min.pop();
    }
    return res;
}

int main()
{   
    int n;
    cin >> n;
    vector<int> v(n);
    for(int i = 0; i < v.size(); i++){
        cin >> v[i];
    }
    popMin(v);
    for(int i = 0; i < v.size(); i++){
        cout << v[i];
    }

    return 0;
}