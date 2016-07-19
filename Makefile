SRCS = ./lib/super-json.js
TESTS = ./test/super-json.js

test:
	@./node_modules/.bin/jshint $(SRCS)
	@./node_modules/.bin/mocha -u tdd --require should $(TESTS) 

pack: test
	npm pack

.PHONY: pack test
