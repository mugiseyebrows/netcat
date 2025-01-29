
CC=gcc

CFLAGS=-DNDEBUG -DWIN32 -D_CONSOLE -DTELNET -DGAPING_SECURITY_HOLE
LDFLAGS=-s -luser32 -lwsock32

all: nc.exe

nc.exe: getopt.c doexec.c netcat.c
	$(CC) $(CFLAGS) getopt.c doexec.c netcat.c $(LDFLAGS) -o nc.exe

clean:
	del /f nc.exe
