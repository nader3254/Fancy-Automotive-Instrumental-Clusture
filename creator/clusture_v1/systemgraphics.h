#ifndef SYSTEMGRAPHICS_H
#define SYSTEMGRAPHICS_H

#include <QObject>
#include <QThread>
#include <QVariant>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickItem>
#include <QTimer>

class SystemGraphics : public QObject
{
    Q_OBJECT
public:
    explicit SystemGraphics(QObject *parent = nullptr);




signals:

private:
QObject *myobj;

public slots:
void setKmhValue(int val);
void setRpmValue(int val);
void setLightColor(QString clr);
void setFrameFlashSpeed(int mode);
void updateClock();
void setTemprature(int vall);
};

#endif // SYSTEMGRAPHICS_H
