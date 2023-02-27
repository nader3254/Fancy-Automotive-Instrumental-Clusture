#include "systemgraphics.h"

SystemGraphics::SystemGraphics(QObject *parent)
    : QObject{parent}
{
        myobj=parent;

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


}

void SystemGraphics::setTemprature(int vall)
{

}

void SystemGraphics::openMenu()
{


}

void SystemGraphics::openUI(uis_t page)
{
    QObject* ob2 = myobj->findChild<QObject*>("ui navigator");
    ob2->setProperty("navigate","true");
    ob2->setProperty("ui_curr",page);

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
