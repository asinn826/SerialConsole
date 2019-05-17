#!/bin/bash

# This script will enable your Linux VM for SysRq and NMI by appending to the
# end of your /etc/sysctl.conf file. Note that if your /etc/sysctl.conf already
# contains kernel.sysrq=1 or kernel.panic_on_unrecovered_nmi=1 in 
# /etc/sysctl.conf, this script will probably not change any perceived behavior

echo "kernel.sysrq=1" >> /etc/sysctl.conf
echo "kernel.panic_on_unrecovered_nmi=1" >> /etc/sysctl.conf
sysctl -p