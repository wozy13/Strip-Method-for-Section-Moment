function varargout = Strip(varargin)
% STRIP MATLAB code for Strip.fig
%      STRIP, by itself, creates a new STRIP or raises the existing
%      singleton*.
%
%      H = STRIP returns the handle to a new STRIP or the handle to
%      the existing singleton*.
%
%      STRIP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STRIP.M with the given input arguments.
%
%      STRIP('Property','Value',...) creates a new STRIP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Strip_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Strip_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Strip

% Last Modified by GUIDE v2.5 24-Dec-2015 15:10:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Strip_OpeningFcn, ...
                   'gui_OutputFcn',  @Strip_OutputFcn, ...
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


% --- Executes just before Strip is made visible.
function Strip_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Strip (see VARARGIN)

% Choose default command line output for Strip
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Strip wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Strip_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function As1_Callback(hObject, eventdata, handles)
% hObject    handle to As1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of As1 as1 text
%        str2double(get(hObject,'String')) returns contents of As1 as1 a double
input=str2double(get(hObject,'String'));
if isempty(input)
    set(hObject,'String','1256');
end
guidata(hObject,handles);
% --- Executes during object creation, after setting all properties.
function As1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to As1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b as1 text
%        str2double(get(hObject,'String')) returns contents of b as1 a double
b=str2double(get(hObject,'String'));
if isempty(b)
    set(hObject,'String','250');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function h_Callback(hObject, eventdata, handles)
% hObject    handle to h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h as1 text
%        str2double(get(hObject,'String')) returns contents of h as1 a double
h=str2double(get(hObject,'String'));
if isempty(h)
    set(hObject,'String','525');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function h_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ctype_Callback(hObject, eventdata, handles)
% hObject    handle to ctype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ctype as1 text
%        str2double(get(hObject,'String')) returns contents of ctype as1 a double
ctype=str2double(get(hObject,'String'));
if isempty(ctype)
    set(hObject,'String','30');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function ctype_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ctype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function etu_Callback(hObject, eventdata, handles)
% hObject    handle to etu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of etu as1 text
%        str2double(get(hObject,'String')) returns contents of etu as1 a double
etu=str2double(get(hObject,'String'));
if isempty(etu)
    set(hObject,'String','0.0002');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function etu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to etu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rtype1_Callback(hObject, eventdata, handles)
% hObject    handle to rtype1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rtype1 as1 text
%        str2double(get(hObject,'String')) returns contents of rtype1 as1 a double
rtype=str2double(get(hObject,'String'));
if isempty(rtype)
    set(hObject,'String','335');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function rtype1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rtype1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in start_pushbutton.
function start_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to start_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h=get(handles.h,'String');
b=get(handles.b,'String');
a1=get(handles.a1,'String');
a2=get(handles.a2,'String');
As1=get(handles.As1,'String');
As2=get(handles.As2,'String');
ctype=get(handles.ctype,'String');
rtype1=get(handles.rtype1,'String');
rtype2=get(handles.rtype2,'String');
pull_limit=get(handles.etu,'String');

h=str2double(h);
b=str2double(b);
a1=str2double(a1);
a2=str2double(a2);
As1=str2double(As1);
As2=str2double(As2);
ctype=str2double(ctype);
rtype1=str2double(rtype1);
rtype2=str2double(rtype2);
pull_limit=str2double(pull_limit);

%% Main part of this program.(To solve the equation via traversal method)
i=1;
ec_origin=0.01*10^(-7)*(h-a1);
i=1;
for phi=10^(-7):2*10^(-7):5*10^(-5)
    steps=(i/250)*100;
    steps=roundn(steps,-1);
    set(handles.process,'String',steps);
    j=1;
    for ec=linspace(ec_origin,0.99*phi*(h-a1),9)
        myerr(j)=abs(MyError(b,h,a1,a2,As1,As2,ec,phi,ctype,rtype1,rtype2,pull_limit));
        j=j+1;
    end
    ec=linspace(ec_origin,0.99*phi*(h-a1),9);
    num=min(find(myerr==min(myerr)));
    clear myerr;
    j=1;
    
    if num>1&&num<length(ec)
        ec=ec(num-1):0.01*phi*(h-a1):ec(num+1);
        for ec2=ec
            myerr(j)=abs(MyError(b,h,a1,a2,As1,As2,ec2,phi,ctype,rtype1,rtype2,pull_limit));
            j=j+1;
        end
        num=min(find(myerr==min(myerr)));

        ec_origin=ec(num);
        [err(i),M(i)]=MyError(b,h,a1,a2,As1,As2,ec(num),phi,ctype,rtype1,rtype2,pull_limit);
        xn(i)=ec(num)/phi;
%         es(i)=(h0-xn(i))*phi;
        err2=abs(err(i))
        i=i+1;
        clear myerr;
    elseif num==1
        ec=ec(num):0.01*phi*(h-a1):ec(num+1);
        for ec2=ec
            myerr(j)=abs(MyError(b,h,a1,a2,As1,As2,ec2,phi,ctype,rtype1,rtype2,pull_limit));
            j=j+1;
        end
        num=min(find(myerr==min(myerr)));
        ec_origin=ec(num);
        [err(i),M(i)]=MyError(b,h,a1,a2,As1,As2,ec(num),phi,ctype,rtype1,rtype2,pull_limit);
        xn(i)=ec(num)/phi;
