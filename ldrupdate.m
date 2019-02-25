function inputsequence=  ldrupdate(board,Length)
for i=10:13
    pinMode(board,i,'OUTPUT');
end
count=1;u=0;tic;
  x1=analogRead(board,3);
  b1=analogRead(board,2);
  c1=analogRead(board,1);
  d1=analogRead(board,0);
inputsequence=zeros(1,Length);
while count<=Length&&u<=30
     u=toc;
     x=analogRead(board,3);
     b=analogRead(board,2);
     c=analogRead(board,1);
     d=analogRead(board,0);
   if (x>=x1+50)
    digitalWrite(board,10,1);
    pause(0.3);
    digitalWrite(board,10,0);
    inputsequence(1,count)=10;
    count=count+1;
    pause(1);
   end      
   if (b>=b1+50)
      digitalWrite(board,11,1);
      pause(0.3);
      digitalWrite(board,11,0);
      inputsequence(1,count)=11;
      count=count+1;
      pause(1);
   end        
   if (c>=c1+50)
      digitalWrite(board,12,1);
      pause(0.3);
      digitalWrite(board,12,0);
      inputsequence(1,count)=12;
      count=count+1;
      pause(1);
   end     
   if (d>=d1+50)
      digitalWrite(board,13,1);
      pause(0.3);
      digitalWrite(board,13,0);
      inputsequence(1,count)=13;
      count=count+1;
      pause(1);
   end
end
return
