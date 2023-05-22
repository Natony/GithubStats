#include <iostream>
#include <set>
#include <vector>

using namespace std;

std::vector<std::vector<int>> uniqueRows(std::vector<std::vector<int>> matrix)
{
    set<vector<int>>s;
    vector<vector<int>> result;

    for(vector<vector<int>>::iterator p = matrix.begin(); p != matrix.end(); p++){
        if( !s.count(*p)){
            s.insert(*p);
            result.push_back(*p);
        }
    }
    return result;
}


int main()
{
    int row = 3, column = 4;
    vector<vector<int>> matrix;
    matrix.resize(row);
    for(int i = 0; i < matrix.size(); i++){
        matrix[i].resize(column);
    }
    for(int i = 0; i < row ; i++)
    {
        for(int j = 0; j < column; j++){
            cin >> matrix[i][j];
        }
    }
    vector<vector<int>> run = uniqueRows(matrix);
    for(int i = 0; i < run.size() ; i++){
        for(int j = 0; j < run[i].size(); j++){
            cout << run[i][j];
        }
        cout << endl;
    }
    cout << endl;
    return 0;
}