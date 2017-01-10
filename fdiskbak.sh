#!/bin/bash

i=1  
mkdir /export
while [ $i -lt 24 ]  
do  
j=`echo $i|awk '{printf "%c",97+$i}'`

fdisk /dev/sd$j << EOF 
d 
1   
n   
p  
1


w   
EOF

if [ $? != 0 ];then
   echo "*** Unable open /dev/sd${j}  complete was Fdisled! ***"
   exit 1
fi

#mkfs
#sddd 
echo "******/dev/sd${j} __was Fdisked! Waiting For 2 Second*****"  

sleep 2  
                mkfs.ext4 /dev/sd${j}1  
                if [ "$?" = "0" ];then  
                    echo "*****sd${j}1 _was Formated, Waiting For 1 Second****" 
                fi
		mkdir /export/sd${j}  

                let i+=1  
sleep 1
 
done 

##########################
###
