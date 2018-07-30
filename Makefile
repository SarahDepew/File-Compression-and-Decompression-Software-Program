ALL_H_FILES = $(wildcard *.h)
ALL_C_FILES = $(wildcard *.c)
ALL_O_FILES = $(ALL_C_FILES:%.c=%.o)

puff: $(ALL_O_FILES)
	gcc -g -o $@ $^

%.o: %.c $(ALL_H_FILES)
	gcc -g -c $<

clean:
	rm -rf *.o *.gch *.dSYM 

.PHONY: clean
.SECONDARY:
