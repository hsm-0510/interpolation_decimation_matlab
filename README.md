# interpolation_decimation_matlab
Multi-rate systems are systems that have one or two systems operating at different sample rates. The sample rate can either increase (interpolate) or decrease(decimate). In specifics, interpolation is the process of inserting additional samples, while decimation is the reverse process of the former.

# Introduction

Multi-rate systems are systems that have one or two systems operating at different sample rates. The sample rate can either increase (interpolate) or decrease(decimate). In specifics, interpolation is the process of inserting additional samples, while decimation is the reverse process of the former. This includes reduction of sample rate by a factor L.

![image](https://github.com/user-attachments/assets/8c8b4a6a-7507-4358-8375-2c3e2be803a6)
![image](https://github.com/user-attachments/assets/9b12f54d-c6ef-4c29-9d40-6af808e78a8c)

# Significance of Interpolation & Decimation in Multi-rate Systems:

Multi-rate systems are DSP systems that have multiple parts operating at different sample rates. There are various reasons to have parts operating at different sample rate. But the two categories of techniques for converting sample rates are:
1.	Interpolation
2.	Decimation

# Interpolation: is the process of increasing the sampling rate of a digital system by adding new samples between existing ones. This can be achieved with mathematical operations which result in a higher sampling rate than the original

![image](https://github.com/user-attachments/assets/4a18f7bc-9f15-477e-a140-acd6f052a4e8)

Firstly, an up-sampler is used to insert new samples in-between old samples. As shown in the diagram above, the added samples are just zeros. However, when passed through an FIR Interpolation filter, we can recover the interpolated samples actual values as well.

# Significance:

The job of an interpolator is simply to increase the rate of the sampling, but it’s use and significance lies in the application that it is used in. Suppose that a hi-fi audio system is to be implemented, what one requires is a good quality output. However, due to low sample rates, creating a sharp enough low pass post filter can be quite difficult, as shown below:
 
![image](https://github.com/user-attachments/assets/f9cd2106-ad44-409d-8cef-4c07b0eacb24)
![image](https://github.com/user-attachments/assets/5538df2a-deb6-469b-b597-65b74227373d)

In such cases, building a sharp low pass filter can be quite difficult to implement as it requires a very high order filter. This is where, interpolation comes in handy. Here, if we increase the sampling rate first, before passing it through a post filter, we can remove the need for constructing a high order low pass post filter, as shown below:

![image](https://github.com/user-attachments/assets/12c2b5a8-fff7-42e9-a74d-dc182e91c204)

# Decimation:

Decimation is the process of reducing the sampling rate of a digital system by discarding some samples and leaving others. The simple way to do it is to pass the signal through a low pass filter which can remove the high frequency components, this automatically results in a system with low rate.

![image](https://github.com/user-attachments/assets/e20de6e1-2906-4f05-be7c-15c886de1cfd)

# Significance:

The job of the down-sampler, as shown above in the diagram is to remove some of the samples while leaving the others. However, due to chances for aliasing effect, the resulting signal can have many distortions, and to avoid it we implement a low pass filter before passing it through a down-sampler, as shown below in the diagram.

![image](https://github.com/user-attachments/assets/c1c5ffd6-c888-413c-a92d-b8e524e3cc1b)

The main significance of the decimation is in it’s application in low complexity, low processing systems. By using decimation, and decreasing the sample rate, one can reduce the number of operations that are performed.

# Conclusion:

The significance of interpolation and decimation lies in their ability to efficiently process digital signals with different sample rates. If, in a communication system, the TX and RX operate at different sample rates due to different processing capabilities or bandwidth constraints, interpolation and decimation can be used. Interpolation, can increase the sample rate of the transmitter, while the decimation technique can reduce the sample rate at the receiver. In addition, these filters can be used to DSP algorithms that require certain sampling rate. If a filter requires sampling of 100Hz, but input signal has 50Hz sample rate, interpolation here can be used to used to increase the sample rate to 100 Hz before applying the filter. Similarly, if there is a requirement for low computational complexity system, decimation can be used to reduce the sample rate of input signal, which in turn reduces the number of operations to process the signal. On the other hand, using interpolation can lead to more efficient systems.

# Analysis of Interpolation & Decimation of an audio signal in comparison to sampling both in time & frequency domain:

# Results:

![image](https://github.com/user-attachments/assets/63b38887-0d1f-471e-a3d5-0a65de71b529)
![image](https://github.com/user-attachments/assets/4f7ebe4b-f663-4c4b-bdd5-1a086bfb889e)
![image](https://github.com/user-attachments/assets/a8ac5137-f3c1-4ebc-8370-18b9b3de49e3)
![image](https://github.com/user-attachments/assets/f4e72a95-d657-4cb5-81e2-6d4a044c770d)
![image](https://github.com/user-attachments/assets/3a5aaec6-9599-48a7-9575-f52c5be4d19e)
![image](https://github.com/user-attachments/assets/83d4a7bc-2def-4b91-b45e-93835bc47903)

# Analysis

Decimation reduces sample rate of a signal, while interpolation increases the sample rate. In this code, we use decimate function to reduce the sample rate of the original signal by a factor of 2, and interpolate function to increase the sample rate by a factor of 2.

Decimation, reduces the bandwidth of the signal, while interpolation increases it. This is due to the fact that decimation removes high frequency components of the signal, while interpolation adds new high frequency components to the signal.

Interpolation can introduce high frequency components to a signal that were not present in the original signal, and through the results above we can see that te interpolated signal has high frequency additional components compared to original signal.

Decimation, however, can introduce aliasing into a signal if it is not properly filtered prior to decimation. In this code, we did not filter it, which resulted in aliasing affect in the results.

# Conclusion:

Overall, the code demonstrates, the effects of interpolation and decimation of signal both in time and frequency domains. It is important to properly filter the signal prior to decimation to avoid aliasing, and to be aware that interpolation can introduce high frequency components into the signal.
