function v_rot = QuatRotate(q, v)
%Rotates the given vector, v, by the given quaternion, q.
% 
% Entry condition:
%  - Quaternion must be normalized.

qv = q(1:3);
qw = q(4);

a = cross(qv, v) + qw*v;
b = cross(qv, a);
v_rot = 2*b + v;

end

