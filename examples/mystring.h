// Author:  Melissa Danforth
// Purpose: HW3 mystring header file. This has the class definition

#ifndef __MYSTRING_H__
#define __MYSTRING_H__

#include <iostream>
using namespace std;

#define MAX_WORD  101

class myString
{
  private:
    char *str;
    int size;
  public:
    // Constructors and destructor
    myString();
    myString(const myString &a);
    myString(const char *s);
    myString(const char c);
    ~myString();

    // Member functions
    int length() const;
    void erase();
    char *reverse() const;
    void getline(istream &i, int count);

    // Operators that are member functions
    void operator =(const myString &right);
    void operator +=(const myString &right);
    char operator [](int index) const;

    // Operators that are friends
    friend istream &operator >>(istream &left, myString &right);
    friend ostream &operator <<(ostream &left, const myString &right);
    friend myString operator +(const myString &left, const myString &right);
    friend bool operator <(const myString &left, const myString &right);
    friend bool operator >(const myString &left, const myString &right);
    friend bool operator ==(const myString &left, const myString &right);
    friend bool operator !=(const myString &left, const myString &right);
};

#endif
