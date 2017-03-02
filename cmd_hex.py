#!/usr/bin/python2.7

# Arun Kumar Shreevastava
# 3rd March 2017
# Convert input commads to sequence of pushes after padding with appropriate no of '/'

s = raw_input('String:')

if len(s)%4 !=0:
	s = '/'*( 4- len(s) % 4) + s

s = s[::-1]

print 'Length %d' % (len(s))

for i in range(0, len(s),4):
	print 'push 0x%s\t\t;%s' % (s[i:i+4].encode('hex'), s[i:i+4])