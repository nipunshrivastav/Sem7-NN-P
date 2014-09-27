%% Power Spectral Density Estimates Using FFT
% http://www.mathworks.in/help/signal/ug/psd-estimate-using-fft.html
clear all;clc; close all;


x = data(1,1,:);
x = reshape(x,8064,1);
x = x';
N = length(x);
Fs = 128;
% Sampling Frequency
xdft = fft(x);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)).*abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq = 0:Fs/length(x):Fs/2;
figure,plot(freq,10*log10(psdx)); grid on;
title('Periodogram Using FFT');
xlabel('Frequency (Hz)'); ylabel('Power/Frequency (dB/Hz)');


%% Estimating the Power via PSD
[Pxx_hamming, F] = periodogram(x, hamming(N), [], Fs, 'psd');
power_freqdomain = bandpower(Pxx_hamming, F,[4, 8], 'psd');
figure, plot(F,Pxx_hamming);

p = bandpower(pxx,f,[],psdflag);






