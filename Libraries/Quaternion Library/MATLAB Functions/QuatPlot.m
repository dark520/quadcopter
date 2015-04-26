function QuatPlot(q, fig_handle)
% Plots the given quaternion
    coord_sys = [QuatRotate(q, [1 0 0]') QuatRotate(q, [0 1 0]') QuatRotate(q, [0 0 1]')];
    figure(fig_handle)
    plot3([0 coord_sys(1,1)], [0 coord_sys(2,1)], [0 coord_sys(3,1)], 'b')
    hold on;
    plot3([0 coord_sys(1,2)], [0 coord_sys(2,2)], [0 coord_sys(3,2)], 'g')
    plot3([0 coord_sys(1,3)], [0 coord_sys(2,3)], [0 coord_sys(3,3)], 'r')
    plot3([0 1], [0 0], [0 0], 'k')
    plot3([0 0], [0 1], [0 0], 'k')
    plot3([0 0], [0 0], [0 1], 'k')
    xlabel('X')
    ylabel('Y')
    zlabel('Z')
    xlim([-1 1]);
    ylim([-1 1]);
    zlim([-1 1]);
    axis square
    hold off;
end

