function mode= pushbutton(board)

mode=0;w=1;e=0;
tic;
while w==1&&e<=10
    e=toc;
    but1=analogRead(board,4);
    but2=analogRead(board,5);

    if (but1==0)
         mode=1;
         disp('Easy mode');
    end

    if (but2==0)
         mode=2;
         disp('Hard mode');
    end

    if (but1==0&&but2==0)
 
         disp('Starting the game');
         w=0;
    end 
end
return