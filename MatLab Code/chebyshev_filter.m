dataset = importdata('signal.txt');

[b,a]= cheby1(6,10,0.6);
dataOut = filter(b,a,dataset);
fvtool(dataOut);
