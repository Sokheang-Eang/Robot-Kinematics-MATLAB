function [VL,VR] = inverseKinematicsDifferential(V, omega, R, L)
% V     - linear Velocity (m/s)
% omega - angular velocity(m/s)
% R     - robot radius (m)
% L     - robot width  (m)
VL = (2*V - omega*L)/(2*R); % left wheel speeed (m/s)
VR = (2*V + omega*L)/(2*R); % right wheel speeed (m/s)
end