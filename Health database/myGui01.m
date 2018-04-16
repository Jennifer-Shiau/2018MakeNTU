function varargout = myGui01(varargin)
% MYGUI01 MATLAB code for myGui01.fig
%      MYGUI01, by itself, creates a new MYGUI01 or raises the existing
%      singleton*.
%
%      H = MYGUI01 returns the handle to a new MYGUI01 or the handle to
%      the existing singleton*.
%
%      MYGUI01('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MYGUI01.M with the given input arguments.
%
%      MYGUI01('Property','Value',...) creates a new MYGUI01 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before myGui01_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to myGui01_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help myGui01

% Last Modified by GUIDE v2.5 14-Mar-2018 23:35:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @myGui01_OpeningFcn, ...
                   'gui_OutputFcn',  @myGui01_OutputFcn, ...
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


% --- Executes just before myGui01 is made visible.
function myGui01_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to myGui01 (see VARARGIN)

% Choose default command line output for myGui01
handles.output = hObject;

% load data %
A = xlsread("data1.xlsx");
handles.A = A;
B = xlsread("data2.xlsx");
handles.B = B;
C = xlsread("data3.xlsx");
handles.C = C;

oil = [A(14,2)+A(17,2), A(14,3)+A(17,3), A(14,4)+A(17,4)];
handles.oil = oil;

oth1 = [14,17];
oth2 = [5,6,7,11,12,14,15,17];
oth3 = [7,11,12,14,15,17];
oth4 = [3,10,14,15,17,18,20,23];
handles.oth1 = oth1;
handles.oth2 = oth2;
handles.oth3 = oth3;
handles.oth4 = oth4;

other = 0;
handles.other = other;

nameList = ["高麗菜", "青江菜", "菠菜", "花椰菜", "海帶", "胡蘿蔔", "鹹蛋苦瓜", "茄子", "竹筍", ...
            "蔥燒豆腐", "番茄炒蛋", "蒸蛋", "豆干炒肉絲", "炸豬排", "香腸", "滷雞腿", "控肉", "蔥爆牛肉", ...
            "三杯雞", "炒蛤蜊", "秋刀魚", "清蒸雪魚", "吳郭魚"];
handles.nameList = nameList;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes myGui01 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = myGui01_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double



% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function text1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on selection change in menu1.
function menu1_Callback(hObject, eventdata, handles)
% hObject    handle to menu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menu1
oil = handles.oil;

value=get(hObject, 'value');
switch value
    case 1
        set(handles.edit2, 'String', '');
    case 2
        set(handles.edit2, 'String', strcat('吃', num2str(oil(1)), '次'));
        if (oil(1)>4)
            set(handles.edit3, 'String', '吃太油了！');
        else
            set(handles.edit3, 'String', '滿清淡的！');
        end
    case 3
        set(handles.edit2, 'String', strcat('吃', num2str(oil(2)), '次'));
        if (oil(2)>12)
            set(handles.edit3, 'String', '吃太油了！');
        else
            set(handles.edit3, 'String', '滿清淡的！');
        end
    case 4
        set(handles.edit2, 'String', strcat('吃', num2str(oil(3)), '次'));
        if (oil(3)>72)
            set(handles.edit3, 'String', '吃太油了！');
        else
            set(handles.edit3, 'String', '滿清淡的！');
        end
end


% --- Executes during object creation, after setting all properties.
function menu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in menu2.
function menu2_Callback(hObject, eventdata, handles)
% hObject    handle to menu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menu2
other = handles.other;
switch other
    case 1
        oth = handles.oth1;
    case 2
        oth = handles.oth2;
    case 3
        oth = handles.oth3;
    case 4
        oth = handles.oth4;
end

n = size(oth,2);
s = '';
nameList = handles.nameList;
A = handles.A;

value=get(hObject, 'value');
switch value
    case 1
        %%%
    case 2
        for i = 1:n
            if (A(oth(i),2)>4)
                if (length(s)==0)
                    s = strcat(s, nameList(oth(i)));
                else
                    s = strcat(s, '、');
                    s = strcat(s, nameList(oth(i)));
                end
            end
        end
    case 3
        for i = 1:n
            if (A(oth(i),3)>12)
                if (length(s)==0)
                    s = strcat(s, nameList(oth(i)));
                else
                    s = strcat(s, '、');
                    s = strcat(s, nameList(oth(i)));
                end
            end
        end
    case 4
        for i = 1:n
            if (A(oth(i),4)>72)
                if (length(s)==0)
                    s = strcat(s, nameList(oth(i)));
                else
                    s = strcat(s, '、', nameList(oth(i)));
                end
            end
        end
end

if (length(s)==0)
    set(handles.edit4, 'String', '吃得很健康！');
else
    s = strcat(s, '吃太多了！');
    set(handles.edit4, 'String', s);
end


% --- Executes during object creation, after setting all properties.
function menu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in menu3.
function menu3_Callback(hObject, eventdata, handles)
% hObject    handle to menu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menu3
value=get(hObject, 'value');
switch value
    case 1
        %%%
    case 2
        handles.other = 1;
        guidata(hObject, handles);
    case 3
        handles.other = 2;
        guidata(hObject, handles);
    case 4
        handles.other = 3;
        guidata(hObject, handles);
    case 5
        handles.other = 4;
        guidata(hObject, handles);
end


% --- Executes during object creation, after setting all properties.
function menu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
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


% --- Executes on selection change in menu4.
function menu4_Callback(hObject, eventdata, handles)
% hObject    handle to menu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menu4
A = handles.A;

value=get(hObject, 'value');
s1 = strcat('最近10日吃', num2str(A(value-1,2)), '次');
s2 = strcat('最近一個月吃', num2str(A(value-1,3)), '次');
s3 = strcat('最近半年吃', num2str(A(value-1,4)), '次');
s = [s1, newline, s2, newline, s3];

set(handles.edit5, 'String', s);


% --- Executes during object creation, after setting all properties.
function menu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on selection change in menu5.
function menu5_Callback(hObject, eventdata, handles)
% hObject    handle to menu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menu5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menu5
axes(handles.axes1);
B = handles.B;

value=get(hObject, 'value');
switch value
    case 1
        %%%
    case 2
        x = 1:10;
        y1 = B(1:10,4);
        y2 = B(1:10,5);
        y3 = B(1:10,6);
        plot(x,y1,x,y2,x,y3);
        legend('午','晚','總');
        grid on;
        a = [0, 0, 0, 0]; %午餐多 午餐少 晚餐多 晚餐少
        for i = 1:10
            if(B(i,4)>749)
                a(1) = a(1)+1;
            elseif(B(i,4)<549)
                a(2) = a(2)+1;
            end
            if(B(i,5)>587)
                a(3) = a(3)+1;
            elseif(B(i,5)<387)
                a(4) = a(4)+1;
            end
        end
        
        s = '';
        if(a(1)>4 && a(2)>4)
            s = [s, newline, '午餐吃得不規律！'];
        elseif(a(1)>4)
            s = [s, newline, '午餐普遍吃太多！'];
        elseif(a(2)>4)
            s = [s, newline, '午餐普遍吃太少！'];
        end
        if(a(3)>4 && a(4)>4)
            s = [s, newline, '晚餐吃得不規律！'];
        elseif(a(3)>4)
            s = [s, newline, '晚餐普遍吃太多！'];
        elseif(a(4)>4)
            s = [s, newline, '晚餐普遍吃太少！'];
        end
        if(length(s)==0)
            s = [s, newline, '吃得很健康！'];
        end
        set(handles.edit8, 'String', s);
        
    case 3
        x = 1:31;
        y1 = B(1:31,4);
        y2 = B(1:31,5);
        y3 = B(1:31,6);
        plot(x,y1,x,y2,x,y3);
        legend('午','晚','總');
        grid on;
        a = [0, 0, 0, 0]; %午餐多 午餐少 晚餐多 晚餐少
        for i = 1:31
            if(B(i,4)>749)
                a(1) = a(1)+1;
            elseif(B(i,4)<549)
                a(2) = a(2)+1;
            end
            if(B(i,5)>587)
                a(3) = a(3)+1;
            elseif(B(i,5)<387)
                a(4) = a(4)+1;
            end
        end
        
        s = '';
        if(a(1)>12 && a(2)>12)
            s = [s, newline, '午餐吃得不規律！'];
        elseif(a(1)>12)
            s = [s, newline, '午餐普遍吃太多！'];
        elseif(a(2)>12)
            s = [s, newline, '午餐普遍吃太少！'];
        end
        if(a(3)>12 && a(4)>12)
            s = [s, newline, '晚餐吃得不規律！'];
        elseif(a(3)>12)
            s = [s, newline, '晚餐普遍吃太多！'];
        elseif(a(4)>12)
            s = [s, newline, '晚餐普遍吃太少！'];
        end
        if(length(s)==0)
            s = [s, newline, '吃得很健康！'];
        end
        set(handles.edit8, 'String', s);
        
    case 4
        x = 1:182;
        y1 = B(1:182,4);
        y2 = B(1:182,5);
        y3 = B(1:182,6);
        plot(x,y1,x,y2,x,y3);
        legend('午','晚','總');
        grid on;
        a = [0, 0, 0, 0]; %午餐多 午餐少 晚餐多 晚餐少
        for i = 1:182
            if(B(i,4)>749)
                a(1) = a(1)+1;
            elseif(B(i,4)<549)
                a(2) = a(2)+1;
            end
            if(B(i,5)>587)
                a(3) = a(3)+1;
            elseif(B(i,5)<387)
                a(4) = a(4)+1;
            end
        end
        
        s = '';
        if(a(1)>72 && a(2)>72)
            s = [s, newline, '午餐吃得不規律！'];
        elseif(a(1)>72)
            s = [s, newline, '午餐普遍吃太多！'];
        elseif(a(2)>72)
            s = [s, newline, '午餐普遍吃太少！'];
        end
        if(a(3)>72 && a(4)>72)
            s = [s, newline, '晚餐吃得不規律！'];
        elseif(a(3)>72)
            s = [s, newline, '晚餐普遍吃太多！'];
        elseif(a(4)>72)
            s = [s, newline, '晚餐普遍吃太少！'];
        end
        if(length(s)==0)
            s = [s, newline, '吃得很健康！'];
        end
        set(handles.edit8, 'String', s);
end


% --- Executes during object creation, after setting all properties.
function menu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
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


% --- Executes on selection change in menu6.
function menu6_Callback(hObject, eventdata, handles)
% hObject    handle to menu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menu6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menu6
C = handles.C;
axes(handles.axes2);
label = {'午餐', '晚餐'};

value=get(hObject, 'value');
switch value
    case 1
        %%%
    case 2 %March
        a = sum(C(1:31,4));
        b = sum(C(1:31,5));
        c = sum(C(1:31,6));
        pie([a, b], label);
        s = ['午餐：$', num2str(a), newline, '平均：$', num2str(a/31,4), newline, ...
             '晚餐：$', num2str(b), newline, '平均：$', num2str(b/31,4), newline, ...
             '總共：$', num2str(c), newline, '平均：$', num2str(c/31,5)];
        set(handles.edit7, 'String', s);
    case 3 %February
        a = sum(C(32:59,4));
        b = sum(C(32:59,5));
        c = sum(C(32:59,6));
        pie([a, b], label);
        s = ['午餐：$', num2str(a), newline, '平均：$', num2str(a/28,4), newline, ...
             '晚餐：$', num2str(b), newline, '平均：$', num2str(b/28,4), newline, ...
             '總共：$', num2str(c), newline, '平均：$', num2str(c/28,5)];
        set(handles.edit7, 'String', s);
    case 4 %January
        a = sum(C(60:90,4));
        b = sum(C(60:90,5));
        c = sum(C(60:90,6));
        pie([a, b], label);
        s = ['午餐：$', num2str(a), newline, '平均：$', num2str(a/31,4), newline, ...
             '晚餐：$', num2str(b), newline, '平均：$', num2str(b/31,4), newline, ...
             '總共：$', num2str(c), newline, '平均：$', num2str(c/31,5)];
        set(handles.edit7, 'String', s);
    case 5 %December
        a = sum(C(91:121,4));
        b = sum(C(91:121,5));
        c = sum(C(91:121,6));
        pie([a, b], label);
        s = ['午餐：$', num2str(a), newline, '平均：$', num2str(a/31,4), newline, ...
             '晚餐：$', num2str(b), newline, '平均：$', num2str(b/31,4), newline, ...
             '總共：$', num2str(c), newline, '平均：$', num2str(c/31,5)];
        set(handles.edit7, 'String', s);
    case 6 %November
        a = sum(C(122:151,4));
        b = sum(C(122:151,5));
        c = sum(C(122:151,6));
        pie([a, b], label);
        s = ['午餐：$', num2str(a), newline, '平均：$', num2str(a/30,4), newline, ...
             '晚餐：$', num2str(b), newline, '平均：$', num2str(b/30,4), newline, ...
             '總共：$', num2str(c), newline, '平均：$', num2str(c/30,5)];
        set(handles.edit7, 'String', s);
    case 7 %October
        a = sum(C(152:182,4));
        b = sum(C(152:182,5));
        c = sum(C(152:182,6));
        pie([a, b], label);
        s = ['午餐：$', num2str(a), newline, '平均：$', num2str(a/31,4), newline, ...
             '晚餐：$', num2str(b), newline, '平均：$', num2str(b/31,4), newline, ...
             '總共：$', num2str(c), newline, '平均：$', num2str(c/31,5)];
        set(handles.edit7, 'String', s);
end


% --- Executes during object creation, after setting all properties.
function menu6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
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
