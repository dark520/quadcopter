function q = AxisAngle2Quat(axis, angle)
% Returns the quaternion that represents a rotation of the given angle
% around the given axis.
% 
% Entry conditions:
%  - Axis is normalized.
%  - Angle is in radians.

s = sin(angle/2);
c = cos(angle/2);

qv = axis*s;
qw = c;

q = [qv;qw];

end