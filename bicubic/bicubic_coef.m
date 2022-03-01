function A = bicubic_coef(f, Ix, Iy, Ixy, x1, y1, x2, y2)
    % =========================================================================
    % Calculeaza coeficientii de interpolare bicubica pentru 4 puncte alaturate
    % =========================================================================

    % TODO: calculeaza matricile intermediare
    AUX1 = [ 1 0 0 0; 0 0 1 0; -3 3 -2 -1; 2 -2 1 1];
    AUX2 = [ 1 0 -3 2; 0 0 3 -2; 0 1 -2 1; 0 0 -1 1];
    AUXf = [ f( y1, x1), f( y2, x1); f( y1, x2), f( y2, x2)];
    AUXfx = [ Ix( y1, x1), Ix( y2, x1); Ix( y1, x2), Ix( y2, x2)];
    AUXfy = [ Iy( y1, x1), Iy( y2, x1); Iy( y1, x2), Iy( y2, x2)];
    AUXfxy = [ Ixy( y1, x1), Ixy( y2, x1); Ixy( y1, x2), Ixy( y2, x2)];
    AUXfin = cat( 2, cat( 2, AUXf, AUXfy)', cat( 2, AUXfx, AUXfxy)')';
    
    % TODO: converteste matricile intermediare la double
    AUX1 = double( AUX1);
    AUX2 = double( AUX2);
    AUXfin = double( AUXfin);
    
    % TODO: calculeaza matricea finala
    A = AUX1 * AUXfin * AUX2;
    
endfunction