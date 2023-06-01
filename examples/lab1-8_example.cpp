// Author:  Melissa Danforth
// Date:    25 Sep 2006
// Purpose: HW2, #3, A menu program using switch() and do-while

#include <iostream>
using namespace std;

int main() 
{
  int in1, in2, in3;
  char selection;

  do
  {
    cout << "  Welcome to the CS221 Homework 2 Menu\n";
    cout << "  ====================================\n";
    cout << "  1.  Multiply two integers\n";
    cout << "  2.  Divide two integers\n";
    cout << "  3.  Check if a number is within the range 10-20\n";
    cout << "  4.  Find the minimum of a list of 3 numbers\n";
    cout << "\n";
    cout << "  0.  Exit\n";
    cout << "  ====================================\n";
    cout << "  Enter selection: ";
    cin >> selection;
    cout << endl;

    switch(selection)
    {
      case '0':
        cout << "Bye.";
        break;

      case '1':
        cout << "Please enter two integers: ";
        cin >> in1 >> in2;
        cout << in1 << " times " << in2 << " is " << (in1 * in2) << endl;
        break;

      case '2':
        cout << "Please enter two integers: ";
        cin >> in1 >> in2;
        cout << in1 << " divided by " << in2 << " is " << (in1 / in2) << endl;
        break;

      case '3':
        cout << "Please enter an integer: ";
        cin >> in1;
        if( (in1 >= 10) && (in1 <= 20) )
        {
          cout << in1 << " is within the range 10-20.\n";
        }
        else
        {
          cout << in1 << " is NOT within the range 10-20.\n";
        }
        break;

      case '4':
        cout << "Please enter three integers: ";
        cin >> in1 >> in2 >> in3;
        cout << "The minimum is ";
        if( (in1 < in2) && (in1 < in3) )
        {
          cout << in1;
        }
        else if( (in2 < in1) && (in2 < in3) )
        {
          cout << in2;
        }
        else
        {
          cout << in3;
        }
        cout << ".\n";
        break;

      default:
        cout << selection << " is not a valid menu item.\n";
    }
    cout << endl;
  } while( selection != '0' );

  return 0;
}
