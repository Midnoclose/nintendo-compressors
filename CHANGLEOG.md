# Nintendo DS Compressors by CUE

## 2011-11-11: version 1.0
  - initial version:
    - RLE coding
    - LZSS coding
    - Huffman coding
    - LZ eXtended coding
    - LZ Enhanced coding
    - Bottom LZ coding

## 2012-02-25: version 1.1
  - added `history.txt` file
  - BLZ: added support to encode ARM9 files
    - added command `-en9` to encode files in normal mode
    - added command `-eo9` to encode files in optimal mode

## 2012-07-05: version 1.2
  - BLZ decode
    - updated messages
    - do not remove the latest 4 zeroes in uncompressed files
  - BLZ encode ARM9 files
    - check the size: greater as 16KB
    - check the ID (0x0000): FF-DE-FF-E7-FF-DE-FF-E7-FF-DE-FF-E7-FF-DE
    - check the Secure Area 2KB CRC16 (0x000E): CRC from 0x0010 to 0x07FF
    - check the Secure Area 2KB end (0x07FE) : 00-00

## 2012-08-12: version 1.3
  - solved a bug from the update 1.2 in Huffman encode

## 2012-08-12: version 1.4
  - solved a bug Huffman compression (1-2-4 bits)

## 2022-01-14: version 1.4.1
  - renamed `history.txt` to `CHANGELOG.md` and convert to markdown
  - renamed `license.txt` to `LICENSE`
  - removed `spanish.txt`
  - added `README.md`
  - added `Makefile`
  - ported to POSIX environments
    - changes made by [Midnoclose](https://github.com/Midnoclose)