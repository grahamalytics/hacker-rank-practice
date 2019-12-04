# Find the Runner-Up Score!
n = int(input())
arr = list(map(int, input().split()))

arr_max = max(arr)

new_arr = [el for el in arr if el != arr_max]

print(max(new_arr))
# ---


# Nested Lists
def nested_list_min_num(lists):
    """ Return max value from list of lists where inner lists follow format of [name, score] """
    min_num = min([li[1] for li in lists])
    return min_num


# list of lists containing name, scores for students
stu_scores = []

# receive input from user and save to stu_scores
for _ in range(int(input())):
    name = input().strip()
    score = float(input())
    stu_scores.append([name, score])

# calculate min score
min_score = nested_list_min_num(stu_scores)

# filter out students with min score from stu_scores
stu_scores_nomin = [li for li in stu_scores if li[1] != min_score]

# calculate second lowest score
second_low_score = nested_list_min_num(stu_scores_nomin)

# get name of student(s) (one or many) with second lowest score
second_last_place = [li[0] for li in stu_scores_nomin if li[1] == second_low_score]

# sort list alphabetically
second_last_place.sort()

# unpack and print sorted results
print(*second_last_place, sep='\n')
# ---


# Finding the Percentage
# number of student records entered defined by user
n = int(input())

# dictionary object for collecting records in the form of name: scores
stu_marks = {}

# for as many records defined above with n, create new entry in stu_marks with list of student's scores
for _ in range(n):
    name, *line = input().split()
    print(line, type(line))
    scores = list(map(float, line))
    stu_marks[name] = scores

# user defined name for returning average score of student
query_name = input().strip()

print('{:.2f}'.format(sum(stu_marks[query_name]) / len(stu_marks[query_name])))
# ---


# Lists
# number of commands to be passed by user
n = int(input())

# create empty list for applying usr's cmd
li = []

# define a dictionary of cmd:lambdas used to dispatch and execute usr cmd
cmd_lookup = {'insert': (lambda i, v: li.insert(i, v)),
              'remove': (lambda v: li.remove(v)),
              'append': (lambda v: li.append(v)),
              'sort': (lambda: li.sort()),
              'pop': (lambda: li.pop()),
              'reverse': (lambda: li.reverse())}

# receive and handle as many commands as defined by n
for _ in range(n):
    usrcmd, *params = input().split()

    # check to see is params list is empty and handle user cmd accordingly
    if usrcmd == 'print':
        print(li)
    elif not params:  # sort, pop, reverse
        cmd_lookup[usrcmd]()
    elif len(params) == 1:  # remove, append
        cmd_lookup[usrcmd](params[0])
    else:  # insert, must cast first param to int for insert to succeed
        cmd_lookup[usrcmd](int(params[0]), params[1])
# ---


# Tuples
# define number of inputs and collect in list
n = int(input())
integer_tuple = tuple(map(int, input().split()))

print(hash(integer_tuple))








