last_but_one([_|Tail], X):-
    last_but_one(Tail, X).

last_but_one([Last,_], Last).
