function ledsequence= showPattern(board,Length,delay)
    for i=10:13
      pinMode(board,i,'OUTPUT');      
    end
ledsequence = randi([10,13],1,Length);  
j=1;
  while j<=Length
      digitalWrite(board,ledsequence(j),1);
      pause(delay);
      digitalWrite(board,ledsequence(j),0);
      pause(delay); 
      j=j+1;
  end
  
return