#include <iostream>
#include <string>
using namespace std;

string sort(string word) {
  for(int j = word.length() - 1; j > 0; j--) {
    for(int i = 0; i < j; i++) {
      if(word[i]>word[i+1]) swap(word[i],word[i+1]);
    }
  }
  return word;
}

bool checkIfAnagram(string word1, string word2) {
  if(sort(word1)==sort(word2)) return true;
  return false;
}

bool checkIfAnagramAlt1(string word1, string word2) {
  int tableWord1[26];
  int tableWord2[26];
  for(int i = 0;i<26;i++) {
    tableWord1[i] = 0;
    tableWord2[i] = 0;
  }
  for(int i = 0;i < word1.length() || i < word2.length(); i++) {
    tableWord1[word1[i] - 97]++;
    tableWord2[word2[i] - 97]++;
  }
  for(int i = 0;i<26;i++) {
    if(tableWord1[i]!=tableWord2[i]) return false;
  }
  return true;
}

int main() {
  string word1, word2;
  cin>>word1;
  cin>>word2;
  if(checkIfAnagram(word1,word2)) {
      cout<<"To anagram."<<endl;
  } else {
    cout<<"To nie anagram."<<endl;
  }
  if(checkIfAnagramAlt1(word1,word2)) {
      cout<<"To anagram."<<endl;
  } else {
    cout<<"To nie anagram."<<endl;
  }
  return 0;
}
