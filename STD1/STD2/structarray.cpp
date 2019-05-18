#include <iostream>
#include <string>
#include <sstream>
using namespace std;

struct datasepakbola_t {
  string title;
  int nomor;
} datasepakbola [3];

void printdatasepakbola (datasepakbola_t datasepakbola);

int main ()
{
  string mystr;
  int n;

  for (n=0; n<3; n++)
  {
    cout << "Enter title: ";
    getline (cin,datasepakbola[n].title);
    cout << "Enter nomor: ";
    getline (cin,mystr);
    stringstream(mystr) >> datasepakbola[n].nomor;
  }

  cout << "\n anda memasukan data sepakbola:\n";
  for (n=0; n<3; n++)
    printdatasepakbola (datasepakbola[n]);
  return 0;
}

void printdatasepakbola (datasepakbola_t datasepakbola)
{
  cout << datasepakbola.title;
  cout << " (" << datasepakbola. nomor << ")\n";
}
