dataset = importdata('signal.txt');
A_dataset = importdata('A_signal.txt');

%[b,a] = ellip(n,Rp,Rs,Wp)
[b,a] = ellip(6,5,40,0.6);
dataOut = filter(b,a,dataset);
figure(1);
plot(dataOut);

deriv_data = diff(diff(dataOut));
figure(2);
plot(deriv_data)
 
figure(3);
plot(A_dataset);
