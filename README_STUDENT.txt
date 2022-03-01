      VANUTA George-Andrei 314CB
    
    Explicatii functii:
    
  -Pentru cele RGB: toate functiile RGB au acelasi model, singurul lucru diferit
fiind functia apelata pentru fiecare culoare. Mai intai, extrag canalele de culoare
( 1 - rosu, 2 - verde, 3 - albastru), aplic functia respectiva pentru fiecare, apoi
output-ul va fi concatenarea celor 3 ( cat( 3, R_rez, V_rez, A_rez)).

  -Pentru surrounding_points: initial, punctele vor fi cele mai mici valori
intregi mai mici decat x, y ( x1, y1) si incrementarea acestora ( x2, y2).
Daca punctul se afla la margine, atunci valorile sunt decrementate.

  -Pentru nearest-neighbour:
  
  *nn_2x2 - aleg valoare pixelului dupa cadranul in care se afla
  
  -Pentru bilinear
  
  *bilinear_rotate - determin daca un punct se afla inafara imaginii, comparandu-i
coordonatele cu capetele( x cu [ 1, n], y cu [ 1, m]).

  -Pentru bicubic
  
  *bicubic_coef - pentru a face codul mai lizibil, matricea cu valoriile functiei
si a derivatelor este o concatenare de alte 4 matrici
( AUXfin = cat( 2, cat( 2, AUXf, AUXfy)', cat( 2, AUXfx, AUXfxy)')').

  --FEEDBACK:
  
  -cea mai interesanta tema de pana acum( comparand-o cu cele de la pc, sd, uso);
  -foarte bine explicat ce trebuie facut( in pdf, in scheletul de cod);
  -pare folositoare pentru viitor.
  
  