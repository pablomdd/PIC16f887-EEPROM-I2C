function varargout = USARTM(varargin)
% USARTM MATLAB code for USARTM.fig
%      USARTM, by itself, creates a new USARTM or raises the existing
%      singleton*.
%
%      H = USARTM returns the handle to a new USARTM or the handle to
%      the existing singleton*.
%
%      USARTM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in USARTM.M with the given input arguments.
%
%      USARTM('Property','Value',...) creates a new USARTM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before USARTM_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to USARTM_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help USARTM

% Last Modified by GUIDE v2.5 27-Nov-2019 02:29:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @USARTM_OpeningFcn, ...
                   'gui_OutputFcn',  @USARTM_OutputFcn, ...
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


% --- Executes just before USARTM is made visible.
function USARTM_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to USARTM (see VARARGIN)

% Choose default command line output for USARTM
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes USARTM wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = USARTM_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;




function PWM_Callback(hObject, eventdata, handles)
% hObject    handle to PWM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PWM as text
%        str2double(get(hObject,'String')) returns contents of PWM as a double


% --- Executes during object creation, after setting all properties.
function PWM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PWM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
    
end


% --- Executes on button press in Enviar.
function Enviar_Callback(hObject, eventdata, handles)
% hObject    handle to Enviar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc; disp('BEGIN')
SerPIC=serial('COM5');
set(SerPIC,'BaudRate',9600);
set(SerPIC,'DataBits',8);
set(SerPIC,'Parity','none');
set(SerPIC,'StopBits',1);
set(SerPIC,'FlowControl','none');
fopen(SerPIC);
pwm=convertStringsToChars(get(handles.PWM,'string'))
leds=convertStringsToChars(get(handles.LEDS,'string'))
fprintf(SerPIC,'%c',leds); pause(0.2)
fprintf(SerPIC,'%c',pwm);pause(0.2)
dip=convertCharsToStrings(fscanf(SerPIC,'%c'))
set(handles.DIP,'string',dip);pause(0.2)
porta1=(fscanf(SerPIC,'%c'));
porta=convertCharsToStrings(porta1)
set(handles.PORTA,'string',porta);pause(0.2)
fclose(SerPIC);
delete(SerPIC);
clear SerPIC;
disp('stop');
set(handles.POR,'string',str2num(pwm)*(100/1024));
set(handles.bin1,'string',dec2bin(str2num(leds)));
set(handles.bin2,'string',dec2bin(str2num(porta1)));



function LEDS_Callback(hObject, eventdata, handles)
% hObject    handle to LEDS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of LEDS as text
%        str2double(get(hObject,'String')) returns contents of LEDS as a double


% --- Executes during object creation, after setting all properties.
function LEDS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to LEDS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in POR.
function POR_Callback(hObject, eventdata, handles)
% hObject    handle to POR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of POR


% --- Executes on button press in bin1.
function bin1_Callback(hObject, eventdata, handles)
% hObject    handle to bin1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of bin1


% --- Executes on button press in bin2.
function bin2_Callback(hObject, eventdata, handles)
% hObject    handle to bin2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
