from string import ascii_letters
word = 'The quick brown fox jumps over the lazy dog'
alphabet = list(ascii_letters)
def prepareWord(word):
    return word.replace(' ', '')

def generateCipher(offset):
    cryptoalphabet = list(alphabet)
    for i in range(0, offset):
        cryptoalphabet.append(cryptoalphabet.pop(0))
    return cryptoalphabet

def encode(word, cipher):
    encodedWordList = []
    for letter in word:
        encodedWordList.append(cipher[alphabet.index(letter)])
    return ''.join(encodedWordList)

def decode(word, cipher):
    decodedWordList = []
    for letter in encodedword:
        decodedWordList.append(alphabet[cipher.index(letter)])
    return ''.join(decodedWordList)

x = int(input('Choose offset: '))
encodeword = prepareWord(word)
cryptoalphabet = list(generateCipher(x))
encodedword = encode(encodeword, cryptoalphabet)
print(encodedword)
decodedword = decode(encodedword, cryptoalphabet)
print(decodedword)