# a bash script to automate startup of net367 for a p2p configuration
#!/bin/bash

# for some reason inputs get messed up

getCommand () {
   read arg1
   read arg2
   read arg3
   echo "command" $arg1
   echo "file" $arg2
   echo "host id" $arg3
}

getCommand <<GOT_COMMANDS
u
haha.txt
0
GOT_COMMANDS

make net367

./net367 << END_OF_TEST
p2p.config
m
TestDir0 
c
1
m
TestDir1 
i
s 
u
haha.txt
0
i
s
q
END_OF_TEST


$arg1
$arg2
$arg3
s 
q
END_OF_TEST

exit 0
