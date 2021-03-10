def RemDupLoop(list_input):
    newlist = []
    for i in list_input:
        if i not in newlist:
            newlist.append(i)
    return newlist

def RemDupSet(list_input):
    st = set(list_input)
    return list(st)

list_input = input("Enter elements of list seperated by a space: ").split()
print("list after removing duplicates using loop:",RemDupLoop(list_input))
print("list after removing duplicates using set:",RemDupSet(list_input))