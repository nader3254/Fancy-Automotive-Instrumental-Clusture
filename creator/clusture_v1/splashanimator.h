#ifndef SPLASHANIMATOR_H
#define SPLASHANIMATOR_H

#include <QObject>
#include <QThread>
#include <QVariant>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickItem>
#include <QTimer>
class SplashAnimator : public QObject
{
    Q_OBJECT
public:
    explicit SplashAnimator(QObject *parent = nullptr);
QObject* objj;QTimer *tmr, *tmr2 ,*tmr3,*tmr4,*frameTmr1,*frameTmr2;int i=1;int j=5,i2=0,j2=0,k2=0;
int k=0;bool once=true,once2=true;
int mur_width=0,rlu_height=0,rld_height=0,mul_width=0,mul_x=496,lru_height=0,lrd_height=0;
int mdl_width=0,mdl_x=506,rd_width=0,ru_width=0,ru_x=1015,ld_width=0,ld_x=342,lu_width=0;

signals:
public slots:
void kmhRendering();
void kmhRendering2();
void RpmRendering();
void RpmRendering2();
void startFlare1Animation();
void startAnimation();
void stopEngine();

void frameRender1();
void frameRender2();

};

#endif // SPLASHANIMATOR_H
