function varargout = kuis_123220010(varargin)
% KUIS_123220010 MATLAB code for kuis_123220010.fig
%      KUIS_123220010, by itself, creates a new KUIS_123220010 or raises the existing
%      singleton*.
%
%      H = KUIS_123220010 returns the handle to a new KUIS_123220010 or the handle to
%      the existing singleton*.
%
%      KUIS_123220010('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KUIS_123220010.M with the given input arguments.
%
%      KUIS_123220010('Property','Value',...) creates a new KUIS_123220010 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before kuis_123220010_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to kuis_123220010_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help kuis_123220010

% Last Modified by GUIDE v2.5 20-Mar-2024 13:59:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kuis_123220010_OpeningFcn, ...
                   'gui_OutputFcn',  @kuis_123220010_OutputFcn, ...
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


% --- Executes just before kuis_123220010 is made visible.
function kuis_123220010_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to kuis_123220010 (see VARARGIN)

% Choose default command line output for kuis_123220010
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes kuis_123220010 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = kuis_123220010_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes when entered data in editable cell(s) in table.
function table_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to table (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in showBtn.
function showBtn_Callback(hObject, eventdata, handles)
% hObject    handle to showBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
opts = detectImportOptions("data.csv");
opts.SelectedVariableNames = (3:10);
data = table2cell(readtable("data.csv", opts));
set(handles.table, 'data', data);


% --- Executes on button press in hideBtn.
function hideBtn_Callback(hObject, eventdata, handles)
% hObject    handle to hideBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.table, 'data', cell(size(get(handles.table, 'data'))));



function hasil_Callback(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasil as text
%        str2double(get(hObject,'String')) returns contents of hasil as a double


% --- Executes during object creation, after setting all properties.
function hasil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function radius_Callback(hObject, eventdata, handles)
% hObject    handle to radius (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of radius as text
%        str2double(get(hObject,'String')) returns contents of radius as a double


% --- Executes during object creation, after setting all properties.
function radius_CreateFcn(hObject, eventdata, handles)
% hObject    handle to radius (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function smoothness_Callback(hObject, eventdata, handles)
% hObject    handle to smoothness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of smoothness as text
%        str2double(get(hObject,'String')) returns contents of smoothness as a double


% --- Executes during object creation, after setting all properties.
function smoothness_CreateFcn(hObject, eventdata, handles)
% hObject    handle to smoothness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function texture_Callback(hObject, eventdata, handles)
% hObject    handle to texture (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of texture as text
%        str2double(get(hObject,'String')) returns contents of texture as a double


% --- Executes during object creation, after setting all properties.
function texture_CreateFcn(hObject, eventdata, handles)
% hObject    handle to texture (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function compactness_Callback(hObject, eventdata, handles)
% hObject    handle to compactness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of compactness as text
%        str2double(get(hObject,'String')) returns contents of compactness as a double


% --- Executes during object creation, after setting all properties.
function compactness_CreateFcn(hObject, eventdata, handles)
% hObject    handle to compactness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function perimeter_Callback(hObject, eventdata, handles)
% hObject    handle to perimeter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of perimeter as text
%        str2double(get(hObject,'String')) returns contents of perimeter as a double


% --- Executes during object creation, after setting all properties.
function perimeter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to perimeter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function convacity_Callback(hObject, eventdata, handles)
% hObject    handle to convacity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of convacity as text
%        str2double(get(hObject,'String')) returns contents of convacity as a double


% --- Executes during object creation, after setting all properties.
function convacity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to convacity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function area_Callback(hObject, eventdata, handles)
% hObject    handle to area (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of area as text
%        str2double(get(hObject,'String')) returns contents of area as a double


% --- Executes during object creation, after setting all properties.
function area_CreateFcn(hObject, eventdata, handles)
% hObject    handle to area (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function symmetry_Callback(hObject, eventdata, handles)
% hObject    handle to symmetry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of symmetry as text
%        str2double(get(hObject,'String')) returns contents of symmetry as a double


% --- Executes during object creation, after setting all properties.
function symmetry_CreateFcn(hObject, eventdata, handles)
% hObject    handle to symmetry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kval_Callback(hObject, eventdata, handles)
% hObject    handle to kval (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kval as text
%        str2double(get(hObject,'String')) returns contents of kval as a double


% --- Executes during object creation, after setting all properties.
function kval_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kval (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in diagnosis.
function diagnosis_Callback(hObject, eventdata, handles)
% hObject    handle to diagnosis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
radius = str2double(get(handles.radius, 'string'));
texture = str2double(get(handles.texture, 'string'));
perimeter = str2double(get(handles.perimeter, 'string'));
area = str2double(get(handles.area, 'string'));
smoothness = str2double(get(handles.smoothness, 'string'));
compactness = str2double(get(handles.compactness, 'string'));
convacity = str2double(get(handles.convacity, 'string'));
symmetry = str2double(get(handles.symmetry, 'string'));

kval = str2double(get(handles.kval, 'string'));

sample = [radius, texture, perimeter, area, smoothness, compactness, convacity, symmetry];

opts = detectImportOptions('data.csv');
opts.SelectedVariableNames = (3:10);
training = readmatrix('data.csv', opts);

opts.SelectedVariableNames = (2);
group = readmatrix('data.csv', opts);

class = fitcknn(training, group, 'NumNeighbors', kval);
result = predict(class, sample);

if result == "M"
    diagnosis = "Tumor Jinak Terdeteksi!";
else
    diagnosis = "Tumor ganas terdeteksi!";
end

set(handles.hasil, 'string', diagnosis);



% --- Executes during object creation, after setting all properties.
function diagnosis_CreateFcn(hObject, eventdata, handles)
% hObject    handle to diagnosis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.radius, 'string', '');
set(handles.texture, 'string', '');
set(handles.perimeter, 'string', '');
set(handles.area, 'string', '');
set(handles.smoothness, 'string', '');
set(handles.compactness, 'string', '');
set(handles.convacity, 'string', '');
set(handles.symmetry, 'string', '');
set(handles.kval, 'string', '');
