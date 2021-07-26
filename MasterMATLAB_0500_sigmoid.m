%%
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Translate formulas into code
%      VIDEO: Sigmoid function
% Instructor: mikexcohen.com
%
%%

% sigmoid parameters
a =  1.4; % amplitude (maximum value)
b =  2; % steepness ("heat" parameter)
c = -1; % x-axis shift

% x-axis points
x = linspace(-5,5,400);

% here's the main function
sigmoid = a./(1+exp(-b*(x-c)));

% and plot
figure(5), clf
plot(x,sigmoid,'linew',3)
hold on
plot([0 0],get(gca,'ylim'),'k--','linew',1.5)

% plot parameter intersection lines
plot(get(gca,'xlim'),[1 1]*a/2,'linew',1.5,'color','yellow')

plot([c c],get(gca,'ylim'),'linew',1.5)

xlabel('x'), ylabel('f(x)')


%%
