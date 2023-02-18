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
QObject* objj;QTimer *tmr;QTimer *tmr2;int i=1;int j=5;
int k=0;bool once=true;
signals:
public slots:
void kmhRendering();
void kmhRendering2();

};

#endif // SPLASHANIMATOR_H
