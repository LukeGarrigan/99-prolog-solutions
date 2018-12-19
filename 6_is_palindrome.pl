is_palindrome(List):-
    reverse(List, List).

reverse(List, X):-
	reverse(List, [], X).

reverse([Head|Tail], Other, X):-
    reverse(Tail, [Head|Other], X).
reverse([], X, X).

