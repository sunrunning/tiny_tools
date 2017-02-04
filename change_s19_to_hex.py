import os, sys, binascii

print sys.argv[1]
print sys.argv[2]

f_s19 = open(sys.argv[1],'r')
f_hex = open(sys.argv[2],'wb')

for line in f_s19.readlines():
    #print line[0:2]
    if 'S1' == line[0:2]:
        f_hex.seek(int(line[4:8], 16)-0x4000, 0)
        f_hex.write(binascii.a2b_hex(line[8:((int(line[2:4], 16) * 2) + 2)]))
    
    if 'S2' == line[0:2]:
        f_hex.seek(int(line[4:10], 16)-0x4000, 0)
        f_hex.write(binascii.a2b_hex(line[10:((int(line[2:4], 16) * 2) + 2)]))

f_hex.close()
f_s19.close()


