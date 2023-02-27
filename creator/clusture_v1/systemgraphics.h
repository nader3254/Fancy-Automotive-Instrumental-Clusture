#ifndef SYSTEMGRAPHICS_H
#define SYSTEMGRAPHICS_H

#include <QObject>
#include <QThread>
#include <QVariant>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickItem>
#include <QTimer>
#include <QJsonObject>
#include <QJsonArray>
#include <QJsonValue>
#include "utilities/filebrowser.h"
#include <QThread>

class SystemGraphics : public QObject
{
    Q_OBJECT
public:
    explicit SystemGraphics(QObject *parent = nullptr);

    typedef enum
    {
        MusicPlayer=2,
        GpsMaps=1,
        WeatherForecast=0,
        EngineStatus=3,
        CallAnswering=4

    }uis_t;


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
void openMenu();
void openUI(SystemGraphics::uis_t page);
void setMusicPath(QString path);

};

#endif // SYSTEMGRAPHICS_H
