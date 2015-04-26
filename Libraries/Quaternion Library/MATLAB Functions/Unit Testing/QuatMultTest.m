% Tests the QuatMult.m function

%% Initialize variables
iterations = 50;

axis1 = [0 1 0]';
angle1 = pi/4;
q1 = AxisAngle2Quat(axis1, angle1);

axis2 = [0 0 1]';
angle2 = linspace(0, 2*pi, iterations);
q2 = zeros(4, iterations);
for i = 1 : iterations
    q2(:,i) = AxisAngle2Quat(axis2, angle2(i));
end

%% Run the test
for i = 1 : iterations
    q_21 = QuatMult(q2(:,i), q1);
    QuatPlot(q_21, figure(1));
    pause(.1);
end