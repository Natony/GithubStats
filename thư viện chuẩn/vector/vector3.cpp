#include <iostream>
#include <vector>

using namespace std;

int sumOfOddElements(vector<int> v)
{
    int result = 0;
    vector<int>::iterator it;
    for (it = v.begin(); it != v.end(); it++) {
        if (*it % 2 != 0) {
            result += *it;
        }
    }
    return result;
}

int main()
{
    vector <int> v ={ 1, 2, 3, 4, 5};
    cout << sumOfOddElements(v);
    return 0;
}
