/* Subway Sandwich Interactor */

:- style_check(-singleton).

:- dynamic meal_type/1, bread/1, meat/1, cheese/1, vegetables/1, sauce/1, healthy_sauce/1, top_up/1, veggie_top_up/1, vegan_top_up/1, sides/1, cookie_flav/1, chips_type/1, drinks/1, healthy_drinks/1.


/* Definitions */
meal_type([veggie, healthy, vegan, regular, salad, veggie_value, healthy_value, vegan_value, regular_value, salad_value]).
bread([italian_wheat, hearty_italian, honey_oat, parmesan_oregano, multigrain, flatbread]).
meat([turkey, beef, chicken, salami, pepperoni, meatballs, ham, tuna, none]).
cheese([processed_cheddar, monterey_cheddar, none]).
vegetables([cucumbers, green_bell_peppers, lettuce, red_onions, tomatoes, black_olives, jalapenos, pickles, none]).
sauce([chipotle_southwest, ranch, bbq, chilli_sauce, tomato_sauce, mayonnaise, none]).
healthy_sauce([chilli_sauce, tomato_sauce, none]).
top_up([avocado, more_cheese, more_meat, none]).
veggie_top_up([avocado, more_cheese, none]).
vegan_top_up([avocado, none]).
sides([cookie, chips]).
cookie_flav([chocolate_chip, double_chocolate_chip, peanut_butter, white_chip_macademia, oatmeal_raisin, raspberry_cheesecake]).
chips_type([lays_original, lays_bbq, lays_sourcream, ruffles_original]).
drinks([coke, sprite, green_tea, orange_juice]).
healthy_drinks([green_tea, orange_juice]).


/* Display all possible choices */
show_all_meal_type(meal_type) :- meal_type(L), write("Meal types: \n"), list_items(L).
show_all_bread(bread) :- bread(L), write("Bread: \n"), list_items(L).
show_all_meat(meat) :- meat(L), write("Meat: \n"), list_items(L),
                       write("* More than one meat can be chosen.\n").
show_all_cheese(cheese) :- cheese(L), write("Cheese: \n"), list_items(L).
show_all_vegetables(vegetables) :- vegetables(L), write("Vegetables: \n"), list_items(L),
                                   write("* More than one vegetable can be chosen.\n").
show_all_sauce(sauce) :- sauce(L), write("Sauces: \n"), list_items(L).
show_all_healthy_sauce(healthy_sauce) :- healthy_sauce(L), write("Sauces: \n"), list_items(L).
show_all_top_up(top_up) :- top_up(L), write("Top-ups: \n"), list_items(L),
                           write("* More than one top-up can be chosen.\n").
show_all_veggie_top_up(veggie_top_up) :- veggie_top_up(L), write("Top-ups: \n"), list_items(L),
                                          write("* More than one top-up can be chosen.\n").
show_all_vegan_top_up(vegan_top_up) :- vegan_top_up(L), write("Top-ups: \n"), list_items(L).
show_all_sides(sides) :- sides(L), write("Sides: \n"), list_items(L).
show_all_cookie_flav(cookie_flav) :- cookie_flav(L), write("Cookie Flavours: \n"), list_items(L).
show_all_chips_type(chips_type) :- chips_type(L), write("Chips: \n"), list_items(L).
show_all_drinks(drinks) :- drinks(L), write("Drinks: \n"), list_items(L).
show_all_healthy_drinks(healthy_drinks) :- healthy_drinks(L), write("Drinks: \n"), list_items(L).

list_items(X) :- X=[A|B], write("- "), write(A), nl, list_items(B).
list_items([]).


/* Check if input match words in definition */
check(X, meal_type) :- meal_type(Y), member(X, Y).
check(X, bread) :- bread(Y), member(X, Y).
check(X, meat) :- meat(Y), member(X, Y).
check(X, cheese) :- cheese(Y), member(X, Y).
check(X, vegetables) :- vegetables(Y), member(X, Y).
check(X, sauce) :- sauce(Y), member(X, Y).
check(X, healthy_sauce) :- healthy_sauce(Y), member(X, Y).
check(X, top_up) :- top_up(Y), member(X, Y).
check(X, veggie_top_up) :- veggie_top_up(Y), member(X, Y).
check(X, vegan_top_up) :- vegan_top_up(Y), member(X, Y).
check(X, sides) :- sides(Y), member(X, Y).
check(X, cookie_flav) :- cookie_flav(Y), member(X, Y).
check(X, chips_type) :- chips_type(Y), member(X, Y).
check(X, drinks) :- drinks(Y), member(X, Y).
check(X, healthy_drinks) :- healthy_drinks(Y), member(X, Y).


