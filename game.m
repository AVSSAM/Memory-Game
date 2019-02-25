%starting sound
x 



%starting the game
% choosing game mode
board=a;
for i=1:3
    startbuz(board,9);
    pause(0.1);
end
round=1;level=1;points=0;
disp('Enter Mode')
pushbutton(board);
mode=ans;

if mode==1
    SSD(board,'E');t=1;Length=3;
elseif mode==2
    SSD(board,'H');t=0.5;Length=5;
else
     losebuz(board,9);
     disp('lose');
     
     round=4;level=10;
end

while level<=9
    levelbuz(board,9);
    while round<=3
        delay=t;
        disp('GET READY');
        pause(5);
        roundbuz(board,9);
        showPattern(board,Length,delay);
        ledsequence=ans;
        %user input
        ldrupdate(board,Length);
        inputsequence=ans;
        
        if length(ledsequence)~=length(inputsequence)
            losebuz(board,9);
            disp('lose');
            round=4;level=10;
        else
         if prod(ledsequence==inputsequence)==1
            winbuz(board,9);
            round=round+1;
            disp('Getready')
            pause(5);
         elseif prod(ledsequence==inputsequence)==0
            losebuz(board,9);
            disp('lose');
            round=4;level=10;pause(5);
            SSD(board,'OFF')
         end
        end
    end
    
    if ledsequence==inputsequence
        points=points+1;
        points=num2str(points);
        SSD(board,points);
        points=str2num(points);
        disp('won');
        level=level+1;
        round=1;Length=Length+1;
    end
end
fprintf('YOUR FINAL SCORE IS %d\n',points);
if ledsequence==inputsequence
    disp('WINNER');
    for i=1:3
        winbuz(board,9);
    end
    SSD(board,points);
else
    disp('TRY AGAIN......');
end
