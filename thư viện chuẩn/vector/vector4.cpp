#include <iostream>
#include <vector>

using namespace std;

vector<int> resizeVector(vector<int> v, int n)
{
    v.resize(n);
    return v;
}

int main()
{
    vector<int> v ;
    cout << v.size();
    resizeVector(v, 4);
    cout << v.size();

}