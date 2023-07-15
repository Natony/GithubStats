% Simscape(TM) Multibody(TM) version: 7.5

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(11).translation = [0.0 0.0 0.0];
smiData.RigidTransform(11).angle = 0.0;
smiData.RigidTransform(11).axis = [0.0 0.0 0.0];
smiData.RigidTransform(11).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [27.500000000000803 -1.1102230246251565e-13 114.99999999999979];  % mm
smiData.RigidTransform(1).angle = 2.0943951023931913;  % rad
smiData.RigidTransform(1).axis = [-0.57735026918962451 -0.57735026918962451 0.57735026918962828];
smiData.RigidTransform(1).ID = "B[l4-1:-:Assem2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [-8.3145727172185815 -25.148154463673141 -97.275418978434516];  % mm
smiData.RigidTransform(2).angle = 2.3937648633400919;  % rad
smiData.RigidTransform(2).axis = [-0.65040127839493878 -0.39237272347151952 -0.65040127839493966];
smiData.RigidTransform(2).ID = "F[l4-1:-:Assem2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [-350.00000000000006 -20.000000000000018 0];  % mm
smiData.RigidTransform(3).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(3).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(3).ID = "B[Part3-1:-:l4-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [-28.000000000000057 -44.999999999999687 -246.00000000000114];  % mm
smiData.RigidTransform(4).angle = 2.0943951023931935;  % rad
smiData.RigidTransform(4).axis = [-0.57735026918962429 -0.57735026918962506 0.57735026918962784];
smiData.RigidTransform(4).ID = "F[Part3-1:-:l4-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [0 104.99999999999999 0];  % mm
smiData.RigidTransform(5).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(5).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(5).ID = "B[Part1-1:-:Part2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [0 19.999999999999972 0];  % mm
smiData.RigidTransform(6).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(6).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(6).ID = "F[Part1-1:-:Part2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [-150.00000000000006 159.99999999999994 0];  % mm
smiData.RigidTransform(7).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(7).axis = [1 0 0];
smiData.RigidTransform(7).ID = "B[Part2-1:-:Part3-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [-3.5704772471945034e-13 -20.000000000000508 6.2527760746888816e-13];  % mm
smiData.RigidTransform(8).angle = 2.0943951023931979;  % rad
smiData.RigidTransform(8).axis = [-0.57735026918962651 -0.57735026918962551 -0.57735026918962518];
smiData.RigidTransform(8).ID = "F[Part2-1:-:Part3-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [4.5096564937380235 -0.82143776896195786 0.7245810215642523];  % mm
smiData.RigidTransform(9).angle = 0;  % rad
smiData.RigidTransform(9).axis = [0 0 0];
smiData.RigidTransform(9).ID = "AssemblyGround[Assem2-1:endb^Assem2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [4.5096564937381345 -0.8214377689619301 -55.275418978435688];  % mm
smiData.RigidTransform(10).angle = 1.8409008754318152;  % rad
smiData.RigidTransform(10).axis = [-0.76075032479322913 -0.45894386548193261 0.45894386548193267];
smiData.RigidTransform(10).ID = "AssemblyGround[Assem2-1:enda-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [57.07566533988043 143.49197770803718 351.80069256509915];  % mm
smiData.RigidTransform(11).angle = 0;  % rad
smiData.RigidTransform(11).axis = [0 0 0];
smiData.RigidTransform(11).ID = "RootGround[Part1-1]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(6).mass = 0.0;
smiData.Solid(6).CoM = [0.0 0.0 0.0];
smiData.Solid(6).MoI = [0.0 0.0 0.0];
smiData.Solid(6).PoI = [0.0 0.0 0.0];
smiData.Solid(6).color = [0.0 0.0 0.0];
smiData.Solid(6).opacity = 0.0;
smiData.Solid(6).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 5.7738117361403569;  % kg
smiData.Solid(1).CoM = [1.4585996409197632 38.723716554786513 -1.4253627515095639];  % mm
smiData.Solid(1).MoI = [36438.050505227904 66455.214359138379 36401.83745425097];  % kg*mm^2
smiData.Solid(1).PoI = [41.166390238607626 -799.93644858528535 -34.69468957730318];  % kg*mm^2
smiData.Solid(1).color = [0.20000000000000001 0.20000000000000001 0.20000000000000001];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "Part1*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 1.0438247609077396;  % kg
smiData.Solid(2).CoM = [-149.43392706496505 16.179285337431814 9.5710230974155639];  % mm
smiData.Solid(2).MoI = [686.11863938741476 19111.753560506702 18721.16535411435];  % kg*mm^2
smiData.Solid(2).PoI = [20.879757750681012 238.26683141297954 -18.54209112365783];  % kg*mm^2
smiData.Solid(2).color = [1 0.16862745098039217 0.16862745098039217];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "Part3*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 2.018038361594062;  % kg
smiData.Solid(3).CoM = [-1.1076285349550381 -4.2619191120140654 -127.54736485057514];  % mm
smiData.Solid(3).MoI = [39343.211375706094 39066.693902142957 2578.4575411343721];  % kg*mm^2
smiData.Solid(3).PoI = [-1018.7786120336331 -322.14849214611417 -130.86412864728194];  % kg*mm^2
smiData.Solid(3).color = [1 0 0];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "l4*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 2.3879865289232143;  % kg
smiData.Solid(4).CoM = [-59.080748237378437 84.796801814139627 3.8520084044564675];  % mm
smiData.Solid(4).MoI = [12386.016771511278 16814.420865131295 24635.437358083916];  % kg*mm^2
smiData.Solid(4).PoI = [-551.2538635537976 615.7623736150756 9428.6973976587215];  % kg*mm^2
smiData.Solid(4).color = [0.69411764705882351 0.098039215686274508 0.098039215686274508];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "Part2*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.043862131231257304;  % kg
smiData.Solid(5).CoM = [0 0 8.542437373538398];  % mm
smiData.Solid(5).MoI = [18.348943546558392 18.348943546558392 25.854473740718777];  % kg*mm^2
smiData.Solid(5).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(5).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = "endb^Assem2*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 0.38478792540449108;  % kg
smiData.Solid(6).CoM = [0 -14.172966849642957 0];  % mm
smiData.Solid(6).MoI = [483.96439399797936 257.75506018621581 488.65224373887315];  % kg*mm^2
smiData.Solid(6).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(6).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = "enda*:*Default";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(4).Rz.Pos = 0.0;
smiData.RevoluteJoint(4).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = -98.836525481151909;  % deg
smiData.RevoluteJoint(1).ID = "[l4-1:-:Assem2-1]";

smiData.RevoluteJoint(2).Rz.Pos = 73.313533299792283;  % deg
smiData.RevoluteJoint(2).ID = "[Part3-1:-:l4-1]";

smiData.RevoluteJoint(3).Rz.Pos = -23.244424442500222;  % deg
smiData.RevoluteJoint(3).ID = "[Part1-1:-:Part2-1]";

smiData.RevoluteJoint(4).Rz.Pos = 28.950547895694417;  % deg
smiData.RevoluteJoint(4).ID = "[Part2-1:-:Part3-1]";

