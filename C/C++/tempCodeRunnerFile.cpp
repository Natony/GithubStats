#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */ 
    //khoi tao vector
    int n, q;
    cin >> n;
    vector<int> v(n);
    for(int i = 0; i < v.size(); i++)
    {
        cin >> v[i];
    }
    cin >> q;
    for(int i = 0; i < q; i++)
    {
        int x;
        cin >> x;
        auto it = lower_bound(v.begin(), v.end(), x);
        if(it != v.end() && *it == x)
        {
            cout << "YES " << (it - v.begin() + 1) << endl;
        }
        else
        {
            cout << "NO " << (it - v.begin() + 1) << endl;
        }
    }
    return 0;
}