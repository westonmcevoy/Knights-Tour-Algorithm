function result = valid2(nxt_row, nxt_col, N, board)
Codeif (nxt_row > 0 && nxt_row <= N && nxt_col > 0 && nxt_col <= N && board{nxt_row,nxt_col} == -1)
    result = 1;
else
    result = 0;
end
end



