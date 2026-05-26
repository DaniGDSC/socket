CC      ?= gcc
CFLAGS  ?= -O2 -g -Wall -Wextra -Wno-unused-parameter -D_GNU_SOURCE
CFLAGS  += -pthread
LDFLAGS ?= -pthread
LIBS    ?=

COMMON_OBJS = protocol.o chunk.o net.o sha256.o

SRCS = protocol.c chunk.c net.c sha256.c tracker.c peer.c
ASMS = $(SRCS:.c=.s)

BINS = tracker peer

all: $(BINS)

asm: $(ASMS)

%.s: %.c common.h protocol.h chunk.h net.h sha256.h
	$(CC) $(CFLAGS) -S -fverbose-asm -o $@ $<

tracker: tracker.o $(COMMON_OBJS)
	$(CC) $(LDFLAGS) -o $@ $^ $(LIBS)

peer: peer.o $(COMMON_OBJS)
	$(CC) $(LDFLAGS) -o $@ $^ $(LIBS)

%.o: %.c common.h protocol.h chunk.h net.h sha256.h
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f *.o *.s $(BINS)
	rm -rf demo_run demo_run_resume

demo: all
	bash demo.sh

resume-demo: all
	bash resume_demo.sh

.PHONY: all asm clean demo resume-demo
