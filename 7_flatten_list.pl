my_flatten(A, B):-
    my_flatten(A, B, []).

my_flatten([], Output, Output):-!. 

my_flatten([Head|Tail], [Head|List], Output):-
    not(is_this_list(Head)),!,
    my_flatten(Tail, List, Output).

my_flatten([List|ListTail], X, Z):-
    my_flatten(List, X, Y),
    my_flatten(ListTail, Y, Z).
    

is_this_list(X) :-
        var(X), !,
        fail.
is_this_list([]).
is_this_list([_|T]) :-
        is_this_list(T).


