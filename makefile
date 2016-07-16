CC      = g++
CFLAGS  = -Wall -Iinclude
LDFLAGS = -lm -lGLU -lSOIL -lglut -lGL -L/usr/lib64 -lstdc++

ODIR = bin
SDIR = src
INC = -Iinclude
BIN = my_landing_on_mars

_OBJS=GDV3.o Circle.o Cone.o Cube.o Ring.o RingSide.o RingTop.o Rocket.o
OBJS=$(patsubst %,$(ODIR)/%,$(_OBJS))

$(BIN): $(OBJS)
	$(CC) $(CFLAGS) -o $(BIN) $(OBJS) $(LDFLAGS)

$(ODIR)/%.o: $(SDIR)/%.cpp 
	$(CC) -c $(INC) -o $@ $< $(CFLAGS)
	
	
clean:
	rm -rf bin/*.o $(BIN)