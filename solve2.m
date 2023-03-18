function [success, iteration] = solve2(board, N, row, col, poss_row, poss_col, move, iteration)
if (iteration > 100000000)
        success = 0;
        return;
end
if (move==N*N)
    success = 1;
    cellplot(board)
    return;
end
for k = 1:8
    iteration = iteration+1;
    nxt_row = row + poss_row(k);
    nxt_col = col + poss_col(k);
    if valid2(nxt_row, nxt_col, N, board) == 1
        board{nxt_row,nxt_col} = move;
        [recurs, iteration] = solve2(board, N, nxt_row, nxt_col, poss_row, poss_col, move+1, iteration);   
        if (recurs == 1)
            success = 1;
            return;
        else
            board{nxt_row,nxt_col} = -1;
        end
    end
end
success = 0;      
end
