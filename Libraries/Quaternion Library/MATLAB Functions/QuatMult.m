function q_21 = QuatMultiply( q_1, q_2 )
% Takes the two quaternions q_1 and q_2 and returns an equivalent quaternion
% that represents rotating by q_1, then by q_2.
% 
% Entry condition:
%  - Quaternions q_1 and q_2 are normalized.
% 
% Exit condition:
%  - Quaternion output is normalized.

% Break up each quaternion into its vector and scalar parts
q1_v = q_1(1:3);
q1_w = q_1(4);
q2_v = q_2(1:3);
q2_w = q_2(4);

% Construct the final vector per Dantam (2014), Eq (10)
q_21 = [ cross(q2_v, q1_v) + q1_w*q2_v + q2_w*q1_v;... 
        q1_w*q2_w + dot(q1_v, q2_v)];

end

