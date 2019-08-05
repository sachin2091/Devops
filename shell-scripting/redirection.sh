#!/bin/bash

##stout from ansh to stderr
echo " Hello! big data " 1>&2
#stderr from bash script to /dev/null
#note that theres no caommnad called 'dates'

dates 2>&1 // this will display error
dates 2>/dev/null //this willnot display error

#stderr and stdout to file
dates &> outfile.txt
