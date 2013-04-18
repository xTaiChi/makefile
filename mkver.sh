#!/bin/bash
# cmd ic version
DATE=`date +%y%m%d|tr -d "\r\n"|xxd -g 1 -ps -i -c 1|tr -d ","`
#YEAR=`date +%y%m%d|tr -d "\r\n"|xxd -g 1 -ps -i -c 1|tr -d ","`

#MONTH=`date +%y|tr -d "\r\n"|xxd -g 1 -ps -i -c 1|tr -d ","`
#DAY=`date +%y|tr -d "\r\n"|xxd -g 1 -ps -i -c 1|tr -d ","`
IC=`echo $1|tr -d "\r\n"|xxd -g 1 -ps -i -c 1|tr -d ","`
VER=`echo $2|tr -d "\r\n"|xxd -g 1 -ps -i -c 1|tr -d ","`
PSKEY=`\
    for i in $IC $DATE $VER ;do
        printf "%04x " $i
    done
    `
#PSKEY=`printf "%04x %04x %04x %04x %04x %04x %04x %04x" $IC $YEAR $MONTH $DAY $VER`
#PSKEY=`echo -n $VER | xxd -ps -c 2 | tr "\r\n" " "`
echo "&028a -"
echo "&028b -"
echo "&028d -"
echo "&02b3 -"
echo "&025f = $PSKEY"
