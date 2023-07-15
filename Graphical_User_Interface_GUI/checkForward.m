function [rep] = checkForward(px, py, pz, t1, t2, t3, t4)
A1=[cosd(t1)  0      -sind(t1)                  150*cosd(t1)      ;sind(t1)   0     cosd(t1)          150*sind(t1)           ;0  -1 0  160  ;0 0 0 1];
A2=[cosd(t2)    -sind(t2)          0       350*cosd(t2);sind(t2)       cosd(t2)      0     350*sind(t2) ;0 0 1 0 ;0 0 0 1];
A3=[cosd(t3)  -sind(t3)      0             362.5*cosd(t3);sind(t3)   cosd(t3)     0          362.5*sind(t3) ;0  0 1  0  ;0 0 0 1];
A4=[cosd(t4)  -sind(t4)      0         230*cosd(t4);sind(t4)   cosd(t4)     0          230*sind(t4) ;0  0 1  0  ;0 0 0 1];
T= A1*A2*A3*A4;
    if round(px) == round(T(1, 4)) && round(py) == round(T(2, 4)) && round(pz) == round(T(3, 4))
        rep = 'D';
    else
        rep = 'S';
    end
end