clc, close all, clear all;
%% Robot parameters
Lx = 0.3;   % Distance from center to wheel (meters)
Ly = 0.3;   % Distance from center to wheel (meters)
%% Robot Speed
Vx = 1.0;     % Desired velocity in x (m/s)
Vy = -1.0;     % Desired velocity in y (m/s)
omega = 0.0;  % Desired angular velocity (rad/s)
%% Inverse Kinematics for Mecanum Wheels
fl = (Vx*cos(pi/4) - Vy*sin(pi/4) - (Lx + Ly)*omega);
fr = (Vx*cos(3*pi/4) - Vy*sin(3*pi/4) + (Lx + Ly)*omega);
rl = (Vx*cos(5*pi/4) - Vy*sin(5*pi/4) - (Lx + Ly)*omega);
rr = (Vx*cos(7*pi/4) - Vy*sin(7*pi/4) + (Lx + Ly)*omega);
%% Display the wheel velocities
fprintf('\tFront Left: %.2f (rad/s)\n', fl);
fprintf('\tFront Right: %.2f (rad/s)\n', fr);
fprintf('\tRear Left: %.2f (rad/s)\n', rl);
fprintf('\tRear Right: %.2f (rad/s)\n', rr);
