import string

def generateCipher(word):
    cipher = []
    word = list(word)
    cipher.extend(word)
    for letter in string.ascii_uppercase:
        if letter not in cipher:
            cipher.append(letter)
    return cipher

def sanitizeWord(word):
    sanitizedWord = []
    word = word.upper().replace(' ', '')
    for letter in word:
        if letter not in sanitizedWord:
            sanitizedWord.append(letter)
    return ''.join(sanitizedWord)

def encode(word, cipher):
    encodedWordList = []
    for letter in word:
        encodedWordList.append(cipher[string.ascii_uppercase.index(letter)])
    return ''.join(encodedWordList)

def decode(word, cipher):
    decodedWordList = []
    for letter in word:
        decodedWordList.append(string.ascii_uppercase[cipher.index(letter)])
    return ''.join(decodedWordList)

password = input('Podaj hasło: ')
password = sanitizeWord(password)
cipher = generateCipher(password)
word = input('Podaj słowo do zaszyfrowania: ').upper()
encodedWord = encode(word, cipher)
decodedWord = decode(encodedWord, cipher)
print('Szyfr: {}\n\tZaszyfrowane słowo: {}\n\tOdszyfrowane słowo: {}'.format(cipher, encodedWord, decodedWord))