function varargout = UserInterface(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @UserInterface_OpeningFcn, ...
                   'gui_OutputFcn',  @UserInterface_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

function UserInterface_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;

guidata(hObject, handles);

function varargout = UserInterface_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;


function slider1_Callback(hObject, eventdata, handles)

ModelName='RoboticArmModelV3';
global var;

t1=get(handles.slider1,'value');%obtenir la valeur du slider
set(handles.edit1,'string',num2str(t1));

t2=get(handles.slider2,'value');%obtenir la valeur du slider
set(handles.edit2,'string',num2str(t2));

t3=get(handles.slider3,'value');%obtenir la valeur du slider
set(handles.edit3,'string',num2str(t3));

t4=get(handles.slider4,'value');%obtenir la valeur du slider
set(handles.edit4,'string',num2str(t4));

set_param([ModelName '/Slider Gain1'],'Gain',num2str(t1));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(t2));
set_param([ModelName '/Slider Gain3'],'Gain',num2str(t3));
set_param([ModelName '/Slider Gain4'],'Gain',num2str(t4));

A1=[cosd(t1)  0      -sind(t1)                  150*cosd(t1)      ;sind(t1)   0     cosd(t1)          150*sind(t1)           ;0  -1 0  160  ;0 0 0 1];
A2=[cosd(t2)    -sind(t2)          0       350*cosd(t2);sind(t2)       cosd(t2)      0     350*sind(t2) ;0 0 1 0 ;0 0 0 1];
A3=[cosd(t3)  -sind(t3)      0             362.5*cosd(t3);sind(t3)   cosd(t3)     0          362.5*sind(t3) ;0  0 1  0  ;0 0 0 1];
A4=[cosd(t4)  -sind(t4)      0         230*cosd(t4);sind(t4)   cosd(t4)     0          230*sind(t4) ;0  0 1  0  ;0 0 0 1];

T= A1*A2*A3*A4;
Px=T(1,4);
Py=T(2,4);
Pz=T(3,4);

set(handles.edit7,'string',num2str(Px));
set(handles.edit8,'string',num2str(Py));
set(handles.edit9,'string',num2str(Pz));

function slider1_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider2_Callback(hObject, ~, handles)

ModelName='RoboticArmModelV3';
global var;

t1=get(handles.slider1,'value');%obtenir la valeur du slider
set(handles.edit1,'string',num2str(t1));

t2=get(handles.slider2,'value');%obtenir la valeur du slider
set(handles.edit2,'string',num2str(t2));

t3=get(handles.slider3,'value');%obtenir la valeur du slider
set(handles.edit3,'string',num2str(t3));

t4=get(handles.slider4,'value');%obtenir la valeur du slider
set(handles.edit4,'string',num2str(t4));

set_param([ModelName '/Slider Gain1'],'Gain',num2str(t1));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(t2));
set_param([ModelName '/Slider Gain3'],'Gain',num2str(t3));
set_param([ModelName '/Slider Gain4'],'Gain',num2str(t4));

A1=[cosd(t1)  0      -sind(t1)                  150*cosd(t1)      ;sind(t1)   0     cosd(t1)          150*sind(t1)           ;0  -1 0  160  ;0 0 0 1];
A2=[cosd(t2)    -sind(t2)          0       350*cosd(t2);sind(t2)       cosd(t2)      0     350*sind(t2) ;0 0 1 0 ;0 0 0 1];
A3=[cosd(t3)  -sind(t3)      0             362.5*cosd(t3);sind(t3)   cosd(t3)     0          362.5*sind(t3) ;0  0 1  0  ;0 0 0 1];
A4=[cosd(t4)  -sind(t4)      0         230*cosd(t4);sind(t4)   cosd(t4)     0          230*sind(t4) ;0  0 1  0  ;0 0 0 1];

T= A1*A2*A3*A4;
Px=T(1,4);
Py=T(2,4);
Pz=T(3,4);

set(handles.edit7,'string',num2str(Px));
set(handles.edit8,'string',num2str(Py));
set(handles.edit9,'string',num2str(Pz));

function slider2_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider3_Callback(hObject, eventdata, handles)

ModelName='RoboticArmModelV3';
global var;

