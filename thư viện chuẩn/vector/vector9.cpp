#include <iostream>
#include <vector>

using namespace std;

int sumOfFirstAndLastElement(std::vector<int> v)
{
    return v.front() + v.back();
}
int main()
{
    vector<int> v ={1,2,3};
    cout << sumOfFirstAndLastElement(v);


}