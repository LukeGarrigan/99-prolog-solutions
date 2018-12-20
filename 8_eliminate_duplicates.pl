
eliminate_duplicates(X, Y):-
    eliminate_duplicates(X,Y,[]).

eliminate_duplicates([Head,Head|Tail], Rest, Output):-
    eliminate_duplicates([Head|Tail], Rest, Output).

eliminate_duplicates([Head|Tail], [Head|Rest], Output):-
    eliminate_duplicates(Tail, Rest, Output).

eliminate_duplicates([], Output, Output).

