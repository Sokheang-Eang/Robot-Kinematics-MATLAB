close all, clear all, clc;
%% Robot Parameter
r = 0.05; % wheel radius (m)
l = 0.3; % robot width (m)

%% Wheel velocities
VL = 2.0; % left wheel (rad/s)
VR = 2.5; % right wheel (rad/s)

%% Calculate linear and angular velocities
v = (r / 2) * (VR + VL);
omega = (r / l) * (VR - VL);

%% Update position using Euler integration
% time step
dt = 0.1; 
% initial position and orientation
x = 0; y = 0; theta = 0;
for t = 0:dt:5
    % Update position
    x = x + v * cos(theta) * dt;
    y = y + v * sin(theta) * dt;
    theta = theta + omega * dt;
end
fprintf('Final Position: x=%.2f, y=%.2f, theta=%.2f\n', x, y, rad2deg(theta));
