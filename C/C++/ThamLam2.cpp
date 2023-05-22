#include <iostream>
#include <cstring>
#include <stdio.h>

using namespace std;

typedef struct 
{
    int type;
    string name;
    int days;
} tree_t;

void Print(tree_t trees[], int n)
{
    for (int i = 0; i < n; i++)
    {
        cout << trees[i].type << " " < trees[i].name << " "<< trees[i].days << endl;    
    }
}


int main()
{
    tree_t tree[4] = {
        {.type = 1, .name = " hoa hong",.days = 3},
        {.type = 2, .name = " hoa lan",.days = 4},
        {.type = 3, .name = " hoa cuc",.days = 2},
        {.type = 4, .name = " hoa muoi gio",.days = 1},
    };

    return 0;
}
