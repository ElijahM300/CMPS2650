#include <iostream>
#include "mystring.h"
using namespace std;

int main()
{
  // Testing the constructors
  myString a, b("Hello"), c('r');
  myString clone(b);

  // Testing output operator
  cout << "The value of a is: " << a << endl;
  cout << "The value of b is: " << b << endl;
  cout << "The value of c is: " << c << endl;
  cout << "The value of clone is: " << clone << endl;

  // Testing input operator
  cout << "Enter a new word for c: ";
  cin >> c;
  cout << "The value of c is: " << c << endl;

  // Testing other operators
  cout << "Concatenation (b+clone): " << b + clone << endl;
  a = b;
  cout << "Assignment (a=b): " << a << endl;
  a += c;
  cout << "Append (a+=c): " << a << endl;
  cout << "The value of a[0] is " << a[0] << endl;

  // Testing comparison operators
  if(b == clone)
    cout << "Equality (b==clone) is true.\n";
  else
    cout << "Equality (b==clone) is false.\n";

  if(b != clone)
    cout << "Inequality (b!=clone) is true.\n";
  else
    cout << "Inequality (b!=clone) is false.\n";

  if(a < b)
    cout << "Less than (a<b) is true.\n";
  else
    cout << "Less than (a<b) is false.\n";

  if(a > b)
    cout << "Greater than (a>b) is true.\n";
  else
    cout << "Greater than (a>b) is false.\n";

  // Length checks
  cout << "a's length is " << a.length() << endl;
  a.erase();
  cout << "After erase(), a's length is " << a.length() << endl;

  // Getline
  cout << "Enter a new string for a (100 chars max): ";
  a.getline(cin, 100);

  // Reverse string
  cout << "The reverse of a is: " << a.reverse() << endl;

  return 0;
}
