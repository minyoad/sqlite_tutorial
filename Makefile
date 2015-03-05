LDFLAGS=-lsqlite3

all: create delete insert select update

create:create.c
	gcc -o $@ $^ $(LDFLAGS)
delete:delete.c
	gcc -o $@ $^ $(LDFLAGS)
insert:insert.c
	gcc -o $@ $^ $(LDFLAGS)
select:select.c
	gcc -o $@ $^ $(LDFLAGS)
update:update.c
	gcc -o $@ $^ $(LDFLAGS)
clean:
	rm -f create delete insert select update test.db
