% initialize frames to measure average velocities from
init_start = 1;
init_end = 50;
final_start = 2100;
final_end = 2150;

% import for all docs
% num = 48;
% M = readtable('C:\Users\alexn\Documents\senior_thesis\2_28_2024\2_28_2024_Alex '+string(num)+'.csv', 'ReadVariableNames', false);
% numRows = height(M) + 2;
% M = readmatrix('C:\Users\alexn\Documents\senior_thesis\2_28_2024\2_28_2024_Alex '+string(num)+'.csv', 'Range', 'A6:H'+string(numRows));

freq = 50;
duty = 9;
M = readtable('C:\Users\alexn\Documents\senior_thesis\3_11_2024\3_11_2024 Alex actuator1 '+string(freq)+' '+string(duty)+'.csv', 'ReadVariableNames', false);
numRows = height(M) + 2;
M = readmatrix('C:\Users\alexn\Documents\senior_thesis\3_11_2024\3_11_2024 Alex actuator1 '+string(freq)+' '+string(duty)+'.csv', 'Range', 'A6:H'+string(numRows));

% unit processing
M(:,2) = M(:,1) / 120;
M(:,3) = M(:,3) * 180 / pi;
M(:,4) = M(:,4) * 180 / pi;
M(:,5) = M(:,5) * 180 / pi;

close all;
subplot(2, 2, 1);
% plot(M(:,1), M(:,3));
% hold on;
% plot(M(:,1), M(:,4));
plot(M(:,1), M(:,5));
% legend({'angular disp. in X dir. (degree)', 'angular disp. in Y dir. (degree)', 'angular disp. in Z dir. (degree)'}, 'Location', 'east');
legend({'angular pos. in degrees'});
grid minor;
grid on;
hold off;

subplot(2, 2, 3);
plot(M(:,1), M(:,6));
legend({'X pos. (mm)'});
grid minor;
grid on;
hold off;

subplot(2, 2, 4);
plot(M(:,1), M(:,7));
legend({'Y pos. (mm)'});
grid minor;
grid on;
hold off;

% calculate angular velocity
init_angle = mean(M(init_start:init_end,5), "all");
final_angle = mean(M(final_start:final_end,5), "all");
avg_angle_vel = (final_angle - init_angle) / 15;
disp("ANGLE: ");
% disp(init_angle);
% disp(final_angle);
disp(avg_angle_vel);

% calculate x velocity
init_x = mean(M(init_start:init_end,6), "all");
final_x = mean(M(final_start:final_end,6), "all");
avg_x_vel = (final_x - init_x) / 15;
disp("X: ");
% disp(init_x);
% disp(final_x);
disp(avg_x_vel);

% calculate y velocity
init_y = mean(M(init_start:init_end,7), "all");
final_y = mean(M(final_start:final_end,7), "all");
avg_y_vel = (final_y - init_y) / 15;
disp("Y: ");
% disp(init_y);
% disp(final_y);
disp(avg_y_vel);

% figure();
% dy=diff(M(:,5),(M(:,2)));
% plot(M(2:end, 2),dy);
% grid on;
% 
% S = smoothdata(M,"gaussian",100);
% figure();
% plot(S(:,2), S(:,5));
% grid on;
% 
% figure();
% dyS=diff(S(:,5),(S(:,2)));
% plot(S(2:end, 2),dyS);
% grid on;

% figure();
% plot(M(:,2), M(:,3));
% hold on;
% plot(M(:,2), M(:,4));
% plot(M(:,2), M(:,5));
% legend({'RX (rad)', 'RY (rad)', 'RZ (rad)'}, 'Location', 'east');
% grid minor;
% grid on;
% hold off;
% 
% figure();
% plot(M(:,2), M(:,6));
% hold on;
% plot(M(:,2), M(:,7));
% plot(M(:,2), M(:,8));
% legend({'TX (mm)', 'TY (mm)', 'TZ (mm)'}, 'Location', 'east');
% grid minor;
% grid on;
% hold off;

