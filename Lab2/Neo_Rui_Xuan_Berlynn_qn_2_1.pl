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

/* male according to order of birth then female according to order of birth */
old_succession_rule(X, Y) :- male(X), male(Y), isOlder(X, Y);
                             male(X),female(Y);
                             female(X),female(Y),isOlder(X,Y).

old_insert(A, [B|C], [B|D]) :- (old_succession_rule(B, A)),!,old_insert(A, C, D).
old_insert(A, C, [A|C]).
old_order_sort([A|B], Sorted_List) :- old_order_sort(B, Partial_order),
                                      old_insert(A, Partial_order, Sorted_List).
old_order_sort([], []).

old_line_of_succession(Queen, Successors) :- findall(Y, offspringOf(Y, Queen), OffspringList),
                                            old_order_sort(OffspringList, Successors).











