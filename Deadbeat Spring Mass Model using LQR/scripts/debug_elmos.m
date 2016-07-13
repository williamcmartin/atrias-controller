
figure('Name','Elmo Statuses'); 
plot(time_recorded*correctedSampleTime/sample_time,elmo_statuses_recorded);
legend('Right Back','Right Front','Left Back','Left Front');

figure('Name','Elmo Error Codes'); 
plot(time_recorded*correctedSampleTime/sample_time,elmo_error_codes_recorded);
legend('Right Back','Right Front','Left Back','Left Front');

% 65312 (0xFF20) -> Safety detected (estop line)
% 12576 (0x3120) -> Amplifier Undervoltage 