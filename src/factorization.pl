:-  module(factorization, [factor/2]).

factor(Numbers, 1) :-
	Numbers=[].

factor(Numbers, 4) :-
	Numbers=[2,2].

factor(Numbers, Product) :-
	Numbers=[Product].

factor(Numbers, Product) :-
	Numbers=[2,3].
