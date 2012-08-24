:-  module(factorization, [factor/2]).
:- use_module(library(clpfd)).

primes_multiply_to(Numbers, 1) :-
	Numbers=[].

primes_multiply_to(Numbers, Product) :-
	Numbers = [First|Rest],
	First * Quotient #= Product,
	prime(First),
	primes_multiply_to(Rest, Quotient).

factor(Numbers, Product) :-
	primes_multiply_to(Numbers, Product),
	sorted(Numbers).

sorted(Numbers) :-
	msort(Numbers, Numbers).

prime(Number) :-
	Dec + 1 #= Number,
	prime(Number, Dec).

prime(_, 1) :-
	true.

prime(Number, Divisor) :-
  Number mod Divisor #\= 0,
	Dec + 1 #= Divisor,
	prime(Number, Dec).
