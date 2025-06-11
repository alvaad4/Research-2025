import re 

file = open('/Users/adam/Downloads/text.txt', 'r')
content = file.read()

pattern = r'\d+(:\.\d+)?'

matches = re.findall(pattern,content)

print(matches)

file.close()