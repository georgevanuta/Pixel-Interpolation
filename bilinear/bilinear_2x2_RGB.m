function out = bilinear_2x2_RGB(img, STEP = 0.1)
    % =========================================================================
    % Aplica interpolare biliniara pe imaginea 2x2 img cu puncte intermediare
    % echidistante, cu precizarea ca img este o imagine colorata RGB.
    % f are valori cunoscute in punctele (1, 1), (1, 2), (2, 1) si (2, 2).
    % Practic, apeleaza bilinear_2x2_interpolation pe fiecare canal al imaginii
    % img si reconstruieste imaginea colorata la final
    % Parametrii:
    % - img = imaginea 2x2 RGB care doreste sa fie interpolata
    % - STEP = distanta dintre doua puncte succesive
    % =========================================================================

    % TODO: extrage canalul rosu al imaginii
    R = img( :, :, 1);
    
    % TODO: extrage canalul verde al imaginii
    V = img( :, :, 2);
    
    % TODO: extrace canalul albastru al imaginii
    A = img( :, :, 3);

    % TODO: aplica bilinear_2x2_interpolation pe fiecare dintre canale
    R_rez = bilinear_2x2( R, STEP);
    V_rez = bilinear_2x2( V, STEP);
    A_rez = bilinear_2x2( A, STEP);
    
    % TODO: combina rezultatul in imaginea finala
    out = cat( 3, R_rez, V_rez, A_rez);
    
endfunction
