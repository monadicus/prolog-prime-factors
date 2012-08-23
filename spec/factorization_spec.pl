:- module(factorization_spec, []).
:- use_module(src/factorization).

:- begin_tests(factorization).

test(1) :-
	assertion(factorization:factor([],1)).

test(2) :-
	assertion(factorization:factor([2],2)).

test(3) :-
	assertion(factorization:factor([3],3)).

test(4) :-
	assertion(factorization:factor([2, 2], 4)).
test(5) :-
	assertion(factorization:factor([5], 5)).
test(6) :-
	assertion(factorization:factor([2, 3], 6)).

:- end_tests(factorization).
