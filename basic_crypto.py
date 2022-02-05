from binascii import hexlify
import string
import base64

def decrypt(text, shift):
    """ when the shift is known """
    decrypted_text = list(range(len(text)))
    alphabet = string.ascii_lowercase
    first_half = alphabet[:shift]
    second_half = alphabet[shift:]
    shifted_alphabet = second_half + first_half
    
    for i, letter in enumerate(text.lower()):

        if letter in alphabet:
            index = shifted_alphabet.index(letter)
            original_letter = alphabet[index]
            decrypted_text[i] = original_letter 
        else:
            decrypted_text[i] = letter

    return "".join(decrypted_text)

def brute_force():
    for n in range(26):
        print(f"Using a shift value of {n}")
        print(decrypt(text, n))
        print("\n***\n")

print("Cyptography solver")
print("------------------")
print("Choosse an option:")
print("1. Base64 encode")
print("2. Base64 decode")
print("3. Reverse string")
print("4. Caesar cipher brute force")
print("5. Exit")
choice = input()

while choice != "5":
    if choice == "1":
        print("Enter a string to encode: ")
        string = input()
        print("Encoded string: " + base64.b64encode(string.encode()).decode())
    elif choice == "2":
        print("Enter a string to decode: ")
        string = input()
        print("Decoded string: " + base64.b64decode(string).decode())
    elif choice == "3":
        print("Enter a string to reverse: ")
        string = input()
        print("Reversed string: " + string[::-1])
    elif choice == "4":
        print("Enter a string to brute force: ")
        text = input()
        brute_force()
    else:
        print("Invalid option")
    print("------------------")
    print("Choosse an option:")
    print("1. Base64 encode")
    print("2. Base64 decode")
    print("3. Reverse string")
    print("4. Caesar cipher brute force")
    print("5. Exit")
    choice = input()
