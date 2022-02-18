# -*- coding: utf-8 -*-

import pickle
import sys


def printPKL(path):
    f = open(path, 'rb')
    content = pickle.load(f)
    print(content)

if __name__ == "__main__":
    printPKL(sys.argv[1])