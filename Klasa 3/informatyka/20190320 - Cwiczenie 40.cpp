#include <iostream>
#include <string>
using namespace std;

void columnize(string word) {
  for(int i = 0; i < word.length(); i++){
    if(word[i] == ' ') {
      cout<<endl;
    } else {
      cout<<word[i];
    }
  }
}

string findWord(string word) {
  string output_string = "";
  int i = 0;
  while (word[i] != ' ') {
    output_string += word[i];
    i++;
  }
  return output_string;
}

bool isOnlyWord(string word) {
  for(int i = 0; i < word.length(); i++) {
    if(word[i] == ' ') {
      return false;
    }
  }
    return true;
}

int checkIfOnlyWord(string word) {
  int i = 0;
  while (i < word.length() - 1) {
    if(word[i - 1] == ' ') return i;
    i++;
  }
  return 0;
}

string trimFirstWord(string word) {
  string output_word = "";
  for (int i = checkIfOnlyWord(word); i < word.length(); i++) {
    output_word += word[i];
  }
  return output_word;
}

bool checkFirstLast(string word) {
  string testing_word = findWord(word);
  if (testing_word[0] == testing_word[testing_word.length() - 1]) return true; else return false;
}

int main() {
  string word;
  getline(cin, word);
  // columnize(word);
  while(isOnlyWord(word)){
    word = trimFirstWord(word);
    if(checkFirstLast(word)) cout<<word<<endl;
  }
}
