#include <iostream>
#include <vector>

using namespace std;

vector<int> initializeVector(int n)
{
    vector<int> a;
	for(int i = 0; i < n; i++){
        a.push_back(i);
    }
	return a;
}	

int main()
{
    vector<int> v = initializeVector(4);
    for(int i = 0; i < v.size();i++ ){
        cout << v[i] << " ";
    }
   return 0; 
}