function out = bicubic_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img a.i. aceasta sa fie de dimensiune p x q.
    % Imaginea img este colorata.
    % Practic, apeleaza de 3 ori functia nn pe fiecare canal al imaginii.
    % =========================================================================

    % TODO: extrage canalul rosu al imaginii
    R = img( :, :, 1); 
    
    % TODO: extrage canalul verde al imaginii
    V = img( :, :, 2);
    
    % TODO: extrace canalul albastru al imaginii
    A = img( :, :, 3);

    % TODO: aplica functia nn pe cele 3 canale ale imaginii
    R_rez = bicubic_resize( R, p, q);
    V_rez = bicubic_resize( V, p, q);
    A_rez = bicubic_resize( A, p, q);
    
    % TODO: formeaza imaginea finala cu cele 3 canale de culori
    % Hint: functia cat
    out = cat( 3, R_rez, V_rez, A_rez);
    
endfunction