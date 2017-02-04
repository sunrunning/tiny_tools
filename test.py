

list_string=[]

list_string.append('string1')
list_string.append('string2')
list_string.append('string3')

for sublist in list_string:
    print sublist

list_string[2] = 'change2'

for sublist in list_string:
    print sublist
