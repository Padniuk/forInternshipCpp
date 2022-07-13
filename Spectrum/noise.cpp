#include "noise.h"
#include <QtMath>
#include <random>

noise::noise(int nChannels,QVector<double> y)
{
    NChannels = nChannels;
    Y = y;
}

noise::~noise()
{}

QVector<double> noise::getNoise()
{
    std::random_device rd{};
    std::mt19937 gen{rd()};

    for(int i=0; i < NChannels; i++)
    {
        if(Y[i]<10) Y[i] = Y[i] - int(std::poisson_distribution<>(Y[i])(gen));
        else Y[i] = Y[i] - int(std::normal_distribution<>(Y[i],qSqrt(Y[i]))(gen));
    }
    return Y;
}
