function roundbuz(board,p)
analogWrite(board,p,63);
pause(0.2);
analogWrite(board,p,255);
pause(0.4);
analogWrite(board,p,64);
pause(0.6);
analogWrite(board,p,0);
return
