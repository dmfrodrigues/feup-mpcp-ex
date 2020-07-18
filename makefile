all:
	make -C exam
	make -C tp

test:
	make test -C exam
	make test -C tp

clean:
	make clean -C exam
	make clean -C tp
