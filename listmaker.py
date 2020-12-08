
# find a way to replace XXXXXX with the correct file name
playlistFile = open('/Users/Radmaster5000/Desktop/XXXXXX.txt')

# create a list where each value is a line of the text file
content = playlistFile.readlines()

# find a way to replace YYYYYYY with the correct file name
test = open('Users/Radmaster5000/Desktop/YYYYYYYY.txt', 'w')

for i in range(0, len(content)):
	if (content[int(i)][0:7] == '/Users/'):
		test.write(content[int(i)][53:])
	else:
		test.write (content[int(i)])

test.close()
