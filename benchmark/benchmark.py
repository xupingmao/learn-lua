import time
import sys
import random

def fib(n):
    if n == 0 or n == 1:
        return 1
    return fib(n-1) + fib(n-2)
    

def test(f, *args):
    t1 = time.clock()
    f(*args)
    t2 = time.clock()
    print("Python Cost:", t2-t1, "s")
    
    
def gloop(n):
    global i
    global j
    for i in range(n):
        j = i * 1.2 + i / 1.2 - i % 1.2
    
def lloop(n):
    for i in range(n):
        j = i * 1.2 + i / 1.2 - i % 1.2

def string_concat(length, times):
    ascii_a = ord('a')
    for i in range(times):
        s = ''
        for i in range(length):
            s += chr(int(random.random() * 26) + ascii_a)
        # print(s)
        
def main(argv):
    if len(argv) == 2:
        op = argv[1]
        if op == "fib":
            test(fib, 32)
        elif op == "gloop":
            test(gloop, 1000000)
        elif op == "lloop":
            test(lloop, 1000000)
        elif op == "string":
            test(string_concat, 30, 1000)
        
    
if __name__ == "__main__":
    main(sys.argv)