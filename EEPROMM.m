function varargout = EEPROMM(varargin)
% EEPROMM MATLAB code for EEPROMM.fig
%      EEPROMM, by itself, creates a new EEPROMM or raises the existing
%      singleton*.
%
%      H = EEPROMM returns the handle to a new EEPROMM or the handle to
%      the existing singleton*.
%
%      EEPROMM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EEPROMM.M with the given input arguments.
%
%      EEPROMM('Property','Value',...) creates a new EEPROMM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before EEPROMM_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to EEPROMM_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help EEPROMM

% Last Modified by GUIDE v2.5 27-Nov-2019 12:06:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @EEPROMM_OpeningFcn, ...
                   'gui_OutputFcn',  @EEPROMM_OutputFcn, ...
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


% --- Executes just before EEPROMM is made visible.
function EEPROMM_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to EEPROMM (see VARARGIN)

% Choose default command line output for EEPROMM
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes EEPROMM wait for user response (see UIRESUME)
% uiwait(handles.Escribir);


% --- Outputs from this function are returned to the command line.
function varargout = EEPROMM_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Escribir.
function Escribir_Callback(hObject, eventdata, handles)
% hObject    handle to Escribir (see GCBO)
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
fprintf(SerPIC,'%c','E'); pause(0.2)
set(handles.AccionE,'string','Escribiendo...');pause(7.5)
set(handles.AccionE,'string','Memoria Escrita');
fclose(SerPIC);
delete(SerPIC);
clear SerPIC;
disp('stop');


% --- Executes on button press in AccionE.
function AccionE_Callback(hObject, eventdata, handles)
% hObject    handle to AccionE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --- Executes on button press in Leer.

function Leer_Callback(hObject, eventdata, handles)
% hObject    handle to Leer (see GCBO)
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
fprintf(SerPIC,'%c','L'); pause(0.2)
set(handles.AccionL,'string','Leyendo...');%pause(54.5)
i=0;
while(i<1024)
 
        set(handles.Dir1,'string',convertCharsToStrings(fscanf(SerPIC,'%c')));
        set(handles.Dir2,'string',convertCharsToStrings(fscanf(SerPIC,'%c')));
        val=fscanf(SerPIC,'%c')
        set(handles.Valor,'string',convertCharsToStrings(val));
        ten=fscanf(SerPIC,'%c')
        set(handles.Tension,'string',convertCharsToStrings(ten));pause(0.5)
        if(i==0)
        x=[str2num(val)];
        y=[str2num(ten)];
        end
        if (i>0)
        x=[x,str2num(val)]
        y=[y,str2num(ten)]
        end
        plot(handles.Grafica,x,y);
        i=i+1;
        
end
set(handles.AccionL,'string','Memoria Leída');
fclose(SerPIC);
delete(SerPIC);
clear SerPIC;
disp('stop');



% --- Executes on button press in AccionL.
function AccionL_Callback(hObject, eventdata, handles)
% hObject    handle to AccionL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Dir2.
function Dir2_Callback(hObject, eventdata, handles)
% hObject    handle to Dir2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Valor.
function Valor_Callback(hObject, eventdata, handles)
% hObject    handle to Valor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Tension.
function Tension_Callback(hObject, eventdata, handles)
% hObject    handle to Tension (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Dir1.
function Dir1_Callback(hObject, eventdata, handles)
% hObject    handle to Dir1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
