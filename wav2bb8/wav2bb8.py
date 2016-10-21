# 16-bit PCM wave file to BB-8 arbitrary audio format converter
# for the love of god please be 44100Hz

import wave
import struct
import sys

if len(sys.argv) < 2:
	print("Usage: wav2bb8.py FILENAME")
	exit()

waveFile = wave.open(sys.argv[1], 'r')

if waveFile.getframerate() != 48000:
	print("Expected fs of 48000Hz, got {:d}".format(waveFile.getframerate()))
	exit()

print("Sample width: {:d}".format(waveFile.getsampwidth()))
data = waveFile.readframes(waveFile.getnframes())
#data = waveFile.readframes(1)
for i in range(0,waveFile.getnframes()):
	data = struct.unpack("<h", waveFile.readframes(1))
	print(int(data[0]))
waveFile.close()
