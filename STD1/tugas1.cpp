//tugasharis
#include<iostream>
using namespace std;
char kendaraan [7][15] =
{"sepeda","beca","bajai","motor","mobil","busway","bus"};
int n;
int main()
{
	for(n=0;n<7;n++)
	{
	cout <<"masukan salah satu kendaraan : ";
	cin>> n;
	cout <<"nama kendaraan tersebut adalah :" <<kendaraan[n];
	cout << "\n";
	}
	return 0;
}