%         es(i)=(h0-xn(i))*phi;
        err2=abs(err(i))
        i=i+1;
        clear myerr;
    else
        ec=ec(num-1):0.01*phi*(h-a1):ec(num);
        for ec2=ec
            myerr(j)=abs(MyError(b,h,a1,a2,As1,As2,ec2,phi,ctype,rtype1,rtype2,pull_limit));
            j=j+1;
        end
        num=min(find(myerr==min(myerr)));
        ec_origin=ec(num);
        [err(i),M(i)]=MyError(b,h,a1,a2,As1,As2,ec(num),phi,ctype,rtype1,rtype2,pull_limit);
        xn(i)=ec(num)/phi;
%         es(i)=(h0-xn(i))*phi;
        err2=abs(err(i));
        i=i+1;
        clear myerr;
    end
    if ec_origin>0.0033
        break;
    end
    format short;
    c=roundn(err2/10^6,-4);
    set(handles.MyErr,'String',c);
    pause(0.001);
end

phi=10^(-7):2*10^(-7):phi;
M=M./(10^6);
%% 凭借经验对计算结果做一些处理
for i=1:length(phi)-1
    if M(i+1)<0.9*M(i)
        mark1=i;
        break;
    else
        mark1=1;
    end
end
mark1=min(mark1);
if mark1~=1
    for i=mark1:length(phi)-1
        if M(i+1)>M(i)
            mark2=i;
            break;
        else
            mark2=length(phi);
        end
    end
    mark2=min(mark2);
    if mark2~=length(phi)
        phi=phi(1:mark2);
        M=M(1:mark2);
    else
        phi=phi(1:mark1);
        M=M(1:mark1);
    end
else
    phi=phi;
    M=M;
end
M=[0,M];
phi=[0,phi];
%% 画动态图
for i=1:length(phi)
    plot(phi(1:i),M(1:i));
    axis([0 max(phi) 0 max(M)]);
    pause(0.05*200/length(phi));
    title('弯矩与平面曲率关系图线');
    xlabel('曲率phi');
    ylabel('弯矩(kN`m)');hold on;
end

% MyComet(phi,M) % 变速流星式画法
% for i=1:length(phi)
%     plot(phi(1:i),M(1:i));
%     axis([0 max(phi) 0 max(M)]);
%     pause(0.05);
% end
pause(2);
for i=1:length(phi)-1
    y=0:(h-a1)/1000:(h-a1);
    y1=y(find(y<((h-a1)-xn(i))));
    y2=y(find(y>=((h-a1)-xn(i))));
    plot(-Concrete_t(-phi(i)*(y1-((h-a1)-xn(i))),ctype,pull_limit),(y1-((h-a1)-xn(i))),'b');hold on;
    plot(Concrete_c(phi(i)*(y2-((h-a1)-xn(i))),ctype),(y2-((h-a1)-xn(i))),'r');hold on;
    myzero=linspace(0,0,length(y));
    plot(myzero,y-((h-a1)-xn(i)),'k','linewidth',2);hold on;
    axis([-2 15 -max((h-a1)-xn) max(xn)]);
    title('正截面混凝土应力变化');
    xlabel('正截面混凝土应力大小(kPa)');
    ylabel('相对于中性轴的位置(mm)');
    pause(0.05*200/length(phi));
    plot(-Concrete_t(-phi(i)*(y1-((h-a1)-xn(i))),ctype,pull_limit),(y1-((h-a1)-xn(i))),'w');hold on;
    plot(Concrete_c(phi(i)*(y2-((h-a1)-xn(i))),ctype),(y2-((h-a1)-xn(i))),'w');hold on;
    plot(myzero,y-((h-a1)-xn(i)),'w','linewidth',2);
end
guidata(hObject,handles);
% --- Executes on button press in Stop_pushbutton.
function Stop_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Stop_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear;clc;
close;
return;



function rtype2_Callback(hObject, eventdata, handles)
% hObject    handle to rtype2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rtype2 as1 text
%        str2double(get(hObject,'String')) returns contents of rtype2 as1 a double
input=str2double(get(hObject,'String'));
if isempty(input)
    set(hObject,'String','335');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function rtype2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rtype2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a1_Callback(hObject, eventdata, handles)
% hObject    handle to a1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a1 as1 text
%        str2double(get(hObject,'String')) returns contents of a1 as1 a double
input=str2double(get(hObject,'String'));
if isempty(input)
    set(hObject,'String','25');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function a1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a2_Callback(hObject, eventdata, handles)
% hObject    handle to a2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a2 as1 text
%        str2double(get(hObject,'String')) returns contents of a2 as1 a double
input=str2double(get(hObject,'String'));
if isempty(input)
    set(hObject,'String','0');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function a2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function As2_Callback(hObject, eventdata, handles)
% hObject    handle to As2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of As2 as1 text
%        str2double(get(hObject,'String')) returns contents of As2 as1 a double
input=str2double(get(hObject,'String'));
if isempty(input)
    set(hObject,'String','0');
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function As2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to As2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
