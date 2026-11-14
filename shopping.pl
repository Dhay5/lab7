 :- dynamic basket/1.
% Initial basket
basket([apple, juice, chips, chocolate, pizza]).

display_list([]).
display_list([H|T]) :-
    write(H), nl,
    display_list(T).

menu :-
    write('d - Display Items'), nl,
    write('a - Add Item'), nl,
    write('e - Exit'), nl,
    read(Choice),
    process(Choice).

process(d) :-
    basket(List),
    display_list(List),
    menu.

process(a) :-
    basket(List),
    write('Enter item: '),
    read(Item),
    append(List, [Item], NewList),
    retractall(basket(_)),
    assert(basket(NewList)),
    menu.

process(e) :-
write('Goodbye').

process(_) :-
 write('Invalid choice'), nl,
 menu.

start :-
    menu.
