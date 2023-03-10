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
#include <QDateTime>
#include "utilities/filebrowser.h"
#include <QThread>




#define WEATHER_CLOUDY_NIGHT                 "cloudy night"
#define WEATHER_NIGHT_AND_DAY                "night and day"
#define WEATHER_ECLIPSE                      "eclipse"
#define WEATHER_RAINY                        "rainy"
#define WEATHER_CLOUDY_MOON                  "cloudy moon"
#define WEATHER_MOON_WITH_STARS              "moon with stars"
#define WEATHER_MOON_WITH_GOLDEN_STARS       "moon with golden stars"
#define WEATHER_CLOUDY_RAIN                  "cloudy rain"
#define WEATHER_SUNNY_CLOUD_NIGHT            "sunny cloudy night"
#define WEATHER_SUNNY                        "sunny"
#define WEATHER_CLOUDY_HUMIDY_DAY            "cloudy humidy day"
#define WEATHER_CLOUDY_DAY                   "cloudy day"
#define WEATHER_SUPER_SUNNY                  "super sunny"


/*
#define UI_WEATHET_FORECAST           3
#define UI_GPS_MAPS                   2
#define UI_MUSIC_PLAYER               4
#define UI_CALL_ANSWERING             1
#define UI_SYSTEM_INFO               0
*/

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

    typedef enum
    {

        NoFlashing=0,
        SlowFading=1,
        FastAlert=2
    }Flashing_t;

    typedef struct
    {
        int weather;
        float rainPercent;
        QString img,Country,City,info;
    }weather_t;

    void setWeather(weather_t wthr);


signals:

private:
QObject *myobj;
QTimer *clockTimer;

public slots:
void setKmhValue(int val);
void setRpmValue(int val);
void setLightColor(QString clr);
void setFrameFlashSpeed(int mode);
void updateClock();
void setTemprature(int vall);
void openMenu();
void menuMoovUp();
void menuMoovDown();
void menuSelectCurrItem();
void openUI(int page);
void closeUis();
void setMusicPath(QString path);
void setCaller(QString img_path,QString name);
void setWeather(int weather,QString w_Img,QString w_country,QString w_city,QString w_info,float w_rainPercent);
};


#endif // SYSTEMGRAPHICS_H
