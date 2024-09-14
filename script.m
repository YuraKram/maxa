close all; clear all; clc;
L = 0.0047;
J = 0.0023766912;
R = 12.263574138575136;
k_e = 0.5447005537429133;
k_m = 0.5447005537429133;
K_s = 20;
K_r = 35;
r = 0.021;
B = 0.165;
time = 100;
figure(1)
hold on
grid minor;
x_finish = [0, -0.3, -0.6, -0.9, -0.9, -0.6, 0, 0.6, 0.9, 0.9, 0.6, 0.3, 0]
y_finish = [0.7, 0.9, 0.9, 0.6, 0.2, -0.3, -0.9, -0.3, 0.2, 0.6, 0.9, 0.9, 0.7]

th0 = 0;
x0 = 0;
y0 = 0;
for i = 1:13
    goal_x = x_finish(i);
    goal_y = y_finish(i);
    sim_data = sim("lab4_sim3.slx");
    plot(sim_data.x.Data, sim_data.y.Data, LineWidth=3);
    th0 = sim_data.th0.Data(end)
    x0 = sim_data.x.Data(end)
    y0 = sim_data.y.Data(end)
end
