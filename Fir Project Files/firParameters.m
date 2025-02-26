% Parameters
fs = 24000;       % Sampling frequency in Hz
N = 240;          % Number of samples
t = (0:N-1)/fs;   % Time vector

% Generate sinusoids
f1 = 500;         % Frequency of first sinusoid (Hz)
f2 = 3000;        % Frequency of second sinusoid (Hz)
x = sin(2*pi*f1*t) + sin(2*pi*f2*t); % Combined signal

% Normalize to Q0.15 format (signed 16-bit integer range)
x = x / max(abs(x));  % Normalize to range [-1, 1]
x_q15 = round(x * 32767); % Convert to Q0.15 format

% Ensure values are within range [-32768, 32767]
x_q15 = max(min(x_q15, 32767), -32768);

% Print C array
fprintf('int16_t test_signal[%d] = {', N);
fprintf('%d, ', x_q15(1:end-1));
fprintf('%d};\n', x_q15(end));

% Convert to Q0.15
coeffs_q15 = round(Num * 32768);
coeffs_q15 = max(min(coeffs_q15, 32767), -32768);

% Print as a C array
fprintf('int16_t coeffs[%d] = {', length(coeffs_q15));
fprintf('%d, ', coeffs_q15(1:end-1));
fprintf('%d};\n', coeffs_q15(end));

dataOut = load('TVIOut.dat');
dataIn = load('TVI.dat');

plot(dataIn, 'b', 'LineWidth', 1.5);  % Plot input signal in blue
hold on;  % Keep the plot for the next signal
plot(dataOut, 'r', 'LineWidth', 1.5); % Plot output signal in red

title('Input vs. Filtered Output Signal');
xlabel('Sample Index');
ylabel('Amplitude');
legend('Input Signal (TVI)', 'Filtered Output (TVIOut)');
grid on;
hold off;  % Release the plot hold
