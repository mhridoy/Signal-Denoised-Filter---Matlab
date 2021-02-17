dataset = importdata('signal.txt');

[b,a]= cheby1(6,10,0.6);
dataOut = filter(b,a,dataset);
Figure(1);
plot(dataOut);
Figure(2);
deriv_data = diff(diff(dataOut));
