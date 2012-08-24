:-  module(factorization, [factor/2]).
:-  use_module(library(clpfd)).

factor([], 1) :-
	true.

factor(Factors, Product) :-
	[First|Rest] = Factors,
	First * Quotient #= Product,
	prime(First),
	factor(Rest, Quotient),
	msort(Factors, Factors).

prime(Number) :-
	Decremented #= Number - 1,
	has_no_divisors_below(Number, Decremented).

has_no_divisors_below(_, 1) :-
	true.

has_no_divisors_below(Number, Divisor) :-
	Remainder #= Number mod Divisor,
	Remainder #\= 0,
	Decremented #= Divisor - 1,
	has_no_divisors_below(Number, Decremented).
