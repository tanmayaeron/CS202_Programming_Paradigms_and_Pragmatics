n = int(input("Enter value of n: "))

pascal = []
pascal.append([1])
pascal.append([1,1])

for i in range(2,n):
    pascal.append([1])
    for j in range(len(pascal[i-1])-1):
        pascal[i].append(pascal[i-1][j]+pascal[i-1][j+1])
    pascal[i].append(1)

print("First",n,"rows of pascal triangle are:")
for i in range(n):
    print(' '*(n-i-1),end='')
    print(*pascal[i])