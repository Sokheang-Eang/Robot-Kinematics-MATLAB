close all, clear all, clc;
%% Robot Parameter
R = 0.1;     % wheel radius (m)
L = 0.5;     % wheelbase in (m)
v_x = 0.5;   % linear velocity (m/s)
omega = 0.1; % angular velocity (rad/s)
%% Function compute
[v_left, v_right] = inverseKinematicsDifferential(v_x, omega, R, L);
disp(['Left Wheel Velocity: ', num2str(v_left), ' m/s']);
disp(['Right Wheel Velocity: ', num2str(v_right), ' m/s']);