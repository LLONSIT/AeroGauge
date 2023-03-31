#!/usr/bin/python3
import os
import sys

def count_pragma_global_asm(path):
    count = 0
    for root, dirs, files in os.walk(path):
        for file in files:
            file_path = os.path.join(root, file)
            with open(file_path, 'r') as f:
                for line in f:
                    if "#pragma GLOBAL_ASM" in line:
                        count += 1
    return count

# Usage:
if len(sys.argv) < 2:
    print("Usage: python countPragmas directory_path")
    sys.exit(1)

path = sys.argv[1]
result = count_pragma_global_asm(path)
print(f"#pragma GLOBAL_ASM : {result}")
