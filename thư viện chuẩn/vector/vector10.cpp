#include <iostream>
#include <vector>

using namespace std;

std::vector<int> removeElements(std::vector<int> v, int l, int r)
{
    v.erase (v.begin() + l, v.begin()+r+1);
    return v;
}

int main()
{
    vector<int> v = {1, 2, 3, 4, 5, 6, 7};
    int l = 1;
    int r = 3;
    
    
    for(int i = 0; i < v.size(); i++){
        cout << v[i] << " ";
    }
    cout <<endl;
    v = removeElements(v, l , r);
    
    for(int i = 0; i < v.size(); i++){
        cout << v[i]<< " ";
    }

    return 0;
}