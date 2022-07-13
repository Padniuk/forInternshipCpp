#ifndef BACKGROUND_H
#define BACKGROUND_H

class background
{
public:
    background();
    ~background();
    void setBackground(double par1, double par2, double par3, double par4)
    {
        Par1 = par1;
        Par2 = par2;
        Par3 = par3;
        Par4 = par4;
    }
    int getValueAtPoint(int point);
private:
    double Par1=0;
    double Par2=0;
    double Par3=0;
    double Par4=0;
};
#endif
