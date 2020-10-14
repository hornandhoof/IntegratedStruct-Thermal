% Plotting Convergence 
close all
load FirstOrderOptimality.mat
legendM = ["TGT-CBW-TGT","TCT-CBW-TCT","TGT-HBW-TGT","TCT-HBW-TCT","TGT-ABW-TGT","TCT-ABW-TCT"]
figure(1);
xlabel('Iteration') 
ylabel('First-order optimality')
hold on
for i=1:6
    bar="FOO"+i
    bar=eval(bar)
    plt(i)=plot(1:length(bar),bar);hold on;
    hold all
    legend(legendM(i))
end
hold off;
%   returns a column vector of handles so extract the first one
h = plt;
 % Now call the legend function passing the handle h and specify the text
legend(h,legendM);