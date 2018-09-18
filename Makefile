#
# Makefile for  csub BATTLE ROYALE game
#
# Enter one of the following
#
# make
# make all
# make csub
# make clean
#
CFLAGS = -I ./include
#LFLAGS = -lrt -lX11 -lGLU -lGL -pthread -lm
LFLAGS = -lrt -lX11 -lGL

all: csub

csub: csub.cpp log.cpp timers.cpp
	g++ $(CFLAGS) csub.cpp log.cpp timers.cpp \
	libggfonts.a -Wall $(LFLAGS) -o csub

clean:
	rm -f csub
	rm -f *.o