t1=get(handles.slider1,'value');%obtenir la valeur du slider
set(handles.edit1,'string',num2str(t1));

t2=get(handles.slider2,'value');%obtenir la valeur du slider
set(handles.edit2,'string',num2str(t2));

t3=get(handles.slider3,'value');%obtenir la valeur du slider
set(handles.edit3,'string',num2str(t3));

t4=get(handles.slider4,'value');%obtenir la valeur du slider
set(handles.edit4,'string',num2str(t4));

set_param([ModelName '/Slider Gain1'],'Gain',num2str(t1));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(t2));
set_param([ModelName '/Slider Gain3'],'Gain',num2str(t3));
set_param([ModelName '/Slider Gain4'],'Gain',num2str(t4));

A1=[cosd(t1)  0      -sind(t1)                  150*cosd(t1)      ;sind(t1)   0     cosd(t1)          150*sind(t1)           ;0  -1 0  160  ;0 0 0 1];
A2=[cosd(t2)    -sind(t2)          0       350*cosd(t2);sind(t2)       cosd(t2)      0     350*sind(t2) ;0 0 1 0 ;0 0 0 1];
A3=[cosd(t3)  -sind(t3)      0             362.5*cosd(t3);sind(t3)   cosd(t3)     0          362.5*sind(t3) ;0  0 1  0  ;0 0 0 1];
A4=[cosd(t4)  -sind(t4)      0         230*cosd(t4);sind(t4)   cosd(t4)     0          230*sind(t4) ;0  0 1  0  ;0 0 0 1];

T= A1*A2*A3*A4;
Px=T(1,4);
Py=T(2,4);
Pz=T(3,4);

set(handles.edit7,'string',num2str(Px));
set(handles.edit8,'string',num2str(Py));
set(handles.edit9,'string',num2str(Pz));

function slider3_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider4_Callback(hObject, eventdata, handles)

ModelName='RoboticArmModelV3';
global var;

t1=get(handles.slider1,'value');
set(handles.edit1,'string',num2str(t1));
t2=get(handles.slider2,'value');
set(handles.edit2,'string',num2str(t2));
t3=get(handles.slider3,'value');
set(handles.edit3,'string',num2str(t3));
t4=get(handles.slider4,'value');
set(handles.edit4,'string',num2str(t4));

set_param([ModelName '/Slider Gain1'],'Gain',num2str(t1));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(t2));
set_param([ModelName '/Slider Gain3'],'Gain',num2str(t3));
set_param([ModelName '/Slider Gain4'],'Gain',num2str(t4));

A1=[cosd(t1)  0      -sind(t1)                  150*cosd(t1)      ;sind(t1)   0     cosd(t1)          150*sind(t1)           ;0  -1 0  160  ;0 0 0 1];
A2=[cosd(t2)    -sind(t2)          0       350*cosd(t2);sind(t2)       cosd(t2)      0     350*sind(t2) ;0 0 1 0 ;0 0 0 1];
A3=[cosd(t3)  -sind(t3)      0             362.5*cosd(t3);sind(t3)   cosd(t3)     0          362.5*sind(t3) ;0  0 1  0  ;0 0 0 1];
A4=[cosd(t4)  -sind(t4)      0         230*cosd(t4);sind(t4)   cosd(t4)     0          230*sind(t4) ;0  0 1  0  ;0 0 0 1];

T= A1*A2*A3*A4;
Px=T(1,4);
Py=T(2,4);
Pz=T(3,4);

set(handles.edit7,'string',num2str(Px));
set(handles.edit8,'string',num2str(Py));
set(handles.edit9,'string',num2str(Pz));

function slider4_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit1_Callback(hObject, eventdata, handles)
function edit1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit2_Callback(hObject, eventdata, handles)
function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit3_Callback(hObject, eventdata, handles)
function edit3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit4_Callback(hObject, eventdata, handles)
function edit4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit5_Callback(hObject, eventdata, handles)
function edit5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit6_Callback(hObject, eventdata, handles)
function edit6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit7_Callback(hObject, eventdata, handles)
function edit7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit8_Callback(hObject, eventdata, handles)
function edit8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit9_Callback(hObject, eventdata, handles)
function edit9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit13_Callback(hObject, eventdata, handles)
function edit13_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton1_Callback(hObject, eventdata, handles)

