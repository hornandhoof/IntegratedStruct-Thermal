function createfigure(X1, YMatrix1, X2, YMatrix2, X3, Y1)
%CREATEFIGURE(X1, YMatrix1, X2, YMatrix2, X3, Y1)
%  X1:  vector of x data
%  YMATRIX1:  matrix of y data
%  X2:  vector of x data
%  YMATRIX2:  matrix of y data
%  X3:  vector of x data
%  Y1:  vector of y data

%  Auto-generated by MATLAB on 21-Aug-2020 13:01:14

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create multiple lines using matrix input to semilogy
semilogy1 = semilogy(X1,YMatrix1,'MarkerSize',10,'LineWidth',1);
set(semilogy1(1),'DisplayName','TGT-CBW-TGT',...
    'MarkerFaceColor',[0.494117647409439 0.184313729405403 0.556862771511078],...
    'Marker','>',...
    'LineStyle','--',...
    'Color',[0.494117647409439 0.184313729405403 0.556862771511078]);
set(semilogy1(2),'DisplayName','TCT-ABW-TCT','MarkerFaceColor',[0 1 1],...
    'Marker','hexagram',...
    'LineStyle','-.',...
    'Color',[0 1 1]);

% Create multiple lines using matrix input to semilogy
semilogy2 = semilogy(X2,YMatrix2,'MarkerSize',10,'LineWidth',1,...
    'Parent',axes1);
set(semilogy2(1),'DisplayName','TCT-CBW-TCT','MarkerFaceColor',[1 0 0],...
    'Marker','o');
set(semilogy2(2),'DisplayName','TGT-HBW-TGT','MarkerFaceColor',[0 0 1],...
    'Marker','^',...
    'LineStyle',':');
set(semilogy2(3),'DisplayName','TCT-HBW-TCT','MarkerFaceColor',[1 0 1],...
    'Marker','square',...
    'LineStyle','--');

% Create semilogy
semilogy(X3,Y1,'DisplayName','TGT-ABW-TGT',...
    'MarkerFaceColor',[0.749019622802734 0.749019622802734 0],...
    'MarkerSize',10,...
    'Marker','square',...
    'LineWidth',1,...
    'Color',[0.749019622802734 0.749019622802734 0]);

% Create ylabel
ylabel('First-order optimality','FontSize',14);

% Create xlabel
xlabel('Iteration','FontSize',14);

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[1 6]);
box(axes1,'on');
% Set the remaining axes properties
set(axes1,'XGrid','on','XTick',[1 2 3 4 5 6],'YGrid','on','YMinorTick','on',...
    'YScale','log');
% Create legend
legend1 = legend(axes1,'show');
set(legend1,'Location','southwest','FontSize',12);

