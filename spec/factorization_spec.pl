:- module(factorization_spec, []).
:- use_module(src/factorization).

:- begin_tests(factorization).

test(1) :-
	assertion(factor([], 1)).

test(2) :-
	assertion(factor([2], 2)).

test(3) :-
	assertion(factor([3], 3)).

test(4) :-
	assertion(factor([2,2], 4)).

test(only_ascending) :-
	assertion(\+factor([3,2], 6)).

test(no_composites_allowed) :-
	assertion(\+factor([9], 9)).

test(gets_the_answer) :-
	factor(Factors, 420), !,
	assertion(Factors = [2,2,3,5,7]).

:- end_tests(factorization).
