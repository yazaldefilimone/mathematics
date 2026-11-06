.POSIX:
.PHONY: all test run clean

all: test

test:
	@./run all

run:
	@./run $(f)

clean:
	@rm -rf .lake .build
