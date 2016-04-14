% Attach to the target computer file system.
f=SimulinkRealTime.fileSystem;

% Open the file, read the data, close the file.
h=f.fopen('E:\SUPR_001.DAT');
supervisory_data=f.fread(h);
f.fclose(h);

% Unpack data
supervisory = SimulinkRealTime.utils.getFileScopeData(supervisory_data);
t = supervisory.data(:,end);

% Medulla error codes
plot_fscope('Error Codes', t, supervisory.data(:,5:11),{'backR';'frontR';'backL';'frontL';'lateralR';'lateralL';'boom'},'Medulla Error Codes','Time (sec)','Value',[0 130]);

% % Motor Temperatures
% adc_values =((supervisory.data(:,12:17) - 172.0) * (2.70/(4095.0)));
% temperatures = ((1.0./( (1.0/298.15) + (1.0/3988.0)*log(4700.0./((3.26./adc_values) - 1.0)/10000))) - 273.15);   
% plot_fscope('Thermistors', t, temperatures,{},'Motor Temperatures','Time (sec','Degrees (C)', 'auto');
% 
% % Logic voltages
% adc_values =((supervisory.data(:,18) - 172.0) * (2.70/(4095.0)));
% logic_voltages = adc_values*6.0;
% plot_fscope('Logic Voltages', t, logic_voltages,{},'Logic Voltages','Time (sec)','Volts','auto');
% 
% % Motor voltages
% motor_voltages = (supervisory.data(:,19) - 1300) * 60.2 / (3600 - 1300);
% plot_fscope('Motor Voltages', t, motor_voltages,{},'Motor Voltages','Time (sec)','Volts','auto');

