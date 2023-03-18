clc
clear all
close all

%% Initalization

board = [{0,0,0,0,0,0,0,0};
         {0,0,0,0,0,0,0,0};
         {0,0,0,0,0,0,0,0};
         {0,0,0,0,0,0,0,0};
         {0,0,0,0,0,0,0,0};
         {0,0,0,0,0,0,0,0};
         {0,0,0,0,0,0,0,0};
         {0,0,0,0,0,0,0,0};];


%% Solving for first two solutions

% IC board{1,1}
subplot(1,2,1)    
x = [1, 2, 2, 1, -1, -2, -2, -1];
y = [2, 1, -1, -2, -2, -1, 1, 2];
[success, iterations] = solve(board,8,1,1,x,y,1,0)
title("Solution 1")

 subplot(1,2,2) 
 x = [2, 1, -1, -2, -2, -1, 1, 2]; 
 y = [1, 2, 2, 1, -1, -2, -2, -1]; 
[success, iterations] = solve(board,8,1,1,x,y,1,0) 
title("Solution 2 (Mirror of Solution 1)")

%% Solving next eight

board
figure

% IC board{8,8}
subplot(3,2,1)    
x = [-1, -2, -2, -1, 1, 2, 2, 1];
y = [-2, -1, 1, 2, 2, 1, -1, -2];
[success, iterations] = solve(board,8,8,8,x,y,1,0)
title("Solution 3")

 subplot(3,2,2) 
 x = [-2, -1, 1, 2, 2, 1, -1, -2]; 
 y = [-1, -2, -2, -1, 1, 2, 2, 1]; 
[success, iterations] = solve(board,8,8,8,x,y,1,0) 
title("Solution 4 (Mirror of Solution 3)")


% IC board{1,8}
subplot(3,2,3)    
x = [1, 2, 2, 1, -1, -2, -2, -1];
y = [-2, -1, 1, 2, 2, 1, -1, -2];
[success, iterations] = solve(board,8,1,8,x,y,1,0)
title("Solution 5")

 subplot(3,2,4) 
 x = [2, 1, -1, -2, -2, -1, 1, 2]; 
 y = [-1, -2, -2, -1, 1, 2, 2, 1]; 
[success, iterations] = solve(board,8,1,8,x,y,1,0) 
title("Solution 6 (Mirror of Solution 5)")


% IC board{8,1}
subplot(3,2,5)    
 x = [-1, -2, -2, -1, 1, 2, 2, 1]; 
 y = [2, 1, -1, -2, -2, -1, 1, 2]; 
[success, iterations] = solve(board,8,8,1,x,y,1,0)
title("Solution 7")

 subplot(3,2,6) 
 x = [-2, -1, 1, 2, 2, 1, -1, -2]; 
 y = [1, 2, 2, 1, -1, -2, -2, -1]; 
[success, iterations] = solve(board,8,8,1,x,y,1,0) 
title("Solution 8 (Mirror of Solution 7)")
