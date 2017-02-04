import os, sys, binascii

tempsignal=''
frame_flag = False
print sys.argv[1]
#print sys.argv[2]
file_name = sys.argv[1]
file_pri = file_name[:file_name.index('.net')]+'.pri'
print file_pri

f_net = open(sys.argv[1],'r')
f_pri = open(file_pri,'w')

f_pri.write(head1)
f_pri.write(head2)
f_pri.write(head3)
f_pri.write(head4)
f_pri.write(head2)
f_pri.write(head1)
f_pri.write(head2)
f_pri.write(head5)
f_pri.write(head6)
f_pri.write(head7)
f_pri.write(head8)
f_pri.write(head9)
f_pri.write(head2)
f_pri.write(head1)

for i in range(4):
    f_pri.write(spaceline)

f_pri.write(head10)
f_pri.write(head11)
for i in range(3):
    f_pri.write(spaceline)
f_pri.write(head12)
f_pri.write(spaceline)

for line in f_net.readlines():
    #print line[0:2]
    if signal in line:
        temps = line[line.index(signal)+len(signal):]
        frame_flag = True
        continue
    if frame_flag:
        if recevied in line:
            templist=[]
            templist.append(temps[:temps.index(space)])
            continue

        if identifier in line:
            temps = line[line.index('=')+len('='):]
            templist.append(temps[:temps.index(';')])
            continue
        if 'signal ' in line:
            temps = line[line.index('signal ')+len('signal '):]
            templist.append(temps[:temps.index('{')].strip())
            total_list.append(templist)
            frame_flag = False

    if (map_filter in line) and (toapp_filter in line):
        temps = line[line.index(map_filter)+len(map_filter):]
        tempsignal = temps[:temps.index(toapp_filter)]
        for sublist in total_list:
            if tempsignal == sublist[2]:
                temp = temps[temps.index(toapp_filter)+len(toapp_filter):]
                total_list[total_list.index(sublist)][2]=temp[:temp.index(';')]
                print (tempsignal+'<==>'+temp)


for sublist in total_list:
    f_pri.write('/*'+sublist[0]+','+sublist[1]+'*/\r\n')
    f_pri.write('flag "'+sublist[0]+'_flag" {\r\n')
    f_pri.write('\t'+pri_filter+sublist[2]+'";\r\n')
    f_pri.write('}\r\n\r\n')

        

f_net.close()
f_pri.close()


