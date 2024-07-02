import string
counter = 0
list = [1,3,3,4,4,3]
n = len(list)
print(n)
def major():
    counter = 0
    for i in list:
        for j in list:
            j = j    
    if j == i:
        counter = counter + 1
        pass
    
    if counter > (n/2):
        print(counter)
        print("Digit Most used : ",j)
    return 0
major()