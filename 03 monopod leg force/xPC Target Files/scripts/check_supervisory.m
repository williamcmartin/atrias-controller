% Attach to the target computer file system.
f=xpctarget.fs;

% Open the file, read the data, close the file.
h=fopen(f,'E:\SUPR_001.DAT');
supervisory_data=fread(f,h);
fclose(f,h);

% Unpack data
supervisory = readxpcfile(supervisory_data);
t = supervisory.data(:,end);

% Medulla error codes
plot_fscope('Error Codes', t, supervisory.data(:,5:11),{'backR';'frontR';'backL';'frontL';'lateralR';'lateralL';'boom'},'Medulla Error Codes','Time (sec)','Value',[0 130]);

% % Motor voltages
% motor_voltages = (supervisory.data(:,12:15) - 1300) * 60.2 / (3600 - 1300);
% plot_fscope(201, t, motor_voltages,{'backR';'frontR';'backL';'frontL'},'Motor Voltages','Time (sec)','Volts',[0 70]);
% 
% Logic voltages
%plot_fscope('Logic Voltages', t, supervisory.data(:,16:19),{'backR';'frontR';'backL';'frontL'},'Logic Voltages','Time (sec)','ADC value',[0 5000]);
 
% Temperature
%plot_fscope(203, t, supervisory.data(:,20:25),{'1';'2';'3';'4';'5';'6'},'FrontR Motor Temperature','Time (sec)','ADC value',[0 6000]);
%plot_fscope('Thermistors', t, supervisory.data(:,12:17),{'1';'2';'3';'4';'5';'6'},'BackL Motor Temperature','Time (sec)','ADC value',[0 6000]);
