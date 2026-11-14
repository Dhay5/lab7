/* Task 1: Delete every occurrence of an element */

deleteElement(_, [], []).

deleteElement(X, [X|T], R) :-
    deleteElement(X, T, R).

deleteElement(X, [H|T], [H|R]) :-
    X \= H,
    deleteElement(X, T, R).


/* Task 2: Add an element at the end of a list */

add_at_the_end(X, [], [X]).

add_at_the_end(X, [H|T], [H|R]) :-
    add_at_the_end(X, T, R).
