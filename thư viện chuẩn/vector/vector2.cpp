#include <iostream>
#include <vector>

using namespace std;

int sumOfVector(vector<int> v)
{
	int res = 0;
	for (int i = 0; i < v.size(); i++)
	{
		res += v[i];
	}
	
	return res;
}

int main()
{
    vector <int> v = {1, 2, 3};
    cout << sumOfVector(v);
    return 0; 
}