% Tests the QuatRotate.m function.

%% Initialize variables
iterations = 1000;

axis = [0;0;1];
angle = linspace(0, 2*pi, iterations);

vec(1:3,1) = [1;0;0];
vec(1:3,2) = [0;1;0];
vec(1:3,3) = [0;0;1];
quats = zeros(4, 3*iterations);
vec_rot_truth = zeros(3, 3*iterations);
vec_rot_calc = zeros(3, 3*iterations);

%% Run test calculations
for j = 1 : 3
    for i = 1 : iterations
       quats(:, (j-1)*iterations + i) = AxisAngle2Quat(axis, angle(i));
       vec_rot_calc(:, (j-1)*iterations + i) = QuatRotate(quats(:, i), vec(:,j));
    end
end

%% Run truth calculations
for i = 1 : iterations
   vec_rot_truth(:, i) = [cos(angle(i));sin(angle(i));0];
end
for i = 1 : iterations
   vec_rot_truth(:, iterations+i) = [-sin(angle(i));cos(angle(i));0];
end
for i = 1 : iterations
   vec_rot_truth(:, 2*iterations+i) = [0;0;1];
end

%% Compare truth to test calculations
tol = 1e-15;
diff = abs(vec_rot_truth - vec_rot_calc);

if(max(diff) > tol)
    error('Function has failed unit test.')
else
    disp('Funtion has passed unit test.')
end