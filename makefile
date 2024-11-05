
all: crc.bin

lbr: crc.lbr

clean:
	rm -f crc.lst
	rm -f crc.bin
	rm -f crc.lbr
	rm -f crctab
	rm -f crctab.asm

crc.bin: crc.asm crctab.asm include/bios.inc include/kernel.inc
	asm02 -L -b crc.asm
	rm -f crc.build

crctab: crctab.c
	cc -o crctab crctab.c

crctab.asm: crctab
	./crctab > crctab.asm

crc.lbr: crc.bin
	rm -f crc.lbr
	lbradd crc.lbr crc.bin

