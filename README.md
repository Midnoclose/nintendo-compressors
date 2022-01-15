# Nintendo DS Compressors by CUE

The original tools are available [here](https://www.romhacking.net/utilities/826/). They have been ported to POSIX operating systems and a Makefile has been added. Run `make all` to compile the binaries.

*Original description and warning:*

Nintendo DS/GBA - Some of my compression tools (source code included).

Maybe the best set of compression tools for DS/GBA.

Support both encode and decode data:

- BIOS compatible compressions (DS and GBA)
    - RLE
    - LZSS (with my own optimized version, ‘LZ-CUE’)
    - Huffman (this first and only tool to encode properly the 8-bit mode)
- non BIOS compatible compressions (only DS)
    - BLZ (used in ARM overlay files, RPG Maker DS)
    - LZX (also known as LZ11 and LZ40, used in some games)
    - LZE (used in Luminous Arc 2, Luminous Arc 3)


Run each command-line tool without parameters to view their usage. 


## WARNING

You need the NDS ROM to update the ARM9 size in the ARM9 file:
- get the ARM9 load address (offset 0x0028)
- get the ARM9 autoload (offset 0x0070)
- the offset is the previous dword value @ autoload
- change the sizes in the 1st/2nd/6rd dwords pointed by the offset:
  - 1st: ARM9 decompressed size + 0x18
  - 2nd: ARM9 decompressed size
  - 6rd: ARM9 compressed size (0 if ARM9 is uncompressed)
(do not forget update all values with the load address)

```c
load = *(int *)ROM[0x0028];
auto = *(int *)ROM[0x0070] - load;
offset = *(int *)ARM9[auto - 1*4] - load;
*(int *)ARM9[offset+0*4] = load + ARM9_size - 0x18;
*(int *)ARM9[offset+1*4] = load + ARM9_size;
*(int *)ARM9[offset+5*4] = load + ARM9_decompressed_size; // (0 if decompressed)
```