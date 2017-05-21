CFLAGS = -Wall -Wextra -Werror -Wfatal-errors -g 
OBJS = main.o gol.o config.o

.PHONY : all clean

all : game_of_life

game_of_life : $(OBJS)
	cc $(CFLAGS)$^ -o $@

%.o : %.c
	gcc $(CFLAGS) -c $<

clean: 
	rm *.o
	rm game_of_life