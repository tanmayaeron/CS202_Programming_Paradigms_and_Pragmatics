def reverse(text):
    print("string in reverse order is: ",end='')
    text = text.split()
    for i in reversed(text):
        print(i,end=' ')

text = input("Enter string: ")
reverse(text)
    
