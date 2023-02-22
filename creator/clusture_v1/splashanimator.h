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
QObject* objj;QTimer *tmr, *tmr2 ,*tmr3,*tmr4;int i=1;int j=5,i2=0,j2=0,k2=0;
int k=0;bool once=true,once2=true;
signals:
public slots:
void kmhRendering();
void kmhRendering2();
void RpmRendering();
void RpmRendering2();
void startFlare1Animation();
void startAnimation();
};

#endif // SPLASHANIMATOR_H
