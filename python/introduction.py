# Say 'Hello, World!' With Python
print('Hello, World!')
# ---


# Python If-Else
# solved with If-Else as prompted but could be done in a creative way with lookup dict (without handling constraints)
n = int(input().strip())  # read from stdin

if n < 1 or n > 100:
    raise ValueError('n should be within the range [1, 100]')
elif n % 2 == 0:  # cases when n is even
    # n even and within [2, 5]
    if n in range(2, 6):
        print('Not Weird')
    # n even and within [6, 20]
    elif n in range(6, 21):
        print('Weird')
    # n even and > 20
    else:
        print('Not Weird')
else:  # case when n is odd
    print('Weird')
# OR
lookup = {True: 'Not Wierd', False: 'Weird'}
print(lookup[n % 2 == 0 and (n in range(2, 6) or n > 20)])
# ---


# Arithmetic Operators
a = int(input())  # read from stdin
b = int(input())  # read from stdin

print(a+b, a-b, a*b, sep='\n')
# ---


# Python: Division
a = int(input())  # read from stdin
b = int(input())  # read from stdin

print(a//b, a/b, sep='\n')  # first print is integer division, second is float division
# ---


# Loops
n = int(input().strip())

if n < 1 or n > 20:
    raise ValueError('n should be within the range [1, 20]')

for i in range(0, n):
    print(i**2)
# ---


# Print Function
n = int(input().strip())

for i in range(1, n+1):
    print(i, sep='')

# alternative (and neat!) one line solution using args unpacking
print(*range(1, n+1), sep='')
# ---
