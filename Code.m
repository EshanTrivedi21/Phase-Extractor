fs = 100;
t = 0:1/fs:1-1/fs;
x = cos(2*pi*10*t - pi/4) - sin(2*pi*25*t);
y = fft(x);
z = fftshift(y);
ly = length(y);
f = (-ly/2:ly/2-1)/ly*fs;
stem(f,abs(z))
xlabel("Frequency (Hz)")
ylabel("|y|")
grid
tol = 1e-5;
z(abs(z) < tol) = 0;
theta = angle(z);
stem(f,theta/pi)
xlabel("Frequency (Hz)")
ylabel("Phase / \pi")
title('Eshan Trivedi, Hardik Shah SS Miniproject')
grid