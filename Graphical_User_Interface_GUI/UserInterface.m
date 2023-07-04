function varargout = UserInterface(varargin)
% USERINTERFACE MATLAB code for UserInterface.fig
%      USERINTERFACE, by itself, creates a new USERINTERFACE or raises the existing
%      singleton*.

%
%      H = USERINTERFACE returns the handle to a new USERINTERFACE or the handle to
%      the existing singleton*.
%
%      USERINTERFACE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in USERINTERFACE.M with the given input arguments.
%
%      USERINTERFACE('Property','Value',...) creates a new USERINTERFACE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before UserInterface_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to UserInterface_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help UserInterface

% Last Modified by GUIDE v2.5 04-Jul-2023 09:36:12

% Begin initialization code - DO NOT EDIT
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
% End initialization code - DO NOT EDIT


% --- Executes just before UserInterface is made visible.
function UserInterface_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to UserInterface (see VARARGIN)

% Choose default command line output for UserInterface
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes UserInterface wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = UserInterface_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
ModelName='RoboticArmModelV2';
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


A1=[cosd(t1)  0      sind(t1)                  0      ;sind(t1)   0     -cosd(t1)          0            ;0  1 0  216.95  ;0 0 0 1];
A2=[cosd(t2)    -sind(t2)          0       350*cosd(t2);sind(t2)       cosd(t2)      0     350*sind(t2) ;0 0 1 0 ;0 0 0 1];
A3=[cosd(t3)  -sind(t3)      0             362.5*cosd(t3);sind(t3)   cosd(t3)     0          362.5*sind(t3) ;0  0 1  0  ;0 0 0 1];
A4=[cosd(t4)  -sind(t4)      0         115*cosd(t4);sind(t4)   cosd(t4)     0          115*sind(t4) ;0  0 1  27.5  ;0 0 0 1];

T= A1*A2*A3*A4;
Px=T(1,4);
Py=T(2,4);
Pz=T(3,4);

set(handles.edit7,'string',num2str(Px));
set(handles.edit8,'string',num2str(Py));
set(handles.edit9,'string',num2str(Pz));

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
 ModelName='RoboticArmModelV2';
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


A1=[cosd(t1)  0      sind(t1)                  0      ;sind(t1)   0     -cosd(t1)          0            ;0  1 0  216.95  ;0 0 0 1];
A2=[cosd(t2)    -sind(t2)          0       350*cosd(t2);sind(t2)       cosd(t2)      0     350*sind(t2) ;0 0 1 0 ;0 0 0 1];
A3=[cosd(t3)  -sind(t3)      0             362.5*cosd(t3);sind(t3)   cosd(t3)     0          362.5*sind(t3) ;0  0 1  0  ;0 0 0 1];
A4=[cosd(t4)  -sind(t4)      0         115*cosd(t4);sind(t4)   cosd(t4)     0          115*sind(t4) ;0  0 1  27.5  ;0 0 0 1];

T= A1*A2*A3*A4;
Px=T(1,4);
Py=T(2,4);
Pz=T(3,4);

set(handles.edit7,'string',num2str(Px));
set(handles.edit8,'string',num2str(Py));
set(handles.edit9,'string',num2str(Pz));


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ModelName='RoboticArmModelV2';
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


A1=[cosd(t1)  0      sind(t1)                  0      ;sind(t1)   0     -cosd(t1)          0            ;0  1 0  216.95  ;0 0 0 1];
A2=[cosd(t2)    -sind(t2)          0       350*cosd(t2);sind(t2)       cosd(t2)      0     350*sind(t2) ;0 0 1 0 ;0 0 0 1];
A3=[cosd(t3)  -sind(t3)      0             362.5*cosd(t3);sind(t3)   cosd(t3)     0          362.5*sind(t3) ;0  0 1  0  ;0 0 0 1];
A4=[cosd(t4)  -sind(t4)      0         115*cosd(t4);sind(t4)   cosd(t4)     0          115*sind(t4) ;0  0 1  27.5  ;0 0 0 1];

T= A1*A2*A3*A4;
Px=T(1,4);
Py=T(2,4);
Pz=T(3,4);

