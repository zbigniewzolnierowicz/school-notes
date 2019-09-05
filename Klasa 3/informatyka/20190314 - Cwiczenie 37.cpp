#include <iostream>
#include <cstring>
using namespace std;

string spacer(string input) {
  string returnString;
  for (int i = 0; i < int(input.size()); ++i) {
    returnString += input.at(i);
    returnString += " ";
  }
  return returnString;
}

string spacerDouble(string input) {
  string returnString;
  for (int i = 0; i < int(input.size()); ++i) {
    returnString += input.at(i);
    if ((i + 1) % 2 == 0) {
    returnString += " ";
    }
  }
  return returnString;
}

string spacerTriple(string input) {
  string returnString;
  for (int i = 0; i < int(input.size()); ++i) {
    returnString += input.at(i);
    if ((i + 1) % 3 == 0) {
    returnString += "  ";
    }
  }
  return returnString;
}

string inverter(string input) {
  string returnString;
  for (int i = int(input.size()) - 1; i >= 0; i--) {
    returnString += input.at(i);
  }
  return returnString;
}

int main() {
  string input;
  getline(cin, input);
  cout<<spacer(input)<<endl;
  cout<<inverter(spacer(input))<<endl;
  cout<<spacerDouble(input)<<endl;
  cout<<inverter(spacerTriple(input))<<endl;
}
