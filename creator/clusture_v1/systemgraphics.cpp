#include "systemgraphics.h"

SystemGraphics::SystemGraphics(QObject *parent)
    : QObject{parent}
{
        myobj=parent;

//        clockTimer=new QTimer();
//        connect(clockTimer, SIGNAL(timeout()), this, SLOT(updateClock()));
//        clockTimer->setInterval(1);


}


void SystemGraphics::setWeather(weather_t wthr)
{
    QObject* ob2 = myobj->findChild<QObject*>("weather UI");
    ob2->setProperty("weather",QString::number(wthr.weather));
    ob2->setProperty("rainPercent",QString::number(wthr.rainPercent));
    ob2->setProperty("country",wthr.Country);
    ob2->setProperty("city",wthr.City);
    ob2->setProperty("weatherInfo",wthr.info);

    if(wthr.img=="cloudy night")
    {
        ob2->setProperty("w_image","qrc:/images/weather/cloudy.png");
    }
    if(wthr.img=="night and day")
    {
        ob2->setProperty("w_image","qrc:/images/weather/day_night.png");
    }
    if(wthr.img=="eclipse")
    {
        ob2->setProperty("w_image","qrc:/images/weather/eclipse.png");
    }
    if(wthr.img=="rainy")
    {
        ob2->setProperty("w_image","qrc:/images/weather/humidity.png");
    }
    if(wthr.img=="cloudy moon")
    {
        ob2->setProperty("w_image","qrc:/images/weather/moon_cloudy.png");
    }
    if(wthr.img=="moon with stars")
    {
        ob2->setProperty("w_image","qrc:/images/weather/moon.png");
    }
    if(wthr.img=="moon with golden stars")
    {
        ob2->setProperty("w_image","qrc:/images/weather/moon_2.png");
    }
    if(wthr.img=="cloudy rain")
    {
        ob2->setProperty("w_image","qrc:/images/weather/rain.png");
    }
    if(wthr.img=="sunny cloudy night")
    {
        ob2->setProperty("w_image","qrc:/images/weather/rainy-day.png");
    }
    if(wthr.img=="sunny")
    {
        ob2->setProperty("w_image","qrc:/images/weather/sun.png");
    }
    if(wthr.img=="cloudy humidy day")
    {
        ob2->setProperty("w_image","qrc:/images/weather/sun_cloudy2.png");
    }
    if(wthr.img=="cloudy day")
    {
        ob2->setProperty("w_image","qrc:/images/weather/sun_cloudy.png");
    }
    if(wthr.img=="super sunny")
    {
        ob2->setProperty("w_image","qrc:/images/weather/sunny.png");
    }


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
    QDateTime dt=QDateTime::currentDateTime();
    QString date =dt.date().toString();
    QString time =dt.time().toString();

    QObject* ob2 = myobj->findChild<QObject*>("weather UI");
    ob2->setProperty("date",date);
    ob2->setProperty("time",time);


}

void SystemGraphics::setTemprature(int vall)
{

}

void SystemGraphics::openMenu()
{

    QObject* ob2 = myobj->findChild<QObject*>("Menu Navigator");
    ob2->setProperty("visible","true");

}

void SystemGraphics::menuMoovUp()
{
    QObject* ob2 = myobj->findChild<QObject*>("Menu Navigator");
    ob2->setProperty("_upS","true");
}

void SystemGraphics::menuMoovDown()
{
    QObject* ob2 = myobj->findChild<QObject*>("Menu Navigator");
    ob2->setProperty("_downS","true");
}

void SystemGraphics::menuSelectCurrItem()
{
    QObject* ob2 = myobj->findChild<QObject*>("Menu Navigator");
    ob2->setProperty("_okS","true");
}

void SystemGraphics::openUI(int page)
{
    //QObject *o=myobj->findChild<QObject*>("ui navigatorr");

    QObject* ob2 = myobj->findChild<QObject*>("ui navigator");
    ob2->setProperty("visible","true");
    ob2->setProperty("navigate","true");

    ob2->setProperty("ui_curr",page);

}

void SystemGraphics::closeUis()
{

    QObject* ob2 = myobj->findChild<QObject*>("ui navigator");
    ob2->setProperty("visible","false");
}

void SystemGraphics::setMusicPath(QString path)
{
    path.replace("file:///","");
    QObject* ob2 = myobj->findChild<QObject*>("Music player");
    FileBrowser *fb=new FileBrowser(path);
    QStringList mp3s,M4as,flacs,wavs,wmas,aacs;
    mp3s=fb->GetAllFiles(".mp3");
    M4as=fb->GetAllFiles(".m4a");
    flacs=fb->GetAllFiles(".flac");
    wavs=fb->GetAllFiles(".wav");
    wmas=fb->GetAllFiles(".wma");
    aacs=fb->GetAllFiles(".aac");


    QString musicList,musicSources;
    for (int i = 0; i < mp3s.size(); i++)
    {
        QString s=mp3s.at(i);
        musicList +=s.replace(path+"/","");
        musicList +="\n";

        musicSources+=mp3s.at(i);
        musicSources+="\n";
    }
    for (int i = 0; i < M4as.size(); i++)
    {
        QString s=M4as.at(i);
        musicList +=s.replace(path+"/","");
        musicList +="\n";

        musicSources+=M4as.at(i);
        musicSources+="\n";
    }
    for (int i = 0; i < flacs.size(); i++)
    {
        QString s=flacs.at(i);
        musicList +=s.replace(path+"/","");
        musicList +="\n";

        musicSources+=flacs.at(i);
        musicSources+="\n";

    }
    for (int i = 0; i < wavs.size(); i++)
    {
        QString s=wavs.at(i);
        musicList +=s.replace(path+"/","");
        musicList +="\n";

        musicSources+=wavs.at(i);
        musicSources+="\n";

    }
    for (int i = 0; i < wmas.size(); i++)
    {
        QString s=wmas.at(i);
        musicList +=s.replace(path+"/","");
        musicList +="\n";

        musicSources+=wmas.at(i);
        musicSources+="\n";
    }
    for (int i = 0; i < aacs.size(); i++)
    {
        QString s=aacs.at(i);
        musicList +=s.replace(path+"/","");
        musicList +="\n";

        musicSources+=aacs.at(i);
        musicSources+="\n";
    }

     ob2->setProperty("toAdd","true");
     ob2->setProperty("s_toAdd",musicList);
     ob2->setProperty("s2_toAdd",musicSources);
}

void SystemGraphics::setCaller(QString img_path, QString name)
{
     QObject* ob2 = myobj->findChild<QObject*>("callerUI");
     ob2->setProperty("callerIMG",img_path);
     ob2->setProperty("callerName",name);
     QObject* ob3 = myobj->findChild<QObject*>("ui navigator");
     ob3->setProperty("ui_curr",1);
     ob3->setProperty("navigate","true");

}

void SystemGraphics::setWeather(int weather, QString w_Img, QString w_country, QString w_city, QString w_info, float w_rainPercent)
{
    QObject* ob2 = myobj->findChild<QObject*>("weather UI");
    ob2->setProperty("weather",QString::number(weather));
    ob2->setProperty("rainPercent",QString::number(w_rainPercent));
    ob2->setProperty("country",w_country);
    ob2->setProperty("city",w_city);
    ob2->setProperty("weatherInfo",w_info);
    ob2->setProperty("w_image",w_Img);



}


