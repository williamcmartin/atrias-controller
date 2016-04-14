% ref: http://obasic.net/how-to-send-e-mail-from-matlab

setpref('Internet', 'E_mail', 'ggroupsimulators@gmail.com');
setpref('Internet', 'SMTP_Username', 'ggroupsimulators@gmail.com');
setpref('Internet', 'SMTP_Password', 'geyer_wean1324');
setpref('Internet', 'SMTP_Server', 'smtp.gmail.com');
props = java.lang.System.getProperties;
props.setProperty('mail.smtp.auth','true');
props.setProperty('mail.smtp.socketFactory.class', 'javax.net.ssl.SSLSocketFactory');
props.setProperty('mail.smtp.socketFactory.port', '465');


%
%example code to send email:
% sendmail('YOURMAIL@gmail.com', 'Matlab_test', 'Simulator_01_done')
%