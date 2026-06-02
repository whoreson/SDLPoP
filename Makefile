# Project: SDLPoP
# Makefile created by Dev-C++ 4.9.9.2

CC   = gcc
OBJ  = main.o data.o seg000.o seg001.o seg002.o seg003.o seg004.o seg005.o seg006.o seg007.o seg008.o seg009.o
LIBS = -L/opt/lib -L/usr/local/lib -l"SDL_image" -l"SDL_mixer" -Wl,-rpath,/usr/local/lib
INCS = -I/usr/local/include -I/opt/include -I/usr/local/include/SDL
BIN  = prince
CFLAGS = $(INCS) -Wall -pedantic -std=gnu99
RM = rm -f
HFILES   = common.h config.h data.h proto.h types.h

.PHONY: all all-before all-after clean clean-custom

all: all-before $(BIN) all-after


clean: clean-custom
	${RM} $(OBJ) $(BIN)

$(BIN): $(OBJ)
	$(CC) $(OBJ) -o $(BIN) $(LIBS)

%.o: %.c $(HFILES)
	$(CC) -c $< $(CFLAGS)
