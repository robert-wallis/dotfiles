#!/usr/bin/env python3
import os
import subprocess

def dups(files):
    return [(f,o) for f in files for o in files if f != o and o.startswith(f)]

if __name__ == '__main__':
    ok_to_delete = []
    for folder in os.walk('/etc'):
        root, dirs, files = folder
        duplicates = dups(files)
        for dup in duplicates:
            current, other = dup
            current = root + '/' + current
            other = root + '/' + other
            r = subprocess.run(['diff', current, other], capture_output=True)
            if len(r.stdout) == 0 and len(r.stderr) == 0:
                ok_to_delete.append(other)
            else:
                print(current, other)
                print(r.stdout.decode('utf-8'))
                print('-----')
                print(r.stderr.decode('utf-8'))
                print('****************')
    print("Ok to delete: ")
    print(' '.join(['"' + f + '"' for f in ok_to_delete]))
