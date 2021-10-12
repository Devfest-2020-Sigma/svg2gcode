CC = clang
CFLAGS = -Ofast

all: svg2gcode svg2gcode-filrouge

svg2gcode:	svg2gcode.c nanosvg.h
	$(CC) -o svg2gcode -g svg2gcode.c -lm

svg2gcode-filrouge:	svg2gcode-filrouge.c nanosvg.h
	$(CC) -o svg2gcode-filrouge -g svg2gcode-filrouge.c -lm

clean:
	rm -fr svg2code svg2gcode-filrouge *.o

