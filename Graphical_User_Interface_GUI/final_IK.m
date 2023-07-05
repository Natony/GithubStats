syms t1 t2 t3 t4 l1 l2 l3 l4 d1
syms r11 r12 r13 r21 r22 r23 r31 r32 r33 x y z
A1=[cos(t1)  0      -sin(t1)                 l1*cos(t1)     ;
    sin(t1)   0     cos(t1)          l1*sin(t1)          ;
    0  -1 0  d1  ;
    0 0 0 1];
A2=[cos(t2)    -sin(t2)          0       l2*cos(t2);
    sin(t2)       cos(t2)      0     l2*sin(t2) ;
    0 0 1 0 ;
    0 0 0 1];
A3=[cos(t3)  -sin(t3)      0             l3*cos(t3);
    sin(t3)   cos(t3)     0          l3*sin(t3);
    0  0 1  0  ;
    0 0 0 1];
A4=[cos(t4)  -sin(t4)      0         l4*cos(t4);
    sin(t4)   cos(t4)     0          l4*sin(t4);
    0  0 1  0;
    0 0 0 1];
FK = [r11 r12 r13 x;
      r21 r22 r23 y;
      r31 r32 r33 z;
       0   0   0  1];
A10 = inv(A1);
T = A1*A2*A3*A4;
A10FK = A10*FK;
A10T = A10*T;
l1 = 150;
l2 = 350;
l3 = 362.5;
l4 = 230;
d1 = 160;
x =-108.9664;
y = 171.7036;
z = 1023.67;
t1 = atan2d(y,x)
nx = x*cosd(t1) + y*sind(t1) -l4 - l1;
ny =  d1 - z;
c3 = (nx^2 + ny^2 - l3^2 - l2^2)/(2*l2*l3);
s3 = real(double(sqrt(1 - c3^2)));
t3 = atan2d(s3, c3)
c2 = (nx*(l3*c3 + l2) + l3*s3*ny)/( (l3*c3 + l2)^2 +(l3*s3)^2);
s2 = sqrt(1 - c2^2);
t2 = atan2d(s2, c2)
t4 = -t2 - t3 

