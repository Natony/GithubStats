#include <iostream>
#include <vector>

using namespace std;

vector<int> removeLastElement(vector<int> v)
{
    v.pop_back();
    return v;
}

int main()
{
    vector<int> v = {1,2,3};
    for(int i = 0; i < v.size(); i++){
        cout << v[i] << " ";
    }
    cout <<endl;
    v = removeLastElement(v);
    
    for(int i = 0; i < v.size(); i++){
        cout << v[i]<< " ";
    }

    return 0;
}