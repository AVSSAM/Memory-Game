%seven segment display
%display numbers
function SSD(board,digit)
for i=2:8
    pinMode(board,i,'OUTPUT');
end
    pins = [0 0 0 0 0 0 0; ...  %off
            1 1 1 1 1 1 0; ...  % 0
            0 1 1 0 0 0 0; ...  % 1
            1 1 0 1 1 0 1; ...  % 2
            1 1 1 1 0 0 1; ...  % 3
            0 1 1 0 0 1 1; ...  % 4
            1 0 1 1 0 1 1; ...  % 5
            1 0 1 1 1 1 1; ...  % 6
            1 1 1 0 0 0 0; ...  % 7
            1 1 1 1 1 1 1; ...  % 8
            1 1 1 1 0 1 1; ...  % 9
            1 0 0 1 1 1 1; ...  %Easy
            0 1 1 0 1 1 1; ...  %Hard
                                ];
if strcmp(digit,'OFF')
    row=1;
elseif digit>='0'&&digit<='9'
    row=digit-'0'+2;
elseif strcmp(digit,'E')
    row=12;  
elseif strcmp(digit,'H')
    row=13; 
end
for i=2:8
    digitalWrite(board,i,pins(row,i-1));
end
return