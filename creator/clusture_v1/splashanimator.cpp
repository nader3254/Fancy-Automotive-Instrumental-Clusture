#include "splashanimator.h"

SplashAnimator::SplashAnimator(QObject *parent)
    : QObject{parent}
{

    objj= parent;
    tmr=new QTimer();
    connect(tmr, SIGNAL(timeout()), this, SLOT(kmhRendering()));
    tmr->setInterval(4);
    tmr->start();

    tmr2=new QTimer();
    connect(tmr2, SIGNAL(timeout()), this, SLOT(kmhRendering2()));
    tmr2->setInterval(1);
    tmr2->start();

}

void SplashAnimator::kmhRendering()
{
    if(i<67)
    {
        QString oo="k"+QString::number(i);
        //qDebug()<<oo;
        QObject* ob = objj->findChild<QObject*>(oo);
        ob->setProperty("visible","true");
        i++;
    }
    if(j<75)
    {
        QString oo="kt"+QString::number(j/(int)5);
        //qDebug()<<oo;
        QObject* ob = objj->findChild<QObject*>(oo);
        ob->setProperty("visible","true");
        j++;
    }

}

void SplashAnimator::kmhRendering2()
{
    if(once==true)
    {
        if(k<260)
        {
            QObject* ob = objj->findChild<QObject*>("kmhPointer");
            ob->setProperty("rotation",k);
            k++;//
        }
        else
        {
             once=false;
        }
    }
    else
    {
        tmr2->setInterval(2);

        if(k!=0)
        {
            QObject* ob = objj->findChild<QObject*>("kmhPointer");
            ob->setProperty("rotation",k);
            k--;
        }

    }


}


