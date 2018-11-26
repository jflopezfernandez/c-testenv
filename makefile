
vpath %.h include
vpath %.c src

CC := gcc

CFLAGS := -g -Wall -Wextra -pedantic
LFLAGS :=

all: testenv.exe

testenv.exe: main.o
	$(CC) $(CFLAGS) $(LFLAGS) -o $@ $^

main.o: main.c
	$(CC) $(CFLAGS) -c -o $@ $^

clean:
	rm -rf *.o *.exe
