male(princeCharles).
male(princeAndrew).
male(princeEdward).
female(princessAnn).

offspringOf(princeCharles, queenElizabeth).
offspringOf(princessAnn, queenElizabeth).
offspringOf(princeAndrew, queenElizabeth).
offspringOf(princeEdward, queenElizabeth).

olderThan(princeCharles, princessAnn).
olderThan(princessAnn, princeAndrew).
olderThan(princeAndrew, princeEdward).

isOlder(X, Y) :- olderThan(X, Y);
                (olderThan(X, Z),isOlder(Z, Y)).

/* order of birth irrespective of gender*/
new_succession_rule(X, Y) :- male(X),male(Y),isOlder(X, Y);
                        male(X),female(Y),isOlder(X, Y);
                        female(X),male(Y),isOlder(X, Y);
                        female(X),female(Y),isOlder(X, Y).

new_insert(A, [B|C], [B|D]) :- (new_succession_rule(B, A)), !, new_insert(A, C, D).
new_insert(A,C,[A|C]).

new_order_sort([A|B], Sorted_List) :- new_order_sort(B, Partial_order),
                                      new_insert(A, Partial_order, Sorted_List).
new_order_sort([], []).

new_line_of_succession(Queen, Successors) :- findall(Y, offspringOf(Y, Queen), OffspringList),
                                             new_order_sort(OffspringList, Successors).

