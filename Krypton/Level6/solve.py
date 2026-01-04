#!/usr/bin/python3

# Since the algorithm uses lsfr it doen'st generate true random
# numbers, and tyring to encrypt large string of 'A' will produce
# patterns we can use to decrypt the message

pattern = "EICTDGYIYZKTHNSIRFXYCPFUEOCKRN"

c = "PNUKLYLWRQKGKBE"


for i, j in zip(c, k):
    code = (ord(i) ^ ord(j)) + ord("A")
    print(chr(code), end="")


def decrypt(ciphertext, a_pattern):
    plaintext = ""

    for c_char, p_char in zip(ciphertext, a_pattern):
        # Convert characters to 0-25 range
        c_val = ord(c_char) - ord("A")
        shift = ord(p_char) - ord("A")

        # Reverse the shift: (Cipher - Shift) % 26
        # Python handles negative modulo correctly (e.g., -1 % 26 = 25)
        p_val = (c_val - shift) % 26

        # Convert back to ASCII
        plaintext += chr(p_val + ord("A"))

    return plaintext


print(decrypt(c, pattern))
