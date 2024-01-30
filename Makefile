.DEFAULT_GOAL := build
.PHONY: clean build

clean:
	@rm -rf .build/*-apple-macosx

build:
	@swift build -c release
