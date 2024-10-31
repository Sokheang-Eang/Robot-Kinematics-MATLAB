close all, clear all, clc;
% Robot parameter
L = 0.3;    % Distance from center to wheel 
Vfr = -1.0;  % Front-right wheel speed 
Vfl = 0.0;  % Front-left wheel speed 
Vrl = 1.0;  % Rear-left wheel speed 
Vrr = 0.0;  % Rear-right wheel speed 
% Compute Function
[Vx ,Vy, Omega] = forwardKinematics(Vfr, Vfl, Vrl, Vrr, L);
% display data
fprintf('\tlinear_x velocity: %.2f (m/s)\n', Vx);
fprintf('\tlinear_y velocity: %.2f (m/s)\n', Vy);
fprintf('\tangular velocity: %.2f (rad/s)\n', Omega);
