% Parameters
fs = 24000;  % Sample rate (24 kHz)
f1 = 500;    % Frequency of the first sine wave (500 Hz)
f2 = 3000;   % Frequency of the second sine wave (3000 Hz)
N = 59;      % Order of the FIR filter
cutoff = 800; % Cutoff frequency (800 Hz)

% Generate input signal (sum of two sine waves)
n = 0:239;  % Sample indices (240 samples)
x = sin(2*pi*f1*n/fs) + sin(2*pi*f2*n/fs); % Input signal

% Design the FIR filter using the Blackman window method
% Use fir1 to design a lowpass filter with the desired cutoff frequency
b = fir1(N, cutoff/(fs/2), 'low', blackman(N+1)); 

% Apply the FIR filter to the input signal using filter()
y = filter(b, 1, x);  % Output signal

% Read the TVIOut.dat file (Q0.15 format)
tviout = load('TVIOut.dat');  % Load the data from file (assuming it's a plain text file)

% Convert Q0.15 to floating-point values
tviout_float = (tviout / 2^15).';

% Plot the input signal and both output signals on the same graph
figure;
plot(n/fs, y, 'b-', 'DisplayName', 'MATLAB Filtered Output'); % MATLAB output in blue
hold on;
plot(n/fs, tviout_float, 'r-', 'DisplayName', 'C Filtered Output (TVIOut.dat)'); % C output in red
title('Filtered Output Signals (MATLAB vs C)');
xlabel('Time (seconds)');
ylabel('Amplitude');
legend('show');
grid on;

difference_signal = y - tviout_float;

% Plot the difference signal
figure;
plot(n/fs, difference_signal, 'k-', 'DisplayName', 'Sample-wise Difference (MATLAB - C)');
title('Sample-wise Difference between MATLAB and C Filter Outputs');
xlabel('Time (seconds)');
ylabel('Amplitude');
legend('show');
grid on;

% Compute the Mean Squared Error (MSE)
mse = immse(y, tviout_float);
fprintf('Mean Squared Error (MSE) between MATLAB and C output: %e\n', mse);