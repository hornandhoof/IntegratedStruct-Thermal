function createaxes(Parent1, X1, Y1, X2, Y2, Y3, Y4)
%CREATEAXES(Parent1, X1, Y1, X2, Y2, Y3, Y4)
%  PARENT1:  axes parent
%  X1:  vector of x data
%  Y1:  vector of y data
%  X2:  vector of x data
%  Y2:  vector of y data
%  Y3:  vector of y data
%  Y4:  vector of y data

%  Auto-generated by MATLAB on 21-Aug-2020 15:58:34

% Create axes
axes1 = axes('Parent',Parent1,...
    'Position',[0.131041666666667 0.11 0.775 0.815]);
hold(axes1,'on');

% Activate the left side of the axes
yyaxis(axes1,'left');
% Create plot
plot(X1,Y1,'DisplayName','TGT-ABW-TGT (Transmitance)',...
    'MarkerFaceColor',[0 0 1],...
    'MarkerSize',10,...
    'Marker','hexagram',...
    'LineWidth',1,...
    'Color',[0 0 1]);

% Create plot
plot(X2,Y2,'DisplayName','TCT-ABW-TCT (Transmitance)',...
    'MarkerFaceColor',[0 0 1],...
    'MarkerSize',10,...
    'Marker','square',...
    'LineWidth',1,...
    'Color',[0 0 1]);

% Create ylabel
ylabel('Percentage increase in Transmitance Performance');
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[20 55]);

% Set the remaining axes properties
set(axes1,'YColor',[0 0 0],'YDir','normal','YMinorTick','off');
% Activate the right side of the axes
yyaxis(axes1,'right');
% Create plot
plot(X1,Y3,'DisplayName','TGT-CBW-TGT (HFL)',...
    'MarkerFaceColor',[0.87058824300766 0.490196079015732 0],...
    'MarkerSize',10,...
    'Marker','diamond',...
    'LineWidth',1,...
    'LineStyle','--',...
    'Color',[0.87058824300766 0.490196079015732 0]);

% Create plot
plot(X2,Y4,'DisplayName','TCT-CBW-TCT (HFL)',...
    'MarkerFaceColor',[0.87058824300766 0.490196079015732 0],...
    'MarkerSize',10,...
    'Marker','v',...
    'LineWidth',1);

% Create ylabel
ylabel('Percentage increase in Heat Flux Performance');
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[20 55]);

% Set the remaining axes properties
set(axes1,'YColor',[0 0 0]);
% Create xlabel
xlabel('Percentage increase in Structural Performance');

box(axes1,'on');
% Set the remaining axes properties
set(axes1,'FontSize',14,'LineStyleOrderIndex',7,'XColor',[0 0 0],'XGrid',...
    'on','YGrid','on','ZColor',[0 0 0]);
