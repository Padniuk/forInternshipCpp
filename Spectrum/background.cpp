#include "background.h"
#include <QtMath>

background::background()
{}

background::~background()
{}

int background::getValueAtPoint(int point)
{
    return int(Par1*qExp(-1*Par2*point)+Par3*point+Par4);
}