/* Question for each category */
ask_meal_type :- write("*************************************\n"),
                 write("What type of meal would you like?\n"),
                 show_all_meal_type(meal_type),
                 read_input_meal_type.
ask_bread :- write("*************************************\n"),
             write("What bread would you like?\n"),
             show_all_bread(bread),
             read_input_bread.
ask_meat :- write("*************************************\n"),
            write("What meat would you like?\n"),
            show_all_meat(meat),
            read_input_meat.
ask_cheese :- write("*************************************\n"),
              write("What cheese would you like?\n"),
              show_all_cheese(cheese),
              read_input_cheese.
ask_vegetables :- write("*************************************\n"),
                  write("What vegetables would you like?\n"),
                  show_all_vegetables(vegetables),
                  read_input_vegetables.
ask_sauce :- write("*************************************\n"),
             write("What sauce would you like?\n"),
             show_all_sauce(sauce),
             read_input_sauce.
ask_healthy_sauce :- write("*************************************\n"),
                     write("What sauce would you like?\n"),
                     show_all_healthy_sauce(healthy_sauce),
                     read_input_healthy_sauce.
ask_top_up :- write("*************************************\n"),
              write("What top-ups would you like?\n"),
              show_all_top_up(top_up),
              read_input_top_up.
ask_veggie_top_up :- write("*************************************\n"),
              write("What top-ups would you like?\n"),
              show_all_veggie_top_up(veggie_top_up),
              read_input_veggie_top_up.
ask_vegan_top_up :- write("*************************************\n"),
              write("What top-ups would you like?\n"),
              show_all_vegan_top_up(vegan_top_up),
              read_input_vegan_top_up.
ask_sides :- write("*************************************\n"),
             write("What sides would you like?\n"),
             show_all_sides(sides),
             read_input_sides.
ask_cookie_flav :- write("*************************************\n"),
                   write("What cookie flavour would you like?\n"),
                   show_all_cookie_flav(cookie_flav),
                   read_input_cookie_flav.
ask_chips_type :- write("*************************************\n"),
                  write("What chips would you like?\n"),
                  show_all_chips_type(chips_type),
                  read_input_chips_type.
ask_drinks :- write("*************************************\n"),
              write("What drinks would you like?\n"),
              show_all_drinks(drinks),
              read_input_drinks.
ask_healthy_drinks :- write("*************************************\n"),
                      write("What drinks would you like?\n"),
                      show_all_healthy_drinks(healthy_drinks),
                      read_input_healthy_drinks.

get_sides :- sides(Sides),
             ((Sides == chips) -> sides_chips;
              (Sides == cookie) -> sides_cookie).


/* Read input from each question */
read_input_meal_type :- read(X),
                        check(X, meal_type) -> assertz(meal_type(X));
                        write("Invalid input. Please try again.\n"), read_input_meal_type.
read_input_bread :- read(X),
                    check(X, bread) -> assertz(bread(X));
                    write("Invalid input. Please try again.\n"), read_input_bread.
read_input_meat :- read(X),
                   (not(X == x) ->
                        (check(X, meat) -> write("Click x if you don't want to add anymore meat.\n"), assertz(meat(X));
                        write("Invalid input. Please try again.\n")), read_input_meat;
                        true).
read_input_cheese :- read(X),
                     check(X, cheese) -> assertz(cheese(X));
                     write("Invalid input. Please try again.\n"), read_input_cheese.
read_input_vegetables :- read(X),
                         (not(X == x) ->
                            (check(X, vegetables) -> write("Click x if you don't want to add anymore vegetables.\n"), assertz(vegetables(X));
                            write("Invalid input. Please try again.\n")), read_input_vegetables;
                            true).
read_input_sauce :- read(X),
                    check(X, sauce) -> assertz(sauce(X));
                    write("Invalid input. Please try again.\n"), read_input_sauce.
