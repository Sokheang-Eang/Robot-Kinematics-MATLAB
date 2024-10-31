clc, close all, clear all;
%% Robot parameters
Lx = 0.3;   % Distance from center to wheel (meters)
Ly = 0.3;   % Distance from center to wheel (meters)
%% Robot Speed
Vx = 1.0;      % Desired velocity in x (m/s)
Vy = -1.0;     % Desired velocity in y (m/s)
omega = 0.0;   % Desired angular velocity (rad/s)
%% Inverse Kinematics for Mecanum Wheels
fr = (Vx*sin(pi/4) - Vy*cos(pi/4) - (Lx + Ly)*omega);
fl = (Vx*sin(3*pi/4) - Vy*cos(3*pi/4) - (Lx + Ly)*omega);
rl = (Vx*sin(5*pi/4) - Vy*cos(5*pi/4) - (Lx + Ly)*omega);
rr = (Vx*sin(7*pi/4) - Vy*cos(7*pi/4) - (Lx + Ly)*omega);
%% Display the wheel velocities
fprintf('\tFront Left: %.2f (rad/s)\n', fl);
fprintf('\tFront Right: %.2f (rad/s)\n', fr);
fprintf('\tRear Left: %.2f (rad/s)\n', rl);
fprintf('\tRear Right: %.2f (rad/s)\n', rr);
