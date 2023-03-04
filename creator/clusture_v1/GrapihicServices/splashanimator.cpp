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
    tmr2->setInterval(3);
    //tmr2->start();

    tmr3=new QTimer();
    connect(tmr3, SIGNAL(timeout()), this, SLOT(RpmRendering()));
    tmr3->setInterval(20);
    //tmr3->start();

    tmr4=new QTimer();
    connect(tmr4, SIGNAL(timeout()), this, SLOT(RpmRendering2()));
    tmr4->setInterval(3);
   // tmr4->start();



    frameTmr1=new QTimer();
    connect(frameTmr1, SIGNAL(timeout()), this, SLOT(frameRender1()));
    frameTmr1->setInterval(2);
   // frameTmr1->start();


    frameTmr2=new QTimer();
    connect(frameTmr2, SIGNAL(timeout()), this, SLOT(frameRender2()));
    frameTmr2->setInterval(1);
   // frameTmr2->start();

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
         tmr2->setInterval(3);
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
        tmr4->setInterval(3);
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
    frameTmr1->start();
    frameTmr2->start();
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

void SplashAnimator::stopEngine()
{
    frameTmr1->stop();
    frameTmr2->stop();
    tmr->stop();
    tmr2->stop();
    tmr3->stop();
    tmr4->stop();
     mur_width=0;rlu_height=0;rld_height=0;mul_width=0;mul_x=496;lru_height=0;lrd_height=0;
     mdl_width=0;mdl_x=506;rd_width=0;ru_width=0;ru_x=1015;ld_width=0;ld_x=342;lu_width=0;
    QObject* oob = objj->findChild<QObject*>("mur");
    QObject* ob2 = objj->findChild<QObject*>("rlu");
    QObject* ob3 = objj->findChild<QObject*>("rld");
    QObject* ob4 = objj->findChild<QObject*>("mul");
    QObject* ob5 = objj->findChild<QObject*>("lru");
    QObject* ob6 = objj->findChild<QObject*>("lrd");
    QObject* ob7  = objj->findChild<QObject*>("mdl");
    QObject* ob8 = objj->findChild<QObject*>("mdr");
    QObject* ob9 = objj->findChild<QObject*>("rd");
    QObject* ob10 = objj->findChild<QObject*>("ru");
    QObject* ob11 = objj->findChild<QObject*>("ld");
    QObject* ob12 = objj->findChild<QObject*>("lu");

    oob->setProperty("width",mur_width);
    ob2->setProperty("height",rlu_height);
    ob3->setProperty("height",rld_height);
    ob4->setProperty("width",mul_width);
    ob4->setProperty("x",mul_x);
    ob5->setProperty("height",lru_height);
    ob6->setProperty("height",lrd_height);

    ob7->setProperty("width",mdl_width);
    ob7->setProperty("x",mdl_x);
    ob8->setProperty("width",mdl_width);
    ob9->setProperty("width",rd_width);
    ob10->setProperty("width",ru_width);
    ob10->setProperty("x",ru_x);
    ob11->setProperty("width",ld_width);
    ob11->setProperty("x",ld_x);
    ob12->setProperty("width",lu_width);



}

void SplashAnimator::frameRender1()
{



    QObject* ob = objj->findChild<QObject*>("mur");
    QObject* ob2 = objj->findChild<QObject*>("rlu");
    QObject* ob3 = objj->findChild<QObject*>("rld");
    QObject* ob4 = objj->findChild<QObject*>("mul");
    QObject* ob5 = objj->findChild<QObject*>("lru");
    QObject* ob6 = objj->findChild<QObject*>("lrd");

                   if(mur_width<261)
                   {
                       mur_width++;
                       ob->setProperty("width",mur_width);

                   }
                   else
                   {
                       //right_left_up
                       if(rlu_height<170)
                       {
                           rlu_height++;
                          ob2->setProperty("height",rlu_height);

                       }
                       else
                       {
                           //right_left_down
                           if(rld_height<23)
                           {
                              rld_height++;
                              ob3->setProperty("height",rld_height);

                           }

                       }
                   }

                   //upper mid left
                   if(mul_width<252)
                   {
                       mul_width++;
                       mul_x--;  //problem i dont know initial x
                       ob4->setProperty("width",mul_width);
                       ob4->setProperty("x",mul_x);

                   }
                   else
                   {
                       //left_right_up
                       if(lru_height<153)
                       {
                           lru_height++;
                           ob5->setProperty("height",lru_height);

                       }
                       else
                       {
                           //left_right_down
                           if(lrd_height<135)
                           {
                               lrd_height++;
                               ob6->setProperty("height",lrd_height);



                           }

                       }
                   }
}

void SplashAnimator::frameRender2()
{

    QObject* ob  = objj->findChild<QObject*>("mdl");
    QObject* ob2 = objj->findChild<QObject*>("mdr");
    QObject* ob3 = objj->findChild<QObject*>("rd");
    QObject* ob4 = objj->findChild<QObject*>("ru");
    QObject* ob5 = objj->findChild<QObject*>("ld");
    QObject* ob6 = objj->findChild<QObject*>("lu");

                   if(mdl_width<164)
                   {
                       mdl_width++;
                       mdl_x--;
                       ob->setProperty("width",mdl_width);
                       ob->setProperty("x",mdl_x);
                       ob2->setProperty("width",mdl_width+4);
                   }
                   else{

                       //right speedometer frame
                       if(rd_width<341)
                       {
                           rd_width++;
                           ob3->setProperty("width",rd_width);

                       }
                       else
                       {
                           if(ru_width<260)
                           {
                              ru_width++;
                              ru_x--;
                              ob4->setProperty("width",ru_width);
                              ob4->setProperty("x",ru_x);
                           }
                       }

                       //left speedometer frame
                       if(ld_width<340)
                       {
                           ld_width++;
                           ld_x--;
                           ob5->setProperty("width",ld_width);
                           ob5->setProperty("x",ld_x);

                       }
                       else
                       {
                           if(lu_width<244)
                           {
                               lu_width++;
                               ob6->setProperty("width",lu_width);

                           }
                           else
                           {
                      //         en_flash1=true

                           }
                       }
                   }

}


