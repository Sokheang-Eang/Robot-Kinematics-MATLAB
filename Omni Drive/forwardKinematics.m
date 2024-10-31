function [vx, vy, omega] = forwardKinematics(Vfr, Vfl, Vrl, Vrr, L)
% For calculate velocity of Robot
vx = 0.25*(sin(pi/4)*Vfr + sin(3*pi/4)*Vfl + sin(5*pi/4)*Vrl + sin(7*pi/4)*Vrr);
vy = 0.25*(-cos(pi/4)*Vfr - cos(3*pi/4)*Vfl - cos(5*pi/4)*Vrl - cos(7*pi/4)*Vrr);
omega = 0.25*(L*Vfr + L*Vfl + L*Vrl + L*Vrr);
end
