.PHONY: clean all

all: rle lzx lzss lze huffman blz

rle:
	mkdir -p bin
	gcc rle.c -o bin/rle

lzx:
	mkdir -p bin
	gcc lzx.c -o bin/lzx

lzss:
	mkdir -p bin
	gcc lzss.c -o bin/lzss

lze:
	mkdir -p bin
	gcc lze.c -o bin/lze

huffman:
	mkdir -p bin
	gcc huffman.c -o bin/huffman

blz:
	mkdir -p bin
	gcc blz.c -o bin/blz

clean:
	rm -r bin