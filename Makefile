####################################################################
#
#	�ͻ�,����,IC,�汾�Ŷ���
#
####################################################################
CLIENT=��֮��
PROJECT=MP5
IC=03
VERSIONS=01
DATE=$(shell date '+%Y-%m-%d')

####################################################################
#	
#	������Ŀ¼
#
####################################################################
MAINDIR=C:/BlueLab/tools
MKFILE=stereo_headset.release.mak
SPI=USB

r=E:/root
include	$r/x/Makefile.all
include	$r/x/Makefile.dfu
include	$r/x/Makefile.pack
