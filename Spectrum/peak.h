#ifndef PEAK_H
#define PEAK_H

class peak
{
public:
    peak(int amplitude,int mean, double fwhm);
    ~peak();
    int getValueAtPoint(int point);
    int getAmplitude(){return Amplitude;}
    int getMean(){return Mean;}
    double getFWHM(){return FWHM;}
private:
    int Amplitude;
    int Mean;
    double FWHM;
};
#endif
