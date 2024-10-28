function [Vfl,Vfr,Vrl,Vrr] = inverseKinematicsMecanum(Vx, Vy, Omega, Lx, Ly, R)
% Vfl - Front Left Wheel Speed
% Vfr - Front right Wheel Speed
% Vrl - Rear Left Wheel Speed
% Vrr - Rear Right Wheel Speed
% Lx  - From Robot Center to X wheel
% Ly  - From Robot Center to Y wheel
Vfl = (Vx - Vy - (Lx + Ly)*Omega)*(1/2*pi*R);
Vfr = (Vx + Vy + (Lx + Ly)*Omega)*(1/2*pi*R);
Vrl = (Vx + Vy - (Lx + Ly)*Omega)*(1/2*pi*R);
Vrr = (Vx - Vy + (Lx + Ly)*Omega)*(1/2*pi*R);
end