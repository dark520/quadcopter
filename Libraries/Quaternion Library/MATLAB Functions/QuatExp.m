function exp_q = QuatExp(q)
% Returns the value of e^q.

qv = q(1:3);
qw = q(4);

exp_q_v = qv*sin(norm(qv))/norm(qv);
exp_q_w = cos(norm(qv));

exp_q = exp(qw)*[exp_q_v; exp_q_w];

end

