import sys

if len(sys.argv) > 1:
    fl = open(sys.argv[1])
    buffer=""
    counter = 1
    sums_time = []
    for line in fl:
        line = line.strip().split(" ")
        if len(line)==1:
            sums_time.append(line[0])
        else:
            buffer = buffer + " " + line[1]
            if (counter == 20): 
                print(buffer)
                buffer=""
                counter=0
            counter+=1

    for val in sums_time:
        print(val," ",end='')
    print("\n")
else: 
    print("---------ERRO-------")