read_input_healthy_sauce :- read(X),
                            check(X, healthy_sauce) -> assertz(healthy_sauce(X));
                            write("Invalid input. Please try again.\n"), read_input_healthy_sauce.
read_input_top_up :- read(X),
                     (not(X == x) ->
                        (check(X, top_up) -> write("Click x if you don't want to add anymore top-ups.\n"), assertz(top_up(X));
                        write("Invalid input. Please try again.\n")), read_input_top_up;
                        true).
read_input_veggie_top_up :- read(X),
                            (not(X == x) ->
                            (check(X, veggie_top_up) -> write("Click x if you don't want to add anymore top-ups.\n"), assertz(veggie_top_up(X));
                            write("Invalid input. Please try again.\n")), read_input_veggie_top_up;
                            true).
read_input_vegan_top_up :- read(X),
                           check(X, vegan_top_up) -> assertz(vegan_top_up(X));
                           write("Invalid input. Please try again.\n"), read_input_vegan_top_up.
read_input_sides :- read(X),
                    check(X, sides) -> assertz(sides(X));
                    write("Invalid input. Please try again.\n"), read_input_sides.
read_input_cookie_flav :- read(X),
                          check(X, cookie_flav) -> assertz(cookie_flav(X));
                          write("Invalid input. Please try again.\n"), read_input_cookie_flav.
read_input_chips_type :- read(X),
                         check(X, chips_type) -> assertz(chips_type(X));
                         write("Invalid input. Please try again.\n"), read_input_chips_type.
read_input_drinks :- read(X),
                     check(X, drinks) -> assertz(drinks(X));
                     write("Invalid input. Please try again.\n"), read_input_drinks.
read_input_healthy_drinks :- read(X),
                             check(X, healthy_drinks) -> assertz(healthy_drinks(X));
                             write("Invalid input. Please try again.\n"), read_input_healthy_drinks.


/* Questions depending on meal type */
veggie_option :- ask_bread, ask_cheese, ask_vegetables, ask_sauce.
healthy_option :- ask_bread, ask_meat, ask_cheese, ask_vegetables, ask_healthy_sauce.
vegan_option :- ask_bread, ask_vegetables, ask_sauce.
regular_option :- ask_bread, ask_meat, ask_cheese, ask_vegetables, ask_sauce.
salad_option :- ask_meat, ask_cheese, ask_vegetables, ask_sauce.
sides_cookie :- ask_cookie_flav.
sides_chips :- ask_chips_type.


/* Clear dynamic predicates */
clear :- retractall(meal_type(_)),
         retractall(bread(_)),
         retractall(meat(_)),
         retractall(cheese(_)),
         retractall(vegetables(_)),
         retractall(sauce(_)),
         retractall(healthy_sauce(_)),
         retractall(top_up(_)),
         retractall(veggie_top_up(_)),
         retractall(vegan_top_up(_)),
         retractall(sides(_)),
         retractall(cookie_flav(_)),
         retractall(chips_type(_)),
         retractall(drinks(_)),
         retractall(healthy_drinks(_)).


/* Run the program */
order :- write(" ___ _   _ _____      _____    __\n"),
         write("/ __| | | | _ ) \\    / /_\\ \\  / /\n"),
         write("\\__ \\ |_| | _ \\\\ \\/\\/ / _ \\ \\/ / \n"),
         write("|___/\\___/|___/ \\_/\\_/_/ \\_\\__|  \n\n"),
         ask_meal_type,
         meal_type(Meal_Type),
         (   (Meal_Type == veggie) -> veggie_option,
                                      ask_veggie_top_up,
                                      ask_sides,
                                      get_sides,
                                      ask_drinks,
                                      display_veggie;
             (Meal_Type == healthy) -> healthy_option,
                                       ask_top_up,
                                       sides_cookie,
                                       ask_healthy_drinks,
                                       display_healthy;
             (Meal_Type == vegan) -> vegan_option,
                                     ask_vegan_top_up,
                                     ask_sides,
                                     get_sides,
                                     ask_drinks,
                                     display_vegan;
             (Meal_Type == regular) -> regular_option,
                                       ask_top_up,
                                       ask_sides,
                                       get_sides,
                                       ask_drinks,
                                       display_regular;
             (Meal_Type == salad) -> salad_option,
                                     ask_top_up,
                                     ask_sides,
                                     get_sides,
                                     ask_drinks,
                                     display_salad;
             (Meal_Type == veggie_value) -> veggie_option,
                                            ask_sides,
                                            get_sides,
                                            ask_drinks,
                                            display_veggie_value;
             (Meal_Type == healthy_value) -> healthy_option,
                                             sides_cookie,
                                             ask_healthy_drinks,
                                             display_healthy_value;
             (Meal_Type == vegan_value) -> vegan_option,
                                           ask_sides,
                                           get_sides,
                                           ask_drinks,
                                           display_vegan_value;
             (Meal_Type == regular_value) -> regular_option,
                                             ask_sides,
                                             get_sides,
                                             ask_drinks,
                                             display_regular_value;
             (Meal_Type == salad_value) -> salad_option,
                                           ask_sides,
                                           get_sides,
                                           ask_drinks,
                                           display_salad_value),
         write("*************************************\n"),
         write("See you again!"),
         clear.


