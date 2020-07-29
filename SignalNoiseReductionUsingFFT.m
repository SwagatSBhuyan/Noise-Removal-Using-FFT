time = 0:0.01:2*pi;
signal = sin(time) + cos(2*time);
subplot(2, 2, 1);
plot(time, signal);
title("Graph: Signal Waveform of sin(t) + cos(2t)");
xlabel("time, t { ");
ylabel("signal(t) { ");
randnoise = rand(1, length(time));
noisySignal = signal + randnoise;
subplot(2, 2, 2);
plot(time, noisySignal);
title("Graph: Noise induced Signal Waveform");
xlabel("time, t { ");
ylabel("noisy signal(t) { ");
response = t(noisySignal);
subplot(2, 2, 3);
plot(time, abs(response));
title("Graph: Frequency Magnitude Response");
xlabel("time, t { ");
ylabel("response(t) { ");
noise = nd(abs(response) < 50);
response(noise) = zeros(size(noise));
nativesignal = it(response)
subplot(2, 2, 4);
plot(time, nativesignal);
title("Graph: Obtained Native Signal Waveform");
xlabel("time, t { ");
ylabel("native signal(t) { ");