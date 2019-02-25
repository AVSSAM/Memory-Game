function losebuz(board,pin)
analogWrite(board,pin,255);
pause(0.2);
analogWrite(board,pin,30);
pause(1);
analogWrite(board,pin,0);
return