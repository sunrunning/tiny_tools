import os, sys, binascii

spaceline='\r\n'

count=0
print sys.argv[1]
print sys.argv[2]

f_map = open(sys.argv[1],'r')
f_fun = open(sys.argv[2],'w')

for line in f_map.readlines():
    if '+-' in line:
        temp1 = line[line.index('+-')+len('+-'):]
        temp2 = line[:line.index('+-')]
        if temp2.count('|') > count:
            for i in range(count+1):
                f_fun.write('\t')
            f_fun.write(((temp1.replace('(see above)','')).strip())+' {'+spaceline)
            count = count+1
        elif temp2.count('|') == count:
            for i in range(count):
                f_fun.write('\t')
            f_fun.write('}'+spaceline)
            for i in range(count):
                f_fun.write('\t')
            f_fun.write(((temp1.replace('(see above)','')).strip())+' {'+spaceline)
        else:
            while(temp2.count('|') < count):
                for i in range(count):
                    f_fun.write('\t')
                f_fun.write('}'+spaceline+spaceline)
                count = count-1
            for i in range(count):
                f_fun.write('\t')
            f_fun.write('}'+spaceline)
            f_fun.write(((temp1.replace('(see above)','')).strip())+' {'+spaceline)

f_fun.write('}'+spaceline)

f_map.close()
f_fun.close()


