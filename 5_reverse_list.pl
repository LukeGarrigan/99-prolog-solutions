reverse_list([Head|Tail], Other, X):-
    reverse_list(Tail, [Head|Other], X).

reverse_list([], Other, Other).

