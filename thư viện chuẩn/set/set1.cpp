#include <iostream>
#include <set>
#include <vector>

using namespace std;

int differentNumbers(vector<int> inputVector )
{
	set<int> s;
    for(int i = 0; i < inputVector.size(); i++){
        s.insert(inputVector[i]);
    }
	return s.size();
}

int main()
{
    vector<int> s = {1, 3, 3, 2};
    int a = differentNumbers(s);
    cout << a ;

    return 0;
}