set(handles.edit7,'string',num2str(Px));
set(handles.edit8,'string',num2str(Py));
set(handles.edit9,'string',num2str(Pz));

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

ModelName='RoboticArmModelV2';
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


A1=[cosd(t1)  0      sind(t1)                  0      ;sind(t1)   0     -cosd(t1)          0            ;0  1 0  216.95  ;0 0 0 1];
A2=[cosd(t2)    -sind(t2)          0       350*cosd(t2);sind(t2)       cosd(t2)      0     350*sind(t2) ;0 0 1 0 ;0 0 0 1];
A3=[cosd(t3)  -sind(t3)      0             362.5*cosd(t3);sind(t3)   cosd(t3)     0          362.5*sind(t3) ;0  0 1  0  ;0 0 0 1];
A4=[cosd(t4)  -sind(t4)      0         115*cosd(t4);sind(t4)   cosd(t4)     0          115*sind(t4) ;0  0 1  27.5  ;0 0 0 1];

T= A1*A2*A3*A4;
Px=T(1,4);
Py=T(2,4);
Pz=T(3,4);

set(handles.edit7,'string',num2str(Px));
set(handles.edit8,'string',num2str(Py));
set(handles.edit9,'string',num2str(Pz));
%  ints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

ModelName='RoboticArmModelV2';
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



A1=[cosd(t1)  0      sind(t1)                  0      ;sind(t1)   0     -cosd(t1)          0            ;0  1 0  216.95  ;0 0 0 1];
A2=[cosd(t2)    -sind(t2)          0       350*cosd(t2);sind(t2)       cosd(t2)      0     350*sind(t2) ;0 0 1 0 ;0 0 0 1];
A3=[cosd(t3)  -sind(t3)      0             362.5*cosd(t3);sind(t3)   cosd(t3)     0          362.5*sind(t3) ;0  0 1  0  ;0 0 0 1];
A4=[cosd(t4)  -sind(t4)      0         115*cosd(t4);sind(t4)   cosd(t4)     0          115*sind(t4) ;0  0 1  27.5  ;0 0 0 1];

T= A1*A2*A3*A4;
Px=T(1,4);
Py=T(2,4);
Pz=T(3,4);

set(handles.edit7,'string',num2str(Px));
set(handles.edit8,'string',num2str(Py));
set(handles.edit9,'string',num2str(Pz));


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close;
% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ModelName='RoboticArmModelV2';
open_system(ModelName);



set_param(ModelName,'BlockReduction','off');
set_param(ModelName,'StopTime','inf');
set_param(ModelName,'SimulationMode','normal');
set_param(ModelName,'StartFcn','1');
set_param(ModelName,'SimulationCommand','start');


% --- Executes on slider movement.
function slider_px_Callback(hObject, eventdata, handles)
% hObject    handle to slider_px (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_px_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_px (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_py_Callback(hObject, eventdata, handles)
% hObject    handle to slider_py (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_py_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_py (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_pz_Callback(hObject, eventdata, handles)
% hObject    handle to slider_pz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_pz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_pz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes during object creation, after setting all properties.
function img_logoSolid_CreateFcn(hObject, eventdata, handles)
% hObject    handle to img_logoSolid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
imshow('C:\Users\20151\Desktop\Robotics\Final_Project\Final_Robotics\Overview\logoSolidworks.png');
% Hint: place code in OpeningFcn to populate img_logoSolid


% --- Executes during object creation, after setting all properties.
function img_logoMatlab_CreateFcn(hObject, eventdata, handles)
% hObject    handle to img_logoMatlab (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
imshow('C:\Users\20151\Desktop\Robotics\Final_Project\Final_Robotics\Overview\logoMatlab.jpg');
% Hint: place code in OpeningFcn to populate img_logoMatlab


% --- Executes during object creation, after setting all properties.
function img_Robot_CreateFcn(hObject, eventdata, handles)
% hObject    handle to img_Robot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
imshow('C:\Users\20151\Desktop\Robotics\Final_Project\Final_Robotics\Overview\Robot.png');
% Hint: place code in OpeningFcn to populate img_Robot
