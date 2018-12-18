list_size(List, X):-
    find_list_size(List, 0, X).

find_list_size([_|Tail], Count, X):-
    Count2 is Count +1,
    find_list_size(Tail, Count2 , X).

find_list_size([], Count, Count).
