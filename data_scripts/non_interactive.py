import os
files = os.listdir()
for f in files:
  with open(f, 'r') as fp:
    i = 0
    for line in fp:
      i += 1
      if i >= 8:
        if '[EXEC]' in line:
          print(f)
          break
