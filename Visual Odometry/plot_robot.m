% A function to plot the path traversed by the bot. The input arguments are :
% (1) delx, the forward translation in mm
% (2) deltheta, the angle of rotation in radians
% (3) origin, the previous position of the robot in the form [x y theta].
function new_origin = plot_robot(delx,deltheta,origin)

% The scale of the graph is 100 : 1 i.e 100 mm displacement corresponds to 1 unit on the graph
delx = delx/100;

% Computation of the new position of the bot based on the earlier location
new_origin(1) = origin(1) + (delx*cos(origin(3)));
new_origin(2) = origin(2) + (delx*sin(origin(3)));
new_origin(3) = origin(3) + deltheta;

% Plot the new location of the bot on the graph and join with the earlier position using a straight line.
figure(1);
subplot(1,2,2);
plot_x = [origin(1) new_origin(1)];
plot_y = [origin(2) new_origin(2)];
plot(plot_x,plot_y,'LineStyle','-');
axis([-15 15 -15 15]);
grid on
hold on
end