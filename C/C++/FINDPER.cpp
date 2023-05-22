#include <iostream>
#include <vector> 


using namespace std;

int main()
{
    vector<long> v;
    long n;
    
    cin >> n;
    
    while (n--)
    {
        long ai;
        cin >> ai;
        
        v.push_back(ai);
        int len = v.size();
        
        for (int i=0; i<(len/2); i++) {
            long tg = v[i];
            v[i] = v[len-i-1];
            v[len-i-1] = tg;
        }
    }
    
    for (int i=0; i<v.size(); i++) {
        cout << v[i] << " ";
    }
    cout << endl;
}