dataset = importdata('signal.txt');
A_dataset = importdata('A_signal.txt');

[b,a] = butter(2,0.1);
dataIn = dataset;
dataOut = filter(b,a,dataIn);
deriv_data = diff(diff(dataOut))
%fvtool(dataOut);
figure(1);
plot(dataIn);
figure(2);
plot(dataOut);
figure(3);
plot(A_dataset);
figure(4);
plot(deriv_data);

