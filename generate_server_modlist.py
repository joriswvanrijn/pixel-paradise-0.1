import re

f = open("./temp/modlist.html", "r")
list = f.read()
list = list.replace('<ul>', '')
list = list.replace('</ul>', '')
list = list.replace('<li><a href="', '')
list = re.sub('">(.*)</a></li>', '', list)
f.close()

e = open("./server/extras/cf-mods.txt", "w")
e.write(list)
e.close()

print('Done!')
