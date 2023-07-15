clear all;
clc;
A = [-8.3164 0.0358; -0.7814 -4.0012];
B = [0; 2];
C = [1 0; 0 1];
D = [0; 0];

% Tạo LMI và khai báo biến
setlmis([]);
% Khai báo ma trận W kích thước 2x1
W = lmivar(1, [2 1]);
% Khai báo ma trận H kích thước 1x2
H = lmivar(2, [1 2]);

% Điều kiện LMI1: W > 0
lmiterm([-1 1 1 W], 1, 1);
lmiterm([1 1 1 0], 0);

% Điều kiện LMI2: W*A' + A*W - H'*B' - B*H < 0
lmiterm([2 1 1 W], 1, A', 's');
lmiterm([2 1 1 W], A, 1, 's');
lmiterm([2 1 1 -H], -1, B', 's');
lmiterm([2 1 1 H], -B, 1, 's');

% Giải phương trình LMI
lmisys = getlmis;
[tmin, Xfeas] = feasp(lmisys);
W = dec2mat(lmisys, Xfeas, W);
H = dec2mat(lmisys, Xfeas, H);

% Kiểm tra giá trị riêng của ma trận W
eig(W)

% Tính ma trận K
K = H * inv(W)
