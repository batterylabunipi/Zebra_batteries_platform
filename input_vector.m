
% for more details check user_guide.txt

final_time=4; % hour
mdl_input.t=0:1:3600*final_time; % second
mdl_input.t=mdl_input.t'; 

string_current=10;  % A
mdl_input.I=ones(length(mdl_input.t),1).*string_current;
mdl_input.I(1:2)=0; %initial condition
mdl_input.I(end-1:end)=0; %end condition

%Battery architecture
mdl_input.M=3;  %number of strings 
mdl_input.N=20; %number of cells

%Fault configuration
mdl_input.N_cell=[	20	20	20	20	20	]; %number of heathy cells in each string. It must be always composed of 5 elements (set differnt to 0 for the unused strings) 

%Initial SoC configuration
mdl_input.Start_SoC=[	1	1	1	1	1	];%Initial SoC of each string. It must be always composed of 5 elements (set differnt to 1 for the unused strings) 