/* Display user's order */
get_selected(MMeal_Type, MBread, MMeat, MCheese, MVegetables, MSauce, MHealthy_Sauce, MTop_Up, MVeggie_Top_Up, MVegan_Top_Up, MSides, MCookie_Flav, MChips_Type, MDrinks, MHealthy_Drinks):-
    findall(X, meal_type(X), MMeal_Type),
    findall(X, bread(X), MBread),
    findall(X, meat(X), MMeat),
    findall(X, cheese(X), MCheese),
    findall(X, vegetables(X), MVegetables),
    findall(X, sauce(X), MSauce),
    findall(X, healthy_sauce(X), MHealthy_Sauce),
    findall(X, top_up(X), MTop_Up),
    findall(X, veggie_top_up(X), MVeggie_Top_Up),
    findall(X, vegan_top_up(X), MVegan_Top_Up),
    findall(X, sides(X), MSides),
    findall(X, cookie_flav(X), MCookie_Flav),
    findall(X, chips_type(X), MChips_Type),
    findall(X, drinks(X), MDrinks),
    findall(X, healthy_drinks(X), MHealthy_Drinks).

/* Display for respective meal type */
display_veggie :- get_selected(MMeal_Type, MBread, MMeat, MCheese, MVegetables, MSauce, MHealthy_Sauce, MTop_Up, MVeggie_Top_Up, MVegan_Top_Up, MSides, MCookie_Flav, MChips_Type, MDrinks, MHealthy_Drinks),
    write("*************************************\n"),
    write("Your order is: \n"),
    append(_, [Meal_Type], MMeal_Type),
       write("Meal Type: ["), write(Meal_Type), write("]"), nl,
    append(_, [Bread], MBread),
       write("Bread: ["), write(Bread), write("]"), nl,
    append(_, [Cheese], MCheese),
       write("Cheese: ["), write(Cheese), write("]"), nl,
    subtract(MVegetables, [Vegetables], L),
       sort(L, SortL),
       write("Vegetables: "), write(SortL), nl,
    append(_, [Sauce], MSauce),
       write("Sauce: ["), write(Sauce), write("]"), nl,
    subtract(MVeggie_Top_Up, [Veggie_Top_Up], T),
       sort(T, SortT),
       write("Top-ups: "), write(SortT), nl,
    append(_, [Sides], MSides),
    ((Sides == cookie) -> append(_, [Cookie_Flav], MCookie_Flav),
       write("Cookie: ["), write(Cookie_Flav), write("]"), nl;
     (Sides == chips) -> append(_, [Chips_Type], MChips_Type),
       write("Chips: ["), write(Chips_Type), write("]"), nl),
    append(_, [Drinks], MDrinks),
    write("Drinks: ["), write(Drinks), write("]"), nl.

