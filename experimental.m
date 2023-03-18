clc
clear
close all


%% Possible Knight Moves

plot(3,3,'*g','LineWidth',5)
hold on
axis([0 6 0 6])
grid on
plot(4,5,'*bl','LineWidth',5)
plot(4,1,'*bl','LineWidth',5)
plot(5,4,'*r','LineWidth',5)
plot(5,2,'*r','LineWidth',5)
plot(2,5,'*bl','LineWidth',5)
plot(2,1,'*bl','LineWidth',5)
plot(1,4,'*r','LineWidth',5)
plot(1,2,'*r','LineWidth',5)
title("Possible Knight Moves")
xlabel("Column")
ylabel("Row")


%% Move Matrices

x = [1, 2, 2, 1, -1, -2, -2, -1]
y = [2, 1, -1, -2, -2, -1, 1, 2]


%% Same values of m but different moves

figure
plot(2,1,'*g','LineWidth',5)
hold on
axis([0 4 0 4])
axis equal
xticks([ 0 1 2 3 4])
yticks([ 0 1 2 3 4])
grid on
axis equal
plot(3,3,'*bl','LineWidth',5)
plot(1,2,'*r','LineWidth',5)
plot([2 2 3],[1 3 3],'k')
plot([1 3 3],[2 2 3],'--k')
legend('Start','Middle','End','m(t)','m(t+1)')
title("Same values of |m(t)| and |m(t+1)| but different moves ")
xlabel("Column")
ylabel("Row")


%% Proof-accepted moves
figure
plot(2,1,'*g','LineWidth',5)
hold on
axis([0 4 0 4])
axis equal
xticks([ 0 1 2 3 4])
yticks([ 0 1 2 3 4])
grid on
axis equal
plot(3,3,'*bl','LineWidth',5)
plot(1,2,'*r','LineWidth',5)
plot([2 2 3],[1 3 3],'k')
plot([1 3 3],[2 2 3],'--k')
plot([3 3 2],[2 1 1],'--k')
legend('Start','Middle','End','m(t)','m(t+1)')
title("Possible moves, m(t+1), accepted by the proof")
xlabel("Column")
ylabel("Row")


%% Program accepted move
figure
plot(2,1,'*g','LineWidth',5)
hold on
axis([0 4 0 4])
axis equal
xticks([ 0 1 2 3 4])
yticks([ 0 1 2 3 4])
grid on
axis equal
plot(3,3,'*bl','LineWidth',5)
plot(1,2,'*r','LineWidth',5)
plot([2 2 3],[1 3 3],'k')
plot([1 3 3],[2 2 3],'--k')
legend('Start','Middle','End','m(t)','m(t+1)')
title("Possible moves, m(t+1), accepted by the program")
xlabel("Column")
ylabel("Row")
