CC = gcc
CFLAGS = -Wall -g

all: prog1 prog2 prog3 prog4 zombie_process prog5 lsgrep fifo_server fifo_client signal_handler

prog1: prog1.c
	$(CC) $(CFLAGS) -o prog1 prog1.c

prog2: prog2.c
	$(CC) $(CFLAGS) -o prog2 prog2.c

prog3: prog3.c
	$(CC) $(CFLAGS) -o prog3 prog3.c

prog4: prog4.c
	$(CC) $(CFLAGS) -o prog4 prog4.c

zombie_process: zombie_process.c
	$(CC) $(CFLAGS) -o zombie_process zombie_process.c

prog5: prog5.c
	$(CC) $(CFLAGS) -o prog5 prog5.c

lsgrep: ls_grep_pipe.c
	$(CC) $(CFLAGS) -o lsgrep ls_grep_pipe.c

fifo_server: prog6_fifo_server.c
	$(CC) $(CFLAGS) -o fifo_server prog6_fifo_server.c

fifo_client: prog6_fifo_client.c
	$(CC) $(CFLAGS) -o fifo_client prog6_fifo_client.c

signal_handler: signal_handler.c
	$(CC) $(CFLAGS) -o signal_handler signal_handler.c
clean:
	rm -f prog1 prog2 prog3 prog4 zombie_process prog5 lsgrep fifo_server fifo_client signal_handler