ModelName='RoboticArmModelV3';
global var;

t1=0;
set(handles.edit1,'string',num2str(t1));
set(handles.slider1,'value',t1);

t2=0;
set(handles.edit2,'string',num2str(t2));
set(handles.slider2,'value',t2);

t3=0;
set(handles.edit3,'string',num2str(t3));
set(handles.slider3,'value',t3);

t4=0;
set(handles.edit4,'string',num2str(t4));
set(handles.slider4,'value',t4);

set_param([ModelName '/Slider Gain1'],'Gain',num2str(t1));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(t2));
set_param([ModelName '/Slider Gain3'],'Gain',num2str(t3));
set_param([ModelName '/Slider Gain4'],'Gain',num2str(t4));

A1=[cosd(t1)  0      -sind(t1)                  150*cosd(t1)      ;sind(t1)   0     cosd(t1)          150*sind(t1)           ;0  -1 0  160  ;0 0 0 1];
A2=[cosd(t2)    -sind(t2)          0       350*cosd(t2);sind(t2)       cosd(t2)      0     350*sind(t2) ;0 0 1 0 ;0 0 0 1];
A3=[cosd(t3)  -sind(t3)      0             362.5*cosd(t3);sind(t3)   cosd(t3)     0          362.5*sind(t3) ;0  0 1  0  ;0 0 0 1];
A4=[cosd(t4)  -sind(t4)      0         230*cosd(t4);sind(t4)   cosd(t4)     0          230*sind(t4) ;0  0 1  0  ;0 0 0 1];

T= A1*A2*A3*A4;
Px=T(1,4);
Py=T(2,4);
Pz=T(3,4);

set(handles.edit7,'string',num2str(Px));
set(handles.edit8,'string',num2str(Py));
set(handles.edit9,'string',num2str(Pz));

function pushbutton2_Callback(hObject, eventdata, handles)
close;

function pushbutton3_Callback(hObject, eventdata, handles)

ModelName='RoboticArmModelV3';
open_system(ModelName);

set_param(ModelName,'BlockReduction','off');
set_param(ModelName,'StopTime','inf');
set_param(ModelName,'SimulationMode','normal');
set_param(ModelName,'StartFcn','1');
set_param(ModelName,'SimulationCommand','start');


function edit21_Callback(hObject, eventdata, handles)

function edit21_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit22_Callback(hObject, eventdata, handles)

function edit22_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit23_Callback(hObject, eventdata, handles)

function edit23_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit24_Callback(hObject, eventdata, handles)

function edit24_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit25_Callback(hObject, eventdata, handles)
function edit25_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit26_Callback(hObject, eventdata, handles)
function edit26_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit27_Callback(hObject, eventdata, handles)
function edit27_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function btn_invert_Callback(hObject, eventdata, handles)
ModelName='RoboticArmModelV3';
global var;

l1 = 150; l2 = 350; l3 = 362.5; l4 = 230; d1 = 160;
px_new = get(handles.edit_px,'String');
px_new = str2num(px_new);

py_new = get(handles.edit_py,'String');
py_new = str2num(py_new);

pz_new = get(handles.edit_pz,'String');
pz_new = str2num(pz_new);

t234_new = get(handles.edit_t234,'String');
t234_new = str2num(t234_new);

%bo 1
t1 = atan2d(py_new,px_new);
nx = px_new*cosd(t1) + py_new*sind(t1) -l4*cosd(t234_new) - l1;
ny =  d1 - pz_new - l4*sind(t234_new);
c3 = ((nx^2)+(ny^2)-(l3^2)-(l2^2))/(2*l3*l2);
s3 = sqrt(1 - c3^2);
t3 = atan2d(s3, c3);
c2 = (nx*(l3*c3 + l2) + l3*s3*ny)/( (l3*c3 + l2)^2 +(l3*s3)^2);
s2 = sqrt(1 - c2^2);
t2 = atan2d(s2, c2);
t4 = t234_new -t2 - t3;

