#include "systemgraphics.h"

SystemGraphics::SystemGraphics(QObject *parent)
    : QObject{parent}
{
        myobj=parent;

}

void SystemGraphics::setKmhValue(int val)
{
    QObject* ob2 = myobj->findChild<QObject*>("kmhElement");
    ob2->setProperty("kmh",val);

    //qDebug()<<"inside";
}

void SystemGraphics::setRpmValue(int val)
{
    QObject* ob2 = myobj->findChild<QObject*>("rpmElement");
    ob2->setProperty("rpm",val);

}

void SystemGraphics::setLightColor(QString clr)
{
    QObject* ob2 = myobj->findChild<QObject*>("frameLights");
    ob2->setProperty("fcolor",clr);

}

void SystemGraphics::setFrameFlashSpeed(int mode)
{
    QObject* ob2 = myobj->findChild<QObject*>("frameLights");
    //ob2->setProperty("fcolor",clr);
    if(mode==0)
    {
        ob2->setProperty("en_flash1","false");
        ob2->setProperty("en_flash2","false");
    }
    if(mode==1)
    {
        ob2->setProperty("en_flash1","true");
        ob2->setProperty("en_flash2","false");
    }
    if(mode==2)
    {
        ob2->setProperty("en_flash1","false");
        ob2->setProperty("en_flash2","true");
    }

}

void SystemGraphics::updateClock()
{

}

void SystemGraphics::setTemprature(int vall)
{

}
