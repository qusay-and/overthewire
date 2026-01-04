#!/usr/bin/python3

from string import ascii_uppercase

# Presented with messages encrypted by the same substitution key
# the messages are long so we can do analysis of letter frequencies
# the input is English UPPERCASE
# We can cheat and use online tool to give us hints on what the mappings
# https://www.quipqiup.com/


def remap_file(filename, map):
    with open(filename, "r") as f:
        data = f.read().strip().replace(" ", "")

    mapped = []
    for letter in data:
        mapped.append(map[letter])

    return "".join(mapped)


letter_map = {
    "A": "B",
    "B": "O",
    "C": "I",
    "D": "H",
    "E": "G",
    "F": "K",
    "G": "N",
    "H": "Q",
    "I": "V",
    "J": "T",
    "K": "W",
    "L": "Y",
    "M": "U",
    "N": "R",
    "O": "X",
    "P": "Z",
    "Q": "A",
    "R": "J",
    "S": "E",
    "T": "M",
    "U": "S",
    "V": "L",
    "W": "D",
    "X": "F",
    "Y": "P",
    "Z": "C",
}

print(remap_file("./krypton4", letter_map))
