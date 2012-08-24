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

test(no_composites_allowed) :-
	assertion(\+factorization:factor([9],9)).

test(ascending_order) :-
	assertion(\+factorization:factor([3,2],6)).

test(finds_answer) :-
	factorization:factor(Numbers, 6),
	Numbers = [2,3].

test(finds_hard_answer) :-
	factorization:factor(Numbers, 420),
	Numbers = [2,2,3,5,7].

test(30) :-
	assertion(factorization:factor([2, 3, 5], 30)).

:- end_tests(factorization).
