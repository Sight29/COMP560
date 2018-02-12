% family Tree Project
% by Satbir Dhaliwal


:- discontiguous male/1, female/1, parent/2.
male(chanan).
male(Joe).
male(jesse).
male(harry).
male(jag).
male(harry).
male(jag).
male(sam).
male(victor).
male(dev).
male(satbir).
male(param).
male(sagar).

female(naranjan).
female(mary).
female(balwinder).
female(sukhi).
female(balvinder).
female(sati).
female(tara).
female(jas).
female(raj).
female(pum).
female(prabh).
female(simi).

% parent(parent, child).
parent(chanan, joe).
parent(chanan, jesse).
parent(chanan, harry).
parent(chanan, jag).
parent(chanan, sam).
parent(naranjan, joe).
parent(naranjan, jesse).
parent(naranjan, harry).
parent(naranjan, jag).
parent(naranjan, sam).
parent(joe, victor).
parent(joe, tara).
parent(mary, victor).
parent(mary, tara).
parent(jesse, jas).
parent(jesse, raj).
parent(jesse, pum).
parent(balwinder, jas).
parent(balwinder, raj).
parent(balwinder, pum).
parent(harry, jas).
parent(harry, raj).
parent(harry, pum).
parent(sukhi, jas).
parent(sukhi, raj).
parent(sukhi, pum).
parent(jag, satbir).
parent(jag, prabh).
parent(balvinder, satbir).
parent(blavinder, prabh).
parent(sam, simi).
parent(sam, param).
parent(sam, sagar).
parent(sati, simi).
parent(sati, param).
parent(sati, sagar).

% married(A,B) - A is marries to B
married(Chanan, naranjan).
married(joe, mary).
married(jesse, balwinder).
married(harry, sukhi).
married(jag, balvinder).
married(sam, sati).

% rules
% Dad is the father of child if he is male and is the child's parent
father(child, Dad) :- male(Dad), parent(child, Dad).

% Mom is the mother of the child if she is female and the child's parent
mother(child, Mom) :- female(Mom), parent(child, Mom).


% Sister is the sister of sibling if she is female and has the same parents as the siblings
sister(Sibling, Sis) :- female(Sis), father(sibling, father), father(Sis, father), Sis /= sibling,
				mother(sibling, mother), mother(Sis, mother).


cousin(X,Y) :- uncle(Unc , X),father(Unc,Y).


% Auntie is the aunt of the kid if she is female and marries to the kid's uncle %
aunt(Kid, Auntie) :- female(Auntie), parent(Kid, person), brother(person, brother), married(Auntie, brother).


% Unclebuck is the uncle of the kid if he is male and a brother of the kid's parent
uncle(Kid, unclebuck) :- male(unclebuck), parent(Kid, person), brother(parent, unlcebuck).

%Grandmother is the grandmother of grandchild if she is female and the parent of the grandchild's parent
grandmother(GrandChild, Grandmother) :- female(Grandmother), parent(GrandChild, parent), parent(parent, Grandmother).

% Grandfather is the grandfather of the grandchild if he is male and the parent of the child's parent
grandfather(Grandchild, grandfather) :- male(Grandfather), parent(Grandchild, parent), parent(parent, Grandfather).











