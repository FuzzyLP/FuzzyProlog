:- module(glasses,[
	many_glasses/2,
	few_glasses/2,
	not_many_glasses/2,
	not_few_glasses/2],[fuzzy]).


many_glasses :# fuzzy_predicate([(10,1),(8,1),(6,0),(0,0)]).

few_glasses :# fuzzy_predicate([(0,1),(2,1),(4,0),(10,0)]).

not_many_glasses :# fnot many_glasses/2.

not_few_glasses :# fnot few_glasses/2.
