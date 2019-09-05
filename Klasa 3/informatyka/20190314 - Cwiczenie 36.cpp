#include <iostream>
#include <string>
using namespace std;

int main() {
  string imie;
  string nazwisko;
  cout<<"Podaj imię: ";
  cin>>imie;
  cout<<"Podaj nazwisko: ";
  cin>>nazwisko;
  cout<<"Długość imienia: "<<imie.size()<<", długość nazwiska: "<<nazwisko.size()<<".";
  return 0;
}
