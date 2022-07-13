#include "peak.h"
#include <QtMath>

peak::peak(int amplitude,int mean, double fwhm)
{
    Amplitude = amplitude;
    Mean = mean;
    FWHM = fwhm;
}

peak::~peak()
{}

int peak::getValueAtPoint(int point)
{
    return int(Amplitude*qExp(-(point-Mean)*(point-Mean)*4*qLn(2)/FWHM/FWHM));
}
