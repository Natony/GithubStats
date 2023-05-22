#include <iostream>
#include <stack>
#include <vector>

using namespace std;

vector<int> stackConcat(vector<int> a, vector<int> b)
{
    stack<int> st1, st2;
    vector<int> v;
    for (int i = 0; i < a.size(); i++){
        st1.push(a[i]);
    }
    for (int i = 0; i < b.size(); i++){
        st2.push(b[i]);
    }
    stack<int> st3;
	while (!st1.empty() && !st2.empty())
    {
        if(st1.top() > st2.top()){
            st3.push(st1.top());
            st1.pop();
        }
        else
        {
            st3.push(st2.top());
            st2.pop();
        }
    }
	while(!st1.empty()){
		st3.push(st1.top());
		st1.pop();
	}
	while(!st2.empty()){
		st3.push(st2.top());
		st2.pop();
	}    
	while(!st3.empty()){
		v.push_back(st3.top());
		st3.pop();
	}
    return v;
}

int main()
{
    vector<int> v1 = {1, 3, 6, 8};
    vector<int> v2 = {1, 2, 5};
    vector<int> v3 = stackConcat(v1, v2);
    for(int i = 0; i < v3.size(); i++){
        cout << v3[i];
    }

    return 0;
}