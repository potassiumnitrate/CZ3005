company(sumsum).
company(appy).
competitor(sumsum,appy).
smartPhoneTech(galacticas3).
develop(sumsum,galacticas3).
boss(stevey).
steal(stevey,galacticas3,sumsum).

business(X) :- smartPhoneTech(X).
rival(X) :- competitor(X,appy);competitor(appy,X).
unethical(X) :- boss(X),smartPhoneTech(Y),rival(Z),company(Z),steal(X,Y,Z).
