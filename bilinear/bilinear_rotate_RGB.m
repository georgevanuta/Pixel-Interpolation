function out = bilinear_rotate_RGB(img, rotation_angle)
    % =========================================================================
    % Aplica interpolare bilineara pentru a roti o imagine RGB cu un unghi dat.
    % =========================================================================
    
    % TODO: extrage canalul rosu al imaginii
    R = img( :, :, 1);
    
    % TODO: extrage canalul verde al imaginii
    V = img( :, :, 2);
    
    % TODO: extrace canalul albastru al imaginii
    A = img( :, :, 3);

    % TODO: aplică rotația pe fiecare canal al imaginii
    R_rez = bilinear_rotate( R, rotation_angle);
    V_rez = bilinear_rotate( V, rotation_angle);
    A_rez = bilinear_rotate( A, rotation_angle);
    
    % TODO: reconstruiește imaginea RGB finala (hint: cat)
    out = cat( 3, R_rez, V_rez, A_rez);
    
endfunction