%tham khao
%bo2
t1_1 = atan2d(py_new,px_new);
nx_1 = px_new*cosd(t1_1) + py_new*sind(t1_1) -l4*cosd(t234_new) - l1;
ny_1 =  d1 - pz_new - l4*sind(t234_new);
c3_1 = ((nx_1^2)+(ny_1^2)-(l3^2)-(l2^2))/(2*l3*l2);
s3_1 = -sqrt(1 - c3_1^2);
t3_1 = atan2d(s3_1, c3_1);
c2_1 = (nx_1*(l3*c3_1 + l2) + l3*s3_1*ny_1)/( (l3*c3_1 + l2)^2 +(l3*s3_1)^2);
s2_1 = sqrt(1 - c2_1^2);
t2_1 = atan2d(s2_1, c2_1);
t4_1 = t234_new -t2_1 - t3_1;
%bo3
t1_2 = atan2d(py_new,px_new);
nx_2 = px_new*cosd(t1_2) + py_new*sind(t1_2) -l4*cosd(t234_new) - l1;
ny_2 =  d1 - pz_new - l4*sind(t234_new);
c3_2 = ((nx_2^2)+(ny_2^2)-(l3^2)-(l2^2))/(2*l3*l2);
s3_2 = sqrt(1 - c3_2^2);
t3_2 = atan2d(s3_2, c3_2);
c2_2 = (nx_2*(l3*c3_2 + l2) + l3*s3_2*ny_2)/( (l3*c3_2 + l2)^2 +(l3*s3_2)^2);
s2_2 = -sqrt(1 - c2_2^2);
t2_2 = atan2d(s2_2, c2_2);
t4_2 = t234_new -t2_2 - t3_2;
%bo4
t1_3 = atan2d(py_new,px_new);
nx_3 = px_new*cosd(t1_2) + py_new*sind(t1_2) -l4*cosd(t234_new) - l1;
ny_3 =  d1 - pz_new - l4*sind(t234_new);
c3_3 = ((nx_3^2)+(ny_3^2)-(l3^2)-(l2^2))/(2*l3*l2);
s3_3 = -sqrt(1 - c3_3^2);
t3_3 = atan2d(s3_3, c3_3);
c2_3 = (nx_3*(l3*c3_3 + l2) + l3*s3_3*ny_3)/( (l3*c3_3 + l2)^2 +(l3*s3_3)^2);
s2_3 = -sqrt(1 - c2_3^2);
t2_3 = atan2d(s2_3, c2_3);
t4_3 = t234_new -t2_3 - t3_3;

set_param([ModelName '/Slider Gain1'],'Gain',num2str(t1));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(t2));
set_param([ModelName '/Slider Gain3'],'Gain',num2str(t3));
set_param([ModelName '/Slider Gain4'],'Gain',num2str(t4));

%hien thi bo 1
set(handles.edit24,'string',num2str(t1));
set(handles.edit25,'string',num2str(t2));
set(handles.edit26,'string',num2str(t3));
set(handles.edit27,'string',num2str(t4));
%hien thi bo 2
set(handles.edit39,'string',num2str(t1_1));
set(handles.edit40,'string',num2str(t2_1));
set(handles.edit41,'string',num2str(t3_1));
set(handles.edit42,'string',num2str(t4_1));
%hien thi bo 3
set(handles.edit43,'string',num2str(t1_2));
set(handles.edit44,'string',num2str(t2_2));
set(handles.edit45,'string',num2str(t3_2));
set(handles.edit46,'string',num2str(t4_2));
%hien thi bo 4
set(handles.edit47,'string',num2str(t1_3));
set(handles.edit48,'string',num2str(t2_3));
set(handles.edit49,'string',num2str(t3_3));
set(handles.edit50,'string',num2str(t4_3));
%check 4bo
ans1 = checkForward(px_new, py_new, pz_new, t1, t2, t3, t4);
set(handles.edit51,'string',ans1);

ans2 = checkForward(px_new, py_new, pz_new, t1_1, t2_1, t3_1, t4_1);
set(handles.edit54,'string',ans2);

ans3 = checkForward(px_new, py_new, pz_new, t1_2, t2_2, t3_2, t4_2);
set(handles.edit55,'string',ans3);

