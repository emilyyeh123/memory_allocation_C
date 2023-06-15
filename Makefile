CC = gcc
CFLAGS = -c -Wall -Wextra -std=c99 -g
HEADERS = myMalloc.h
OBJ = main.o myMalloc.o
EXECUTABLE = program

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJ)
	$(CC) $(OBJ) -o $(EXECUTABLE)

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -rf *.o $(EXECUTABLE)

