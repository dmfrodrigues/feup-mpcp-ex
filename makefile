all:
	make -C exam
	make -C tests
	make -C tp

test:
	make test -C exam
	make test -C tests
	make test -C tp

clean:
	make clean -C exam
	make clean -C tests
	make clean -C tp