display_healthy :- get_selected(MMeal_Type, MBread, MMeat, MCheese, MVegetables, MSauce, MHealthy_Sauce, MTop_Up, MVeggie_Top_Up, MVegan_Top_Up, MSides, MCookie_Flav, MChips_Type, MDrinks, MHealthy_Drinks),
    write("*************************************\n"),
    write("Your order is: \n"),
    append(_, [Meal_Type], MMeal_Type),
       write("Meal Type: ["), write(Meal_Type), write("]"), nl,
    append(_, [Bread], MBread),
       write("Bread: ["), write(Bread), write("]"), nl,
    subtract(MMeat, [Meat], M),
       sort(M, SortM),
       write("Meat: "), write(SortM), nl,
    append(_, [Cheese], MCheese),
       write("Cheese: ["), write(Cheese), write("]"), nl,
    subtract(MVegetables, [Vegetables], L),
       sort(L, SortL),
       write("Vegetables: "), write(SortL), nl,
    append(_, [Healthy_Sauce], MHealthy_Sauce),
       write("Healthy Sauce: ["), write(Healthy_Sauce), write("]"), nl,
    subtract(MTop_Up, [Top_Up], T),
       sort(T, SortT),
       write("Top-ups: "), write(SortT), nl,
    append(_, [Cookie_Flav], MCookie_Flav),
       write("Cookie: ["), write(Cookie_Flav), write("]"), nl,
    append(_, [Healthy_Drinks], MHealthy_Drinks),
       write("Healthy Drinks: ["), write(Healthy_Drinks), write("]"), nl.

display_vegan :- get_selected(MMeal_Type, MBread, MMeat, MCheese, MVegetables, MSauce, MHealthy_Sauce, MTop_Up, MVeggie_Top_Up, MVegan_Top_Up, MSides, MCookie_Flav, MChips_Type, MDrinks, MHealthy_Drinks),
    write("*************************************\n"),
    write("Your order is: \n"),
    append(_, [Meal_Type], MMeal_Type),
       write("Meal Type: ["), write(Meal_Type), write("]"), nl,
    append(_, [Bread], MBread),
       write("Bread: ["), write(Bread), write("]"), nl,
    subtract(MVegetables, [Vegetables], L),
       sort(L, SortL),
       write("Vegetables: "), write(SortL), nl,
    append(_, [Sauce], MSauce),
       write("Sauce: ["), write(Sauce), write("]"), nl,
    append(_, [Vegan_Top_Up], MVegan_Top_Up),
       write("Top-ups: ["), write(Vegan_Top_Up), write("]"), nl,
    append(_, [Sides], MSides),
    ((Sides == cookie) -> append(_, [Cookie_Flav], MCookie_Flav),
       write("Cookie: ["), write(Cookie_Flav), write("]"), nl;
     (Sides == chips) -> append(_, [Chips_Type], MChips_Type),
       write("Chips: ["), write(Chips_Type), write("]"), nl),
    append(_, [Drinks], MDrinks),
       write("Drinks: ["), write(Drinks), write("]"), nl.

display_regular :- get_selected(MMeal_Type, MBread, MMeat, MCheese, MVegetables, MSauce, MHealthy_Sauce, MTop_Up, MVeggie_Top_Up, MVegan_Top_Up, MSides, MCookie_Flav, MChips_Type, MDrinks, MHealthy_Drinks),
    write("*************************************\n"),
    write("Your order is: \n"),
    append(_, [Meal_Type], MMeal_Type),
       write("Meal Type: ["), write(Meal_Type), write("]"), nl,
    append(_, [Bread], MBread),
       write("Bread: ["), write(Bread), write("]"), nl,
    subtract(MMeat, [Meat], M),
       sort(M, SortM),
       write("Meat: "), write(SortM), nl,
    append(_, [Cheese], MCheese),
       write("Cheese: ["), write(Cheese), write("]"), nl,
    subtract(MVegetables, [Vegetables], L),
       sort(L, SortL),
       write("Vegetables: "), write(SortL), nl,
    append(_, [Sauce], MSauce),
       write("Sauce: ["), write(Sauce), write("]"), nl,
    subtract(MTop_Up, [Top_Up], T),
       sort(T, SortT),
       write("Top-ups: "), write(SortT), nl,
    append(_, [Sides], MSides),
    ((Sides == cookie) -> append(_, [Cookie_Flav], MCookie_Flav),
       write("Cookie: ["), write(Cookie_Flav), write("]"), nl;
     (Sides == chips) -> append(_, [Chips_Type], MChips_Type),
       write("Chips: ["), write(Chips_Type), write("]"), nl),
    append(_, [Drinks], MDrinks),
       write("Drinks: ["), write(Drinks), write("]"), nl.

