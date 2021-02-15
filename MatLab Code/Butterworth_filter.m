dataset = importdata('signal.txt');

[b,a] = butter(2,0.1);
dataIn = dataset;
dataOut = filter(b,a,dataIn);
fvtool(dataOut);
