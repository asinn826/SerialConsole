#!/bin/bash

# This script will enable your Linux VM for SysRq and NMI by appending to the
# end of your /etc/sysctl.conf file. Note that if your /etc/sysctl.conf already
# contains kernel.sysrq=1 or kernel.panic_on_unrecovered_nmi=1 in 
# /etc/sysctl.conf, this script will probably not change anything

sed -e "\$akernel.sysrq=1" /etc/sysctl.conf
sed -e "\$akernel.panic_on_unrecovered_nmi=1" /etc/sysctl.conf
sysctl -p