clc;
clear;

%% Known FFT values from LTspice output
signal_db = -1;          % 6 kHz signal

noise_db = [-40 -40 -40];   % 600 Hz, 18 kHz, 55 kHz (approx values)

%% Convert noise from dB to power
noise_power = sum(10.^(noise_db/10));

%% Convert total noise back to dB
noise_total_db = 10*log10(noise_power);

%% Compute SNR
SNR = signal_db - noise_total_db;

fprintf('\n------ OUTPUT SNR CALCULATION ------\n');
fprintf('Signal (6 kHz) : %.2f dB\n',signal_db);
fprintf('Total Noise    : %.2f dB\n',noise_total_db);
fprintf('SNR            : %.2f dB\n',SNR);

%% Transient amplitude information
Vmin = 0.5;   % volts
Vmax = 1.6;   % volts

Vpp = Vmax - Vmin;
Vrms = Vpp/(2*sqrt(2));

fprintf('\n------ TRANSIENT SIGNAL INFO ------\n');
fprintf('Vmin : %.2f V\n',Vmin);
fprintf('Vmax : %.2f V\n',Vmax);
fprintf('Vpp  : %.2f V\n',Vpp);
fprintf('Approx Vrms : %.3f V\n',Vrms);


%% Signal
Vs = 0.4/(2*sqrt(2));   % 6 kHz signal RMS

%% Noise components
n1 = 0.8/(2*sqrt(2));   % 600 Hz sine
n2 = 1.2/2;             % 18 kHz square
n3 = 2/(2*sqrt(2));     % 55 kHz sine
n4 = 0.150;             % broadband noise RMS

%% Total noise RMS
Vn = sqrt(n1^2 + n2^2 + n3^2 + n4^2);

%% SNR
SNR_in = 20*log10(Vs/Vn);

fprintf("Signal RMS = %.3f V\n",Vs);
fprintf("Total Noise RMS = %.3f V\n",Vn);
fprintf("Input SNR = %.2f dB\n",SNR_in);