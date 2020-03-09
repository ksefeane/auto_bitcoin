import time
import sys
import subprocess
bashCommand = "mpstat -P ALL"
for i in range (0, 10):
	process = subprocess.Popen(bashCommand.split())
	output, error = process.communicate()
	time.sleep(1)
	clear = subprocess.Popen("reset")
	output, error = clear.communicate()

