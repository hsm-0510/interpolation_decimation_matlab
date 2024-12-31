% Define example signal equation
t = linspace(0, 1, 1000);
x = sin(2*pi*10*t) + 0.5*sin(2*pi*30*t) + 0.1*sin(2*pi*50*t);

% Plot original signal in time and frequency domains
subplot(2,2,1)
plot(t, x)
title('Original Signal (Time Domain)')
xlabel('Time (s)')
ylabel('Amplitude')
subplot(2,2,2)
NFFT = 1024;
f = linspace(0, 1, NFFT/2+1)*1000;
X = abs(fft(x, NFFT));
X = X(1:NFFT/2+1);
plot(f, X)
title('Original Signal (Frequency Domain)')
xlabel('Frequency (Hz)')
ylabel('Magnitude')

% Decimate signal by a factor of 2
fs = 200
y_dec = decimate(x, 2);
fs_dec = 2*fs;

% Plot decimated signal in time and frequency domains
subplot(2,2,3)
t_dec = linspace(0, 1, length(y_dec));
stem(t_dec, y_dec)
title('Decimated Signal (Time Domain)')
xlabel('Time (s)')
ylabel('Amplitude')
subplot(2,2,4)
f_dec = linspace(0, 1, length(y_dec)/2+1)*fs_dec/2;
Y_dec = abs(fft(y_dec, NFFT));
Y_dec = Y_dec(1:length(y_dec)/2+1);
plot(f_dec, Y_dec)
title('Decimated Signal (Frequency Domain)')
xlabel('Frequency (Hz)')
ylabel('Magnitude')

% Interpolate signal by a factor of 2
y_int = interp(x, 2);
fs_int = 2*fs;

% Plot interpolated signal in time and frequency domains
figure()
subplot(2,2,1)
t_int = linspace(0, 1, length(y_int));
stem(t_int, y_int)
title('Interpolated Signal (Time Domain)')
xlabel('Time (s)')
ylabel('Amplitude')
subplot(2,2,2)
f_int = linspace(0, 1, length(y_int)/2+1)*fs_int/2;
Y_int = abs(fft(y_int, NFFT));
Y_int = Y_int(1:length(y_int)/2+1);
plot(f_int, Y_int)
title('Interpolated Signal (Frequency Domain)')
xlabel('Frequency (Hz)')
ylabel('Magnitude')

% Compare original and interpolated signals in frequency domain
figure()
subplot(2,1,1)
plot(f, X)
title('Original Signal (Frequency Domain)')
xlabel('Frequency (Hz)')
ylabel('Magnitude')
subplot(2,1,2)
plot(f_int, Y_int)
title('Interpolated Signal (Frequency Domain)')
xlabel('Frequency (Hz)')
ylabel('Magnitude')