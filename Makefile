CFLAGS=-DSUPPORT_LUA_5_2
LUA_HEADER=-I/home/work/lua/include
LUA_LIB=-L/home/work/lua/lib -llua -lm -ldl -Wl,-E

all:
	gcc -o server server.c -lpthread -O2 -g $(CFLAGS) $(LUA_LIB) $(LUA_HEADER)
	gcc -o test_long_conn test_long_conn.c -O2 $(CFLAGS) $(LUA_LIB) $(LUA_HEADER)
	gcc -o test_short_conn test_short_conn.c -O2 $(CFLAGS) $(LUA_LIB) $(LUA_HEADER)

clean:
	rm -f server test_long_conn test_short_conn
