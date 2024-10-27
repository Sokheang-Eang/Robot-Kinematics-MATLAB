close all, clear all, clc;
%% Mecanum wheel robot kinematics
r = 0.05; % meters
Lx = 0.3; % meters
Ly = 0.4; % meters

%% Wheel velocities (rad/s)
Vfl = -2.0; % front left
Vfr = 2.0; % front right
Vrl = 2.0; % back left
Vrr = -2.0; % back right

%% Forward kinematics matrix for 4-wheel mecanum
% Compute Robot Velocity
Vx = (Vfl + Vfr + Vrl + Vrr)*(r/4);
Vy = (-Vfl + Vfr + Vrl - Vrr)*(r/4);
Omega = (-Vfl + Vfr - Vrl + Vrr)*((r/4)*(Lx + Ly));

% Update position using Euler integration
dt = 0.1;
x = 0; y = 0; theta = 0;
for t = 0:dt:5
    x = x + Vx * dt;
    y = y + Vy * dt;
    theta = theta + Omega * dt;
end
fprintf('Final Position: x=%.2f, y=%.2f, theta=%.2f\n', x, y, rad2deg(theta));