display_salad :- get_selected(MMeal_Type, MBread, MMeat, MCheese, MVegetables, MSauce, MHealthy_Sauce, MTop_Up, MVeggie_Top_Up, MVegan_Top_Up, MSides, MCookie_Flav, MChips_Type, MDrinks, MHealthy_Drinks),
    write("*************************************\n"),
    write("Your order is: \n"),
    append(_, [Meal_Type], MMeal_Type),
       write("Meal Type: ["), write(Meal_Type), write("]"), nl,
    subtract(MMeat, [Meat], M),
       sort(M, SortM),
       write("Meat: "), write(SortM), nl,
    append(_, [Cheese], MCheese),
       write("Cheese: ["), write(Cheese), write("]"), nl,
    subtract(MVegetables, [Vegetables], L),
       sort(L, SortL),
       write("Vegetables: "), write(SortL), nl,
    append(_, [Sauce], MSauce),
       write("Sauce: ["), write(Sauce), write("]"), nl,
    subtract(MTop_Up, [Top_Up], T),
       sort(T, SortT),
       write("Top-ups: "), write(SortT), nl,
    append(_, [Sides], MSides),
    ((Sides == cookie) -> append(_, [Cookie_Flav], MCookie_Flav),
       write("Cookie: ["), write(Cookie_Flav), write("]"), nl;
     (Sides == chips) -> append(_, [Chips_Type], MChips_Type),
       write("Chips: ["), write(Chips_Type), write("]"), nl),
    append(_, [Drinks], MDrinks),
       write("Drinks: ["), write(Drinks), write("]"), nl.

display_veggie_value :- get_selected(MMeal_Type, MBread, MMeat, MCheese, MVegetables, MSauce, MHealthy_Sauce, MTop_Up, MVeggie_Top_Up, MVegan_Top_Up, MSides, MCookie_Flav, MChips_Type, MDrinks, MHealthy_Drinks),
    write("*************************************\n"),
    write("Your order is: \n"),
    append(_, [Meal_Type], MMeal_Type),
       write("Meal Type: ["), write(Meal_Type), write("]"), nl,
    append(_, [Bread], MBread),
       write("Bread: ["), write(Bread), write("]"), nl,
    append(_, [Cheese], MCheese),
       write("Cheese: ["), write(Cheese), write("]"), nl,
    subtract(MVegetables, [Vegetables], L),
       sort(L, SortL),
       write("Vegetables: "), write(SortL), nl,
    append(_, [Sauce], MSauce),
       write("Sauce: ["), write(Sauce), write("]"), nl,
    append(_, [Sides], MSides),
    ((Sides == cookie) -> append(_, [Cookie_Flav], MCookie_Flav),
       write("Cookie: ["), write(Cookie_Flav), write("]"), nl;
     (Sides == chips) -> append(_, [Chips_Type], MChips_Type),
       write("Chips: ["), write(Chips_Type), write("]"), nl),
    append(_, [Drinks], MDrinks),
       write("Drinks: ["), write(Drinks), write("]"), nl.

display_healthy_value :- get_selected(MMeal_Type, MBread, MMeat, MCheese, MVegetables, MSauce, MHealthy_Sauce, MTop_Up, MVeggie_Top_Up, MVegan_Top_Up, MSides, MCookie_Flav, MChips_Type, MDrinks, MHealthy_Drinks),
    write("*************************************\n"),
    write("Your order is: \n"),
    append(_, [Meal_Type], MMeal_Type),
       write("Meal Type: ["), write(Meal_Type), write("]"), nl,
    append(_, [Bread], MBread),
       write("Bread: ["), write(Bread), write("]"), nl,
    subtract(MMeat, [Meat], M),
       sort(M, SortM),
       write("Meat: "), write(SortM), nl,
    append(_, [Cheese], MCheese),
       write("Cheese: ["), write(Cheese), write("]"), nl,
    subtract(MVegetables, [Vegetables], L),
       sort(L, SortL),
       write("Vegetables: "), write(SortL), nl,
    append(_, [Healthy_Sauce], MHealthy_Sauce),
       write("Healthy Sauce: ["), write(Healthy_Sauce), write("]"), nl,
    append(_, [Cookie_Flav], MCookie_Flav),
       write("Cookie: ["), write(Cookie_Flav), write("]"), nl,
    append(_, [Healthy_Drinks], MHealthy_Drinks),
       write("Drinks: ["), write(Healthy_Drinks), write("]"), nl.

