close all, clear all  clc;
%% Robot Parameter
wheel_redius = 0.05;
Lx = 0.5;
Ly = 0.5;
%% Robot Velocity
Vx = 0.2; % Linear_x Velocity (m/s)
Vy = 0.2; % Linear_y Velocity (m/s)
Omega = 0.00; % Angular Velocity (rad/s)
%% Function compute
[Vfl,Vfr,Vrl,Vrr] = inverseKinematicsMecanum(Vx,Vy,Omega,Lx,Ly,wheel_redius);
disp(['Front Left Wheel : ', num2str(Vfl), ' m/s']);
disp(['Front Right Wheel: ', num2str(Vfr), ' m/s']);
disp(['Rear Left Wheel : ', num2str(Vrl), ' m/s']);
disp(['Rear Right Wheel: ', num2str(Vrr), ' m/s']);