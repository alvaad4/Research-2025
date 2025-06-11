import re

with open('/Users/adam/Downloads/text1.txt', 'r') as file:
    content = file.read()

pattern = r'\d+(?::\.\d+)?'  # Adjust as needed
matches = re.findall(pattern, content)

print(matches)