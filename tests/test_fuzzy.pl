:- module(test_fuzzy, [test_fuzzy/0], [assertions]).

:- use_module(library(streams)).
:- use_module(.(test), [test/0]).

% TODO: be careful when loading CLP{Q}, CLP{R} (one may interact with the other)

:- test test_fuzzy/0.

test_fuzzy :-
	display('testing'), nl,
	test.
