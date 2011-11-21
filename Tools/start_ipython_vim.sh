#!/bin/sh

rm server_info.txt
ipython-2.7 qtconsole --editor=vim --colors=linux --stylesheet=zenburn_ipython.css > server_info.txt 2>&1&

python << endpython
import time
import os
import re
current_time = time.time()
while True:
	if os.path.exists('./server_info.txt'):
		with open('./server_info.txt', 'r') as f:
			lines = f.readlines()
			if len(lines) == 2:
				connection_line = lines[1]
			else:
				connection_line = ''
		if re.search('^\[IPKernelApp\] --existing --shell=[0-9]{5} --iopub=[0-9]{5} --stdin=[0-9]{5} --hb=[0-9]{5}$', connection_line):
			break
endpython



vim -c 'source /Users/litzomatic/Downloads/ipy_vim/ipy.vim' -c 'python with open("server_info.txt", "r") as f: x = [line for line in f]; x = x[1][14:]; vim.command("IPython %s" % x[:-1]); print("IPython %s" % x[:-1])'
