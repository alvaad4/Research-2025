import re
with open('/Users/adam/Downloads/text1.txt', 'r') as file:
    content = file.read()

pattern = r'(?:total duration:|prompt eval duration:|prompt eval rate:|eval duration:|evalrate:|prompt eval count:|eval count:|eval rate:|load duration:)\s*\d+(?:\.\d+)?'
matches = re.findall(pattern, content)

print(matches)

import numpy as np
print(np.__version__)
