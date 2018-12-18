find_element_at([_|Tail], Count, X):-
    Count2 is Count -1,
    find_element_at(Tail, Count2, X).

find_element_at([X|_], 0, X).
