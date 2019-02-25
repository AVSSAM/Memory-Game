function winbuz(board,p)
analogWrite(board,p,100);
pause(0.1);
analogWrite(board,p,0);
pause(0.2);
analogWrite(board,p,64);
pause(0.1);
analogWrite(board,p,0);
pause(0.1);
analogWrite(board,p,255);
pause(1);
for j=1:9
     k=num2str(j);
     SSD(board,k);
     pause(0.1);
end
SSD(board,'OFF');
analogWrite(board,p,0);

return