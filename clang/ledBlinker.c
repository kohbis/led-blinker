#include <wiringPi.h>

#define GPIO2 2

int main(void)
{
    wiringPiSetupGpio();

    pinMode(GPIO2, OUTPUT);

    for (int i = 0; i < 7; i++)
    {
        digitalWrite(GPIO2, HIGH);
        delay(1000);
        digitalWrite(GPIO2, LOW);
        delay(1000);
    }

    return 0;
}
