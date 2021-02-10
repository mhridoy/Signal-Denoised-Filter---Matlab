dataset = importdata('signal.txt');
hpFilt = designfilt('highpassfir','StopbandFrequency',0.25, ...
         'PassbandFrequency',0.35,'PassbandRipple',0.5, ...
         'StopbandAttenuation',65,'DesignMethod','kaiserwin');
fvtool(hpFilt)

dataOut = filter(hpFilt,dataset);
fvtool(dataOut)