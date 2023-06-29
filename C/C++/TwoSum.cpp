#include <iostream>
#include <vector>

using namespace std;

vector<int> twoSum(vector<int> &nums, int target)
{
    vector<int> temp;
    vector<int> results;
    for (int i = 0; i < nums.size(); i++)
    {
        if (nums[i] + nums[i + 1] == target)
        {
            temp.push_back(i);
            temp.push_back(i + 1);
        }
    }
    results.push_back(temp[0]);
    results.push_back(temp[1]);
    return results;
}

int main()
{
    vector<int> v = {3,3};
    vector<int> v1 = twoSum(v, 6);
    for(int i = 0; i < v1.size(); i++)
    {
        cout << v1[i];
    }
    return 0;
}