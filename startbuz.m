function startbuz(board,p)
analogWrite(board,p,255);
pause(0.3);
analogWrite(board,p,0);
pause(0.1);
analogWrite(board,p,64);
pause(0.3);
analogWrite(board,p,0);
pause(0.1); 
analogWrite(board,p,100);
pause(0.3); 
analogWrite(board,p,0);
pause(0.1);
analogWrite(board,p,30); 
pause(0.3); 
analogWrite(board,p,0);
for i=10:10:80  
    analogWrite(board,p,i);  
    pause(0.1); 
end
analogWrite(board,p,255);
pause(0.5); 
analogWrite(board,p,0); 
return   
