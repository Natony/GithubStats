#include <iostream>
#include <queue>
#include <vector>

using namespace std;

int rotOrange(std::vector<std::vector<int>> matrix)
{
    queue <int> x,y;  
  	int now = 0, next = 0, pas = 0, res = 0;
    int ans = 0; 
    for (int  i = 0; i < matrix.size(); i++)
    {
        for (int j = 0; j < matrix[i].size(); j++)
        {
            if(matrix[i][j] == 2)
            {
                x.push(i);
                y.push(j);
                now ++;
                matrix[i][j] = 0;
            }
            else if (matrix[i][j] == 1)
            	res ++;
    	}
	}
    while (!x.empty())
    {
        now--;
        int o[] = {0, 1, 0, -1};
        int p[] = {1,0, -1 ,0};
        for (int d = 0; d < 4; d++)
        {
            if( x.front()+o[d] >= 0 && x.front()+o[d] < matrix.size() &&  y.front()+p[d] >= 0 && y.front()+p[d] < matrix[1].size() && matrix[x.front()+o[d]][y.front()+p[d]] == 1 )
            {
                matrix[x.front()+o[d]][y.front()+p[d]] = 0;
                x.push(x.front()+o[d]);
                y.push(y.front()+p[d]);
                matrix[x.front()+o[d]][y.front()+p[d]]= 0;
                res --;
                next++;
            }
        }
        if(now == 0 && next > 0)
        {
            now = next;
            next = 0;
            pas ++;
        }
        x.pop();
        y.pop();
        
    }
    if (res == 0){
        return pas;
    } else {
        return -1;
    } 
}
int main()
{
    vector<vector<int>>matrix = {{2, 1, 0, 2, 1},
                                  {1, 0, 1, 2, 1},
                                  {1, 0, 0, 2, 1}};
    cout <<rotOrange(matrix);
    return 0;
}