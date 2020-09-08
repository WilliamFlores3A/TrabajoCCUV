function varargout = TrabajoCCUV(varargin)
%TRABAJOCCUV M-file for TrabajoCCUV.fig
%      TRABAJOCCUV, by itself, creates a new TRABAJOCCUV or raises the existing
%      singleton*.
%
%      H = TRABAJOCCUV returns the handle to a new TRABAJOCCUV or the handle to
%      the existing singleton*.
%
%      TRABAJOCCUV('Property','Value',...) creates a new TRABAJOCCUV using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to TrabajoCCUV_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      TRABAJOCCUV('CALLBACK') and TRABAJOCCUV('CALLBACK',hObject,...) call the
%      local function named CALLBACK in TRABAJOCCUV.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TrabajoCCUV

% Last Modified by GUIDE v2.5 08-Sep-2020 15:55:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TrabajoCCUV_OpeningFcn, ...
                   'gui_OutputFcn',  @TrabajoCCUV_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before TrabajoCCUV is made visible.
function TrabajoCCUV_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for TrabajoCCUV
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TrabajoCCUV wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TrabajoCCUV_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function Resultado_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Resultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in Calcular.
function Calcular_Callback(hObject, eventdata, handles)
fx=get(handles.Ingresar,'String')%Tomamos el valor dado por el usuario y lo aignamos en la variable fx
syms x %hacemos que x sirva como variable simbolica, esto para poder resolver la funcion
i=int(fx,x)%calculamos el valor de la integral con respecto a X, el resultado sera almacenado en la variable i
set(handles.Resultado,'String',char(i))%devolvemos el resultado a el cuadro de resultado.



function Ingresar_Callback(hObject, eventdata, handles)
% hObject    handle to Ingresar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ingresar as text
%        str2double(get(hObject,'String')) returns contents of Ingresar as a double
