RM=rm -f
MKDIR=mkdir -p
EMULATOR=qemu-aarch64

PROG=./04

SDIR=./src
ODIR=./obj

FILES=$(ODIR)/04.o \
      $(ODIR)/incsatV.o

CC=aarch64-linux-gnu-gcc
CFLAGS=-static

all: $(PROG)

$(PROG): $(FILES)
	$(CC) $(CFLAGS) $(FILES) -o $(PROG)

$(ODIR)/%.o: $(SDIR)/%.c | $(ODIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(ODIR)/%.o: $(SDIR)/%.s | $(ODIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(ODIR):
	$(MKDIR) $@

test: $(PROG)
	$(EMULATOR) $(PROG)

clean:
	$(RM) $(FILES)
	$(RM) $(PROG)