display_vegan_value :- get_selected(MMeal_Type, MBread, MMeat, MCheese, MVegetables, MSauce, MHealthy_Sauce, MTop_Up, MVeggie_Top_Up, MVegan_Top_Up, MSides, MCookie_Flav, MChips_Type, MDrinks, MHealthy_Drinks),
    write("*************************************\n"),
    write("Your order is: \n"),
    append(_, [Meal_Type], MMeal_Type),
       write("Meal Type: ["), write(Meal_Type), write("]"), nl,
    append(_, [Bread], MBread),
       write("Bread: ["), write(Bread), write("]"), nl,
    subtract(MVegetables, [Vegetables], L),
       sort(L, SortL),
       write("Vegetables: "), write(SortL), nl,
    append(_, [Sauce], MSauce),
       write("Sauce: ["), write(Sauce), write("]"), nl,
    append(_, [Sides], MSides),
    ((Sides == cookie) -> append(_, [Cookie_Flav], MCookie_Flav),
       write("Cookie: ["), write(Cookie_Flav), write("]"), nl;
     (Sides == chips) -> append(_, [Chips_Type], MChips_Type),
       write("Chips: ["), write(Chips_Type), write("]"), nl),
    append(_, [Drinks], MDrinks),
       write("Drinks: ["), write(Drinks), write("]"), nl.

display_regular_value :- get_selected(MMeal_Type, MBread, MMeat, MCheese, MVegetables, MSauce, MHealthy_Sauce, MTop_Up, MVeggie_Top_Up, MVegan_Top_Up, MSides, MCookie_Flav, MChips_Type, MDrinks, MHealthy_Drinks),
    write("*************************************\n"),
    write("Your order is: \n"),
    append(_, [Meal_Type], MMeal_Type),
       write("Meal Type: ["), write(Meal_Type), write("]"), nl,
    append(_, [Bread], MBread),
       write("Bread: ["), write(Bread), write("]"), nl,
    subtract(MMeat, [Meat], M),
       sort(M, SortM),
       write("Meat: "), write(SortM), nl,
    append(_, [Cheese], MCheese),
       write("Cheese: ["), write(Cheese), write("]"), nl,
    subtract(MVegetables, [Vegetables], L),
       sort(L, SortL),
       write("Vegetables: "), write(SortL), nl,
    append(_, [Sauce], MSauce),
       write("Sauce: ["), write(Sauce), write("]"), nl,
    append(_, [Sides], MSides),
    ((Sides == cookie) -> append(_, [Cookie_Flav], MCookie_Flav),
       write("Cookie: ["), write(Cookie_Flav), write("]"), nl;
     (Sides == chips) -> append(_, [Chips_Type], MChips_Type),
       write("Chips: ["), write(Chips_Type), write("]"), nl),
    append(_, [Drinks], MDrinks),
       write("Drinks: ["), write(Drinks), write("]"), nl.

display_salad_value :- get_selected(MMeal_Type, MBread, MMeat, MCheese, MVegetables, MSauce, MHealthy_Sauce, MTop_Up, MVeggie_Top_Up, MVegan_Top_Up, MSides, MCookie_Flav, MChips_Type, MDrinks, MHealthy_Drinks),
    write("*************************************\n"),
    write("Your order is: \n"),
    append(_, [Meal_Type], MMeal_Type),
       write("Meal Type: ["), write(Meal_Type), write("]"), nl,
    subtract(MMeat, [Meat], M),
       sort(M, SortM),
       write("Meat: "), write(SortM), nl,
    append(_, [Cheese], MCheese),
       write("Cheese: ["), write(Cheese), write("]"), nl,
    subtract(MVegetables, [Vegetables], L),
       sort(L, SortL),
       write("Vegetables: "), write(SortL), nl,
    append(_, [Sauce], MSauce),
       write("Sauce: ["), write(Sauce), write("]"), nl,
    append(_, [Sides], MSides),
    ((Sides == cookie) -> append(_, [Cookie_Flav], MCookie_Flav),
       write("Cookie: ["), write(Cookie_Flav), write("]"), nl;
     (Sides == chips) -> append(_, [Chips_Type], MChips_Type),
       write("Chips: ["), write(Chips_Type), write("]"), nl),
    append(_, [Drinks], MDrinks),
       write("Drinks: ["), write(Drinks), write("]"), nl.



