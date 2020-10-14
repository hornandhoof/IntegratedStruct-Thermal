% plotting the results 
n=5
syms y
legendM = ["TGT-CBW-TGT","TCT-CBW-TCT","TGT-HBW-TGT","TCT-HBW-TCT","TGT-ABW-TGT","TCT-ABW-TCT"]
figure(1);
yyaxis left
xlabel('Percentage increase in Structural Performance') 
ylabel('Percentage increase in Transmitance Performance')
for i=1:c
    X = linspace(S0M(i),SM(i),n);
    for j=1:n
        Eq = tXiM(i)*(X(j)^alphaM(i)) + tEtaM(i)*(y^betaM(i))-Chi;
        Y(j)=solve(Eq,y);
    end
    hold all
    plt(i)=plot (X,Y); hold on;
    legend(legendM(i))
    
end
hold off;
%   returns a column vector of handles so extract the first one
h = plt;
 % Now call the legend function passing the handle h and specify the text
legend(h,legendM);


