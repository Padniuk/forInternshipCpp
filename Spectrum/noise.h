#ifndef NOISE_H
#define NOISE_H
#include <QVector>

class noise
{
public:
    noise(int nChannels, QVector<double> y);
    ~noise();
    QVector<double> getNoise();
private:
    QVector<double> Y;
    int NChannels;
};
#endif