ans4 = checkForward(px_new, py_new, pz_new, t1_3, t2_3, t3_3, t4_3);
set(handles.edit56,'string',ans4);
function edit_px_Callback(hObject, eventdata, handles)
% hObject    handle to edit_px (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

px_new = get(handles.edit_px,'String');
px_new = str2num(px_new);
set(handles.edit21,'string',num2str(px_new));

% Hints: get(hObject,'String') returns contents of edit_px as text
%        str2double(get(hObject,'String')) returns contents of edit_px as a double


% --- Executes during object creation, after setting all properties.
function edit_px_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_px (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit32_Callback(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit32 as text
%        str2double(get(hObject,'String')) returns contents of edit32 as a double


% --- Executes during object creation, after setting all properties.
function edit32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit33_Callback(hObject, eventdata, handles)
% hObject    handle to edit33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit33 as text
%        str2double(get(hObject,'String')) returns contents of edit33 as a double


% --- Executes during object creation, after setting all properties.
function edit33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_py_Callback(hObject, eventdata, handles)
% hObject    handle to edit_py (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_py as text
%        str2double(get(hObject,'String')) returns contents of edit_py as a double

py_new = get(handles.edit_py,'String');
py_new = str2num(py_new);
py_invert = py_new;
set(handles.edit33,'string',num2str(py_new));
% --- Executes during object creation, after setting all properties.
function edit_py_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_py (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit35_Callback(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit35 as text
%        str2double(get(hObject,'String')) returns contents of edit35 as a double


% --- Executes during object creation, after setting all properties.
function edit35_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_pz_Callback(hObject, eventdata, handles)
% hObject    handle to edit_pz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_pz as text
%        str2double(get(hObject,'String')) returns contents of edit_pz as a double

pz_new = get(handles.edit_pz,'String');
pz_new = str2num(pz_new);
pz_invert = pz_new;
set(handles.edit35,'string',num2str(pz_new));
% --- Executes during object creation, after setting all properties.
function edit_pz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_pz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit37_Callback(hObject, eventdata, handles)
% hObject    handle to edit37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit37 as text
%        str2double(get(hObject,'String')) returns contents of edit37 as a double


% --- Executes during object creation, after setting all properties.
function edit37_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_t234_Callback(hObject, eventdata, handles)
% hObject    handle to edit_t234 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_t234 as text
%        str2double(get(hObject,'String')) returns contents of edit_t234 as a double

t234_new = get(handles.edit_t234,'String');
t234_new = str2num(t234_new);
t234_invert = t234_new;
set(handles.edit37,'string',num2str(t234_new));
% --- Executes during object creation, after setting all properties.
function edit_t234_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_t234 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_check.
function btn_check_Callback(hObject, eventdata, handles)
% hObject    handle to btn_check (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ModelName='RoboticArmModelV3';
global var;

t1_new = get(handles.edit1,'String');
t1_new = str2num(t1_new);

t2_new = get(handles.edit2,'String');
t2_new = str2num(t2_new);

t3_new = get(handles.edit3,'String');
t3_new = str2num(t3_new);

t4_new = get(handles.edit4,'String');
t4_new = str2num(t4_new);

A1=[cosd(t1_new)  0      -sind(t1_new)                  150*cosd(t1_new)      ;sind(t1_new)   0     cosd(t1_new)          150*sind(t1_new)           ;0  -1 0  160  ;0 0 0 1];
A2=[cosd(t2_new)    -sind(t2_new)          0       350*cosd(t2_new);sind(t2_new)       cosd(t2_new)      0     350*sind(t2_new) ;0 0 1 0 ;0 0 0 1];
A3=[cosd(t3_new)  -sind(t3_new)      0             362.5*cosd(t3_new);sind(t3_new)   cosd(t3_new)     0          362.5*sind(t3_new) ;0  0 1  0  ;0 0 0 1];
A4=[cosd(t4_new)  -sind(t4_new)      0         230*cosd(t4_new);sind(t4_new)   cosd(t4_new)     0          230*sind(t4_new) ;0  0 1  0  ;0 0 0 1];

T= A1*A2*A3*A4;
Px=T(1,4);
Py=T(2,4);
Pz=T(3,4); 

set_param([ModelName '/Slider Gain1'],'Gain',num2str(t1_new));
set_param([ModelName '/Slider Gain2'],'Gain',num2str(t2_new));
set_param([ModelName '/Slider Gain3'],'Gain',num2str(t3_new));
set_param([ModelName '/Slider Gain4'],'Gain',num2str(t4_new));

set(handles.edit7,'string',num2str(Px));
set(handles.edit8,'string',num2str(Py));
set(handles.edit9,'string',num2str(Pz));



function edit39_Callback(hObject, eventdata, handles)
% hObject    handle to edit39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit39 as text
%        str2double(get(hObject,'String')) returns contents of edit39 as a double


% --- Executes during object creation, after setting all properties.
function edit39_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit40_Callback(hObject, eventdata, handles)
% hObject    handle to edit40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit40 as text
%        str2double(get(hObject,'String')) returns contents of edit40 as a double


% --- Executes during object creation, after setting all properties.
function edit40_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit41_Callback(hObject, eventdata, handles)
% hObject    handle to edit41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit41 as text
%        str2double(get(hObject,'String')) returns contents of edit41 as a double


% --- Executes during object creation, after setting all properties.
function edit41_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit42_Callback(hObject, eventdata, handles)
% hObject    handle to edit42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit42 as text
%        str2double(get(hObject,'String')) returns contents of edit42 as a double


% --- Executes during object creation, after setting all properties.
function edit42_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit43_Callback(hObject, eventdata, handles)
% hObject    handle to edit43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit43 as text
%        str2double(get(hObject,'String')) returns contents of edit43 as a double


% --- Executes during object creation, after setting all properties.
function edit43_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit44_Callback(hObject, eventdata, handles)
% hObject    handle to edit44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit44 as text
%        str2double(get(hObject,'String')) returns contents of edit44 as a double


% --- Executes during object creation, after setting all properties.
function edit44_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit45_Callback(hObject, eventdata, handles)
% hObject    handle to edit45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit45 as text
%        str2double(get(hObject,'String')) returns contents of edit45 as a double


% --- Executes during object creation, after setting all properties.
function edit45_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit46_Callback(hObject, eventdata, handles)
% hObject    handle to edit46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit46 as text
%        str2double(get(hObject,'String')) returns contents of edit46 as a double


% --- Executes during object creation, after setting all properties.
function edit46_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit47_Callback(hObject, eventdata, handles)
% hObject    handle to edit47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit47 as text
%        str2double(get(hObject,'String')) returns contents of edit47 as a double


% --- Executes during object creation, after setting all properties.
function edit47_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit48_Callback(hObject, eventdata, handles)
% hObject    handle to edit48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit48 as text
%        str2double(get(hObject,'String')) returns contents of edit48 as a double


% --- Executes during object creation, after setting all properties.
function edit48_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit49_Callback(hObject, eventdata, handles)
% hObject    handle to edit49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit49 as text
%        str2double(get(hObject,'String')) returns contents of edit49 as a double


% --- Executes during object creation, after setting all properties.
function edit49_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit50_Callback(hObject, eventdata, handles)
% hObject    handle to edit50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit50 as text
%        str2double(get(hObject,'String')) returns contents of edit50 as a double


% --- Executes during object creation, after setting all properties.
function edit50_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit51_Callback(hObject, eventdata, handles)
% hObject    handle to edit51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit51 as text
%        str2double(get(hObject,'String')) returns contents of edit51 as a double


% --- Executes during object creation, after setting all properties.
function edit51_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit54_Callback(hObject, eventdata, handles)
% hObject    handle to edit54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit54 as text
%        str2double(get(hObject,'String')) returns contents of edit54 as a double


% --- Executes during object creation, after setting all properties.
function edit54_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit55_Callback(hObject, eventdata, handles)
% hObject    handle to edit55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit55 as text
%        str2double(get(hObject,'String')) returns contents of edit55 as a double


% --- Executes during object creation, after setting all properties.
function edit55_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit56_Callback(hObject, eventdata, handles)
% hObject    handle to edit56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit56 as text
%        str2double(get(hObject,'String')) returns contents of edit56 as a double


% --- Executes during object creation, after setting all properties.
function edit56_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
