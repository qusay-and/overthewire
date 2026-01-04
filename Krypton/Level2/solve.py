#!/usr/bin/python3

from string import ascii_uppercase

# First need to figure out the substitution of characters
# by providing ABC...XYZ as input we can see how they are
# substituted A -> M , B -> N . . .
# $ cd `mktemp -d`
# $ ln -s /krypton/krypton2/keyfile.dat
# $ chmod 777 .
# $ echo "ABCDEFGHIJKLMNOPQRSTUVWXYZ" > in.txt
# $ /krypton/krypton2/encrypt in.txt
# $ cat ciphertext
conversion = "MNOPQRSTUVWXYZABCDEFGHIJKL"

with open("./krypton3", "r") as f:
    data = f.read().strip()


substitued = []
for c in data:
    index = conversion.index(c)
    substitued.append(ascii_uppercase[index])

print("".join(substitued))
