import sys
import re

file_path = sys.argv[1]

pattern = 'logprobs.*'
with open(file_path, 'r') as file:
	lines = file.readlines()
	
var = ''
for line in lines:
	
	if 'llama_perf_context_print' in line:
		var += (line +'\n')
	
	elif 'logprobs' in line:
        	match = re.search(pattern, line)
	        var+= match.group() +'\n'


with open(sys.argv[2], 'a') as file:
	file.write(var)

