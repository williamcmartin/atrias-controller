% Attach to the target computer file system.
f=xpctarget.fs;

% Open the file, read the data, close the file.
h=fopen(f,'E:\SUPR_001.DAT');
limit_data=fread(f,h);
fclose(f,h);

% Unpack data
limit = readxpcfile(limit_data);

% Go through last value of each signal
number_of_signals = 4;
data_pts = size(limit.data,1);
last_states = limit.data(end, 1:number_of_signals);
for i=1:number_of_signals
    switch i
        case 1
            disp('Back Right:');
        case 2
            disp('Front Right:');
        case 3
            disp('Back Left:');
        case 4
            disp('Front Left:');
    end

    triggered = zeros(1,8);
    for k=1:data_pts
        for j=0:7
            if(triggered(j+1)), continue; end
            
            if(bitand(limit.data(k, i), bitshift(1,j))) 
                fprintf('\tSwitch %d triggered!\n',j+1);
                triggered(j+1) = 1;
            end
        end
    end
    if(sum(triggered) == 0)
        fprintf('\tClear!\n');
    end
end

figure('name','Limit Switches');
plot(limit.data(:, 1:4))