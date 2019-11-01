all: include.benchmark assert.benchmark test.benchmark

%.benchmark: clean
	@echo -n "$*:doctest "
	@time -f%e $(CXX) $(CXXFLAGS) -I doctest/include doctest/$*.cpp

	@echo -n "$*:ut "
	@time -f%e $(CXX) $(CXXFLAGS) -I ut/include ut/$*.cpp

clean:
	@rm -f *.o *.out
