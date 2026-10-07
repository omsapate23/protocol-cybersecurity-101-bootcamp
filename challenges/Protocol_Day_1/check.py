#!/usr/bin/env python3
"""Offline practice checker; not a secure scoreboard or access-control system."""
import hashlib
EXPECTED = ['e0ed5a52fff263369c41ec5ff0274d7f26fdc1bf983924e1f7dbd10a4a34ea31', '00eaee6da45b6e02dd40d2f9767451091f9f796b697e4cfa34a7d608d9281f5a', 'e1a25ea62a49131a735443efec928f95e57af6523fccc87d625178080ea02695']
try:
    level = int(input("Level (1, 2 or 3): "))
    if level not in (1, 2, 3):
        raise ValueError
    answer = input("Paste your PROTOCOL{...} flag: ").strip()
    if hashlib.sha256(answer.encode()).hexdigest() == EXPECTED[level - 1]:
        print("Correct! " + ("Continue to the next level." if level < 3 else "Level 3 solved!"))
    else:
        print("Not quite. Check spelling, capitals and braces, then try again.")
except (ValueError, EOFError):
    print("Choose a level from 1 to 3 and enter the flag.")
