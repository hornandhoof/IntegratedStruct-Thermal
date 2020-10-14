%% Integrated Thermal and Structural Performance 
% 12th July, 2020
% %% For HFL Hot and humid
% Evaluation of fitting parameters for design curve utilized for Integrated Thermal and Structural Performance 
% Abhishek Kumar 

Chi = 1 ; % Performance index for the structure

Table = [0.44	0.9899	0.9997
0.44	0.9933	0.9995
0.44	0.9960	1.0029
0.44	0.9527	0.9691
0.44	0.9676	0.9794
0.44	0.9836	0.9890
0.44	0.9801	0.9866
0.44	0.9801	0.9874
0.44	0.9843	0.9896]; % Non-dimensional parameters used for various systems for various wall (Table 6 in the paper)

TableStrutTher = [38.42	24.77	24.46
23.91	51.40	49.20
22.63	32.46	30.84
90.86	37.43	36.85
56.55	72.56	71.31
53.54	55.64	54.44
160.53	14.32	14.55
99.92	38.01	37.73
94.59	23.87	23.79
] % structure and thermal performance in all climatic zone for various wall (Table 7 and 8 (Agumented) in the paper)


[len1,~]=size(Table);
[len2,~]=size(TableStrutTher);

Xi = [Table(:,1);Table(:,1)]; % (Xi is same as we have same sesmic zone for both climate)

Eta = [Table(:,2);Table(:,3)]; % Complete Eta for both climatic zones

StrtP = [TableStrutTher(:,1)]
Transmitance = [TableStrutTher(:,2)]
HFlux = [TableStrutTher(:,3)]

options = optimoptions('fsolve','StepTolerance',0.01,'Display','iter','PlotFcn',{@optimplotfirstorderopt,@optimplotfval});

%% For HFL Hot and humid

for i=1:(len1/3)
    for j=1:2
        c = (i-1)*2+j; % Counter
        tXi=Xi((i-1)*3+1+j);
        tEta=Eta((i-1)*3+1+j);
        tXi0= Xi((i-1)*3+1);
        tEta0= Eta((i-1)*3+1)      ; 
        S= StrtP((i-1)*3+1+j);
        T= HFlux((i-1)*3+1+j);
        S0= StrtP((i-1)*3+1)  ;
        T0= HFlux((i-1)*3+1);
        fun = @(x)alphabeta(x,S,S0,T,T0,Chi,tXi,tEta,tXi0,tEta0);
        x0 = [0,0];
        x = fsolve(fun,x0,options)
        hold on
        alphaM(c)= x(1);
        betaM(c)=x(2);
        tXiM(c)=tXi;
        tEtaM(c)=tEta;
        tXi0M(c)=tXi0;
        tEta0M(c)=tEta0;
        SM(c)=S;
        TM(c)=T;
        S0M(c)=S0;
        T0M(c)=T0;
    end    
end




