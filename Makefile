.PHONY: all
all: test_cpp test_c

.PHONY: test_cpp
test_cpp:
	g++ -Wall -Werror -std=c++17 glob_match_test.cpp glob_match.cpp && ./a.out
	rm -f a.out

.PHONY: test_c
test_c:
	gcc -Wall -Werror -std=c11 glob_match_test.c glob_match.c glob_match_caseless.c && ./a.out
	rm -f a.out
