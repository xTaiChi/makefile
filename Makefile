####################################################################
#
#	客户,方案,IC,版本号定义
#
####################################################################
CLIENT=嘉之声
PROJECT=MP5
IC=03
VERSIONS=01
DATE=$(shell date '+%Y-%m-%d')

####################################################################
#	
#	工具主目录
#
####################################################################
MAINDIR=C:/BlueLab/tools
MKFILE=stereo_headset.release.mak
SPI=USB

r=E:/root
include	$r/x/Makefile.all
include	$r/x/Makefile.dfu
include	$r/x/Makefile.pack
