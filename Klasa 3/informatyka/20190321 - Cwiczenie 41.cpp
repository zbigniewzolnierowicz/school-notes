#include <iostream>
#include <string>

bool checkIfPalindrome(std::string text) {
  for(int i = 0, j = text.length() - 1; i < j; i++, j--) {
    if(text[i] != text[j]) return false;
  }
  return true;
}

int main() {
  std::string input_text;
  std::cin>>input_text;
  if(checkIfPalindrome(input_text)) std::cout<<"To palindrom.\n"; else std::cout<<"To nie palindrom.\n";
}
