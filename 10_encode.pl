pack(List, X):-
    pack(List, X, 1).

pack([], [], _).
pack([X], [[Count,X]], Count).

pack([Head, Head| Tail], [OtherTail |TailAgain], Count):-
    Count2 is Count +1,
    pack([Head|Tail], [OtherTail|TailAgain], Count2).

pack([Head|Tail], [[Count, Head]|OtherTail], Count):-
    Count2 is 1,
    pack(Tail, OtherTail, Count2).

