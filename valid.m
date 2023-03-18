function result = valid(nxt_row, nxt_col, N, board)
if (nxt_row > 0 && nxt_row <= N && nxt_col > 0 && nxt_col <= N && board{nxt_row,nxt_col} == 0 && ~(nxt_row == 0 && nxt_col == 0))
    result = 1;
else
    result = 0;
end
end

