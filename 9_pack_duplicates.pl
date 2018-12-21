pack([], []).
pack([X], [[X]]).

pack([Head, Head| Tail], [[Head|OtherTail] |TailAgain]):-
    pack([Head|Tail], [OtherTail|TailAgain]).

pack([Head|Tail], [[Head]|OtherTail]):-
    pack(Tail, OtherTail).

