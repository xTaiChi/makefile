#!/bin/bash
#set -v on
if [ $# -eq 0 ]; then
    echo "Usage: $0 {-R|-C|file}"
    exit 1
fi 

DIR=odir
CAT=cat
CP=opencp

case $1 in
    -R)
        if [ ! -d $DIR ]; then
            mkdir $DIR
        fi
        for f in `ls *.c *.h`;do
            tmp=$f.tmp
            $CAT $f > $DIR/$tmp
            $CP $DIR/$tmp $DIR/$f
            rm $DIR/$tmp
        done
        mv $DIR/* ./
        echo "Done."
        ;; 
    -C)
        if [ ! -d $DIR ]; then
            mkdir $DIR
        fi
        for f in `ls *.c *.h`;do
            $CAT $f > $DIR/$f
        done
        mv $DIR/* ./
        echo "shit done."
        ;;
    *)
        for f in $1;do
            if [ -f $f ];then
                tmp=$f.tmp
                $CAT $f  >  $tmp
                $CP $tmp $f
                rm $tmp
                echo "Done!."
            else
                echo "$f not found."
            fi
        done
        ;;
esac
