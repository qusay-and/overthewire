#!/usr/bin/python3

from string import ascii_uppercase

with open("./krypton2", "r") as f:
    data = f.read().strip()


def rot(string, amount):
    rotated = []
    for c in string:
        if c not in ascii_uppercase:
            rotated.append(c)
            continue
        index = ord(c) - ord("A")
        index += amount
        index = index % 26
        index += ord("A")
        rotated.append(chr(index))
    return "".join(rotated)


print(rot(data, 13))


