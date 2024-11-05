# MiniDOS-crc

This is a crc command for Mini/DOS that is accellerated by use of pre-calculated CRC tables.

As of build 2, this implements two options:
* -x: Output CRC that would result if file was XMODEM-padded.
* -b: Output both the plain CRC and the XMODEM-padded CRC, separated with a slash.

This version of crc is approximately ten times faster than the Elf/OS version.
