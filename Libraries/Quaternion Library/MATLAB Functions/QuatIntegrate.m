function q_1 = QuatIntegrate(q_0, w, dt)
% Integrates quaternion q through the rotation given by w over the time
% period dt.

q_omega = QuatExp([w*dt/2;0]);
q_1 = QuatMult(q_omega, q_0);

end

