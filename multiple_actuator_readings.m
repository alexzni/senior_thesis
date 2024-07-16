num = 47;

%%

%%

M1 = readtable('C:\Users\alexn\Documents\senior_thesis\2_28_2024\2_28_2024_Alex '+string(num)+'.csv', 'ReadVariableNames', false);
numRows1 = height(M1) + 2;
M1 = readmatrix('C:\Users\alexn\Documents\senior_thesis\2_28_2024\2_28_2024_Alex '+string(num)+'.csv', 'Range', 'A6:H'+string(numRows1));
M1(:,2) = M1(:,1) / 120;

M2 = readtable('C:\Users\alexn\Documents\senior_thesis\3_04_2024\3_04_2024actuator2 '+string(num)+'.csv', 'ReadVariableNames', false);
numRows2 = height(M2) + 2;
M2 = readmatrix('C:\Users\alexn\Documents\senior_thesis\3_04_2024\3_04_2024actuator2 '+string(num)+'.csv', 'Range', 'A6:H'+string(numRows2));
M2(:,2) = M2(:,1) / 120;

M3 = readtable('C:\Users\alexn\Documents\senior_thesis\3_04_2024\3_04_2024actuator3 '+string(num)+'.csv', 'ReadVariableNames', false);
numRows3 = height(M3) + 2;
M3 = readmatrix('C:\Users\alexn\Documents\senior_thesis\3_04_2024\3_04_2024actuator3 '+string(num)+'.csv', 'Range', 'A6:H'+string(numRows3));
M3(:,2) = M3(:,1) / 120;

M4 = readtable('C:\Users\alexn\Documents\senior_thesis\3_06_2024\3_06_2024 actuator4 '+string(num)+'.csv', 'ReadVariableNames', false);
numRows4 = height(M4) + 2;
M4 = readmatrix('C:\Users\alexn\Documents\senior_thesis\3_06_2024\3_06_2024 actuator4 '+string(num)+'.csv', 'Range', 'A6:H'+string(numRows4));
M4(:,2) = M4(:,1) / 120;

close all;

figure();
plot(M1(:,2), M1(:,5));
hold on;
plot(M2(:,2), M2(:,5));
plot(M3(:,2), M3(:,5));
plot(M4(:,2), M4(:,5));
legend({'act. 1', 'act. 2', 'act. 3', 'act. 4'}, 'Location', 'southwest');
title('Angular displacement of all actuators at f = 30 Hz, duty cycle = 0.7');
xlabel("time (s)");
ylabel("RZ (rad)");
hold off;

figure();
plot(M1(:,2), M1(:,6));
hold on;
plot(M2(:,2), M2(:,6));
plot(M3(:,2), M3(:,6));
plot(M4(:,2), M4(:,6));
legend({'act. 1', 'act. 2', 'act. 3', 'act. 4'}, 'Location', 'southwest');
title('TX displacement of all actuators at f = 30 Hz, duty cycle = 0.7');
xlabel("time (s)");
ylabel("TX (mm)");
hold off;

figure();
plot(M1(:,2), M1(:,7));
hold on;
plot(M2(:,2), M2(:,7));
plot(M3(:,2), M3(:,7));
plot(M4(:,2), M4(:,7));
legend({'act. 1', 'act. 2', 'act. 3', 'act. 4'}, 'Location', 'southwest');
title('TY displacement of all actuators at f = 30 Hz, duty cycle = 0.7');
xlabel("time (s)");
ylabel("TY (mm)");
hold off;

figure();
plot(M1(:,2), M1(:,8));
hold on;
plot(M2(:,2), M2(:,8));
plot(M3(:,2), M3(:,8));
plot(M4(:,2), M4(:,8));
legend({'act. 1', 'act. 2', 'act. 3', 'act. 4'}, 'Location', 'southwest');
title('TZ displacement of all actuators at f = 30 Hz, duty cycle = 0.7');
xlabel("time (s)");
ylabel("TZ (mm)");
hold off;