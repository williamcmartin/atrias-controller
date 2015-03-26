% t : time vector
% deflections : spring deflection vector (4 columns - backR frontR backL frontL)

Fs = 250;                    % Sampling frequency
T = 1/Fs;                    % Sample time
range = t>29.08 & t<31.13;
t_shortened = t(range);
y = pos.data(range,2);
L = length(t_shortened);


figure(800)
clf

subplot(211)

plot(Fs*t_shortened,y)
title('Signal over Time')
xlabel('time (milliseconds)')


NFFT = 2^nextpow2(L); % Next power of 2 from length of y
Y = fft(y,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2+1);

% Plot single-sided amplitude spectrum.
subplot(212)
plot(f,2*abs(Y(1:NFFT/2+1))) 
title('Single-Sided Amplitude Spectrum of y(t)')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')