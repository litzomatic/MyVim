#!/bin/sh

echo $1

if [ -f server_info.txt ]; then
    echo "Would you like to use the existing file? (y/n)"
	read yes_or_no
	if [ `echo $yes_or_no  | tr "[:upper:]" "[:lower:]"` = "y" ]; then
		echo "Attempting to use existing iPython session"
    else
		rm server_info.txt
        ipython-2.7 qtconsole --editor=vim --colors=linux --stylesheet=../iPython_Zenburn_Highlighting/zenburn_ipython.css > server_info.txt 2>&1&
	fi
else
    ipython-2.7 qtconsole --editor=vim --colors=linux --stylesheet=../iPython_Zenburn_Highlighting/zenburn_ipython.css > server_info.txt 2>&1&
fi

python << endpython

import os
import re

while True:
	if os.path.exists('./server_info.txt'):
		with open('./server_info.txt', 'r') as f:
			lines = f.readlines()
			if len(lines) == 2:
				connection_line = lines[1]
			else:
				connection_line = ''
		if re.search('^\[IPKernelApp\] --existing --shell=[0-9]{5} --iopub=[0-9]{5} --stdin=[0-9]{5} --hb=[0-9]{5}$',
		connection_line):
			break

endpython

dir=`dirname $1`
base=`basename $1`
echo $base

vim -c 'source ../iPython_Vim_Integration/ipy.vim' -c 'python with open("server_info.txt", "r") as f: x = \
[line for line in f]; x = x[1][14:]; vim.command("IPython %s" % x[:-1]); print("IPython %s" % x[:-1])' \
-c "cd! $dir" -c "e $base"


