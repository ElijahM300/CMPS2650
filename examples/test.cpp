//Elijah Morris

#include <iostream>
using namespace std;

int main() {
    int *arr = NULL;
    arr = new int(5);
    for(int i = 0; i < 5; i++) {
        arr[i] = i + 1;
    }
    cout << arr[4] << endl;
    return 0;
}
