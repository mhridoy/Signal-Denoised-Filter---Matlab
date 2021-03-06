# Signal Denoised Filter - Matlab
 
 
 ### What is filter? 
 We work on signal processing,so in signal processing, a filter is a mechanism that eliminates any unnecessary components or features from the signal.
 
Filtering is a class of signal processing, the filter concept being the total or partial suppression of any component of the signal. 
Almost all of the time, this involves eliminating certain frequency or frequency bands. However, filters do not work solely in the frequency domain; several other filtering objectives occur particularly in image processing.

#### Types of Filter
1. Non Linear or Linear
2. Time Variant or Time invariant
3. Casual or Non Casual
4. Analog or Digital
5. Discrete Time or Continuous Time
6. Passive or active type of continuous time filter
7. Infinite impulse respone or Finnite impulse response type of discrete time or digital Filter

**Based** On the range of frequencies which is being passed by the filter, there're four different types of filter:

1. **Low Pass Filter**
	
	Low pass filter is the electric circuit, which passes the low range of frequency signals, starting from 0Hz to up to the cut off frequency (fc), and rejects all the other frequencies which are higher than cut off frequency (threshold frequency).  
	![alt text](Low_pass_filter_diagram.jpg)
	
2. **High Pass Filter**
	
	High pass filter passes all the high frequency components starting from the cut off frequency(fc) and it rejects all the frequencies which are lesser than this cut off frequency. 
	
	![alt text](high_pass_filter_diagram.PNG)
	
3. **Band Pass Filter**
	
	Band pass filter passes the frequencies which are in the certain band and rejects all the frequencies which are outside this band. 
	
	![alt text](band_pass_filter_diagram.png)
	
4. **Band Reject Filter**

	Band reject filter, rejects all the frequency components which are under certain band and it pass all the frequencies out of this particular band. 
	
	![alt text](band_reject_filter_diagram.PNG)
 
 **Low Pass Filter**  classified into two diffrent types: 
 1. **Active LPF**
 
 	If the low filter is designed using the active components like Op-Amp and transistors then such filters are known as active low pass filter.
	
 
 2. **Passive LPF**
 
 	If the low pass filter is designed using the passive components like R, L and C then such filters are known as passive low pass filters.

**Most** common types of Passive Low Pass Filters:
1. RC Low Pass Filter
2. RL Low Pass Filter
3. RLC Low Pass Filter



**Some** Basic **terminology** of Low Pass Filter:
 
 1. Pass Band
 2. Stop Band
 3. Cut off frequency / Threshold 
 
 ![alt](Cut_off_frequency.PNG)

 
##### Linear Continuous Time Filters
This filter is intended to eliminate certain frequencies and allow the passage of others. It's also known as newtwork syntesis.

Some significant filter families that are constructed in this manner are:

1. **Butterworth Filter**

	The signal processing filter which is having a flat frequency response in the passband can be termed as butterworth filter and is also called as a maximally flat magnitude filter (from
	 0Hz to cut-off frequency at -3dB without any ripples). 
	 
	 ![alt image](butterworth_filter.gif)
	 
	 **Limitation**: 
	 
	 The Butterworth filter changes from pass band to stop-band by achieving pass band flatness at the expense of wide transition bands and it is considered as the main disadvantage of Butterworth filter.
	 


2. **Chebyshev filter**

	Chebyshev filters are used for distinct frequencies of one band from another.

 filter has a smaller transition region than the sameorder Butterworth filter, at the expense of ripples in its pass band.
 This filter minimizes the height of the maximum ripple. 
 
 
Chebyshev filters have 0 dB relative attenuation at dc. Odd order filters have an
attenuation band that extends from 0 dB to the ripple value. Even order filters have a gain
equal to the pass band ripple. The number of cycles of ripple in the pass band is equal to
the order of the filter. 


![alt image](Chebyshev_Filter.jpg)


Type 1 Chebyshev Filter :
	
	Terminology: 
				
				1. Ripple Factor
				2. Cutoff frequency 
				3. Chebyshev polynomial of the nth order. 
	
	
	These Type 1 Chebyshev filters are all pole filters. In the pass band, these filters show equiripple behaviour and they have monotonic charateristics in the stop band. 
	
	
	
![alt image](Type_I_Chebyshev_Filter.jpg)
	
	
Type 2 Chebyshev Filter: 


The type II Chebyshev filter is also known as an inverse filter, this type of filter is less common. Because, it doesn’t roll off and needs various components. It has no ripple in the passband, but it has equiripple in the stopband. 
	
![alt image](Type_II_Chebyshev_Filter.jpg)
	
	
**Elliptic Filter**:

An elliptic filter is a signal processing filter with equalized ripple (equiripple) behaviour in both the passband and stopband. 


![alt image](elliptic_filter.png)

Parameter of Elliptic Filter Function (MATLAB):

1. ellip(n,Rp,Rs,Wp):
	
	**Wp** Passband corner frequency Wp, the cutoff frequency, is a scalar or a two-element vector with values between 0 and 1, with 1 corresponding to the normalized Nyquist frequency, pi radians per sample.
	 
	
	
	**Rp** Passband ripple, in decibels. Twice this value specifies the maximum permissible passband width in decibels.

	**Rs** Stopband attenuation, in decibels. This value is the number of decibels the stopband is attenuated with respect to the passband response.

 


	