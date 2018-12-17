last_element([_|Tail], X):-
    last_element(Tail, X).
last_element([Head], Head).
