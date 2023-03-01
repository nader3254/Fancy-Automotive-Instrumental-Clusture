#include "splashanimator.h"

SplashAnimator::SplashAnimator(QObject *parent)
    : QObject{parent}
{

    objj= parent;
    tmr=new QTimer();
    connect(tmr, SIGNAL(timeout()), this, SLOT(kmhRendering()));
    tmr->setInterval(15);
    //tmr->start();

    tmr2=new QTimer();
    connect(tmr2, SIGNAL(timeout()), this, SLOT(kmhRendering2()));
    tmr2->setInterval(5);
    //tmr2->start();

    tmr3=new QTimer();
    connect(tmr3, SIGNAL(timeout()), this, SLOT(RpmRendering()));
    tmr3->setInterval(25);
    //tmr3->start();

    tmr4=new QTimer();
    connect(tmr4, SIGNAL(timeout()), this, SLOT(RpmRendering2()));
    tmr4->setInterval(5);
   // tmr4->start();


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
         tmr2->setInterval(5);
        if(k!=0)
        {
            QObject* ob = objj->findChild<QObject*>("kmhPointer");
            ob->setProperty("rotation",k);
            k--;
        }

    }


}

void SplashAnimator::RpmRendering()
{
    if(i2<21)
    {
        QString oo="r"+QString::number(i2);
        //qDebug()<<oo;
        QObject* ob = objj->findChild<QObject*>(oo);
        ob->setProperty("visible","true");
        i2++;
    }
    if(j2<9)
    {
        QString oo="rt"+QString::number(j2);
       // qDebug()<<oo;
        QObject* ob = objj->findChild<QObject*>(oo);
        ob->setProperty("visible","true");
        j2++;
    }

}

void SplashAnimator::RpmRendering2()
{


    if(once2==true)
    {
        if(k2<260)
        {
            QObject* ob = objj->findChild<QObject*>("rpmPointer");
            ob->setProperty("rotation",k2*-1);
            k2++;//
        }
        else
        {
             once2=false;
        }

    }
    else
    {
        tmr4->setInterval(5);
        if(k2!=0)
        {
            QObject* ob = objj->findChild<QObject*>("rpmPointer");
            ob->setProperty("rotation",k2*-1);
            k2--;
        }
        else
        {
            QObject* ob = objj->findChild<QObject*>("rpmPointer");
            ob->setProperty("rotation",0);
            tmr4->stop();

        }

    }
}

void SplashAnimator::startFlare1Animation()
{
  //  QObject* ob = objj->findChild<QObject*>("flare1");
  //  ob->setProperty("running","true");
    QObject* ob2 = objj->findChild<QObject*>("flare2");
    ob2->setProperty("running","true");
}

void SplashAnimator::startAnimation()
{
    tmr->start();
    tmr2->start();
    tmr3->start();
    tmr4->start();

    QObject* ob = objj->findChild<QObject*>("FrameLights0");
    ob->setProperty("running","true");
    QObject* ob2 = objj->findChild<QObject*>("FrameLights1");
    ob2->setProperty("running","true");

    QObject* ob3 = objj->findChild<QObject*>("FrameLights2");
    ob3->setProperty("running","true");
    QObject* ob4 = objj->findChild<QObject*>("FrameLights3");
    ob4->setProperty("running","true");

    QObject* ob5 = objj->findChild<QObject*>("FrameLights4");
    ob5->setProperty("running","true");
    QObject* ob6 = objj->findChild<QObject*>("FrameLights5");
    ob6->setProperty("running","true");


}


