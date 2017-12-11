CC := gcc
CFLAGS := -Wall -g3
LDFLAGS := -lasound -lm

all: vu_meter

vu_meter:
	@$(CC) $(CFLAGS) src/vu_meter_db.c -o vu_meter $(LDFLAGS)

clean:
	@rm -rf ./vu_meter

.PHONY: clean
