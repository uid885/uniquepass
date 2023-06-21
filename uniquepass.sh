#!/bin/bash -
##########################################################
# Author:     Christo Deale                  
# Date  :     2023-06-21             
# uniquepass: Utility to generate a Random passwd 
#             using GPG             
##########################################################
echo " :: uniquepass :: "
echo "Enter length of required password"
read PASSLENGTH
gpg --gen-random --armor 2 $PASSLENGTH