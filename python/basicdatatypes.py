# Find the Runner-Up Score!
n = int(input())
arr = list(map(int, input().split()))

arr_max = max(arr)

new_arr = [el for el in arr if el != arr_max]

print(max(new_arr))
# ---


# Nested Lists
