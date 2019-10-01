from string import ascii_uppercase
word = 'The quick brown fox jumps over the lazy dog'
alphabet = list(ascii_uppercase)
def prepareWord(word):
    return word.upper().replace(' ', '')

def generateCipher(offset):
    cryptoalphabet = list(alphabet)
    for i in range(0, offset):
        placeholder = cryptoalphabet.pop(0)
        cryptoalphabet.append(placeholder)
    return cryptoalphabet

def encode(word, cipher):
    encodedWordList = []
    for letter in word:
        letterIndex = alphabet.index(letter)
        encodedWordList.append(cryptoalphabet[letterIndex])
    return ''.join(encodedWordList)

def decode(word, cipher):
    decodedWordList = []
    for letter in encodedword:
        letterIndex = cryptoalphabet.index(letter)
        decodedWordList.append(alphabet[letterIndex])
    return ''.join(decodedWordList)

x = int(input('Choose offset: '))
encodeword = prepareWord(word)
cryptoalphabet = list(generateCipher(x))
encodedword = encode(encodeword, cryptoalphabet)
print(encodedword)
decodedword = decode(encodedword, cryptoalphabet)
print(decodedword)