#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "GrapihicServices/splashanimator.h"
#include "GrapihicServices/systemgraphics.h"
#include <QGeoServiceProvider>

int main(int argc, char *argv[])
{

 //   QGuiApplication app(argc, argv);


#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    app.setOrganizationName("nader");
    app.setOrganizationDomain("nader2");

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/qml/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);


   QObject *obj = engine.rootObjects()[0];

   SplashAnimator * MyAnimator=new SplashAnimator(obj);
   SystemGraphics *myGraphics=new SystemGraphics(obj);
   QQmlApplicationEngine *eng=&engine;
   eng->rootContext()->setContextProperty("F1Animation",MyAnimator);
   eng->rootContext()->setContextProperty("GraphicsController",myGraphics);


 //  myGraphics->setCaller("qrc:/images/calls.png","Nader");
//   myGraphics->setMusicPath("C:/Users/Nader/Desktop/music");
//   SystemGraphics::uis_t myui = SystemGraphics::MusicPlayer;
//   myGraphics->openUI(myui);
//   myGraphics->closeUis();

//   myGraphics->openMenu();      // will open the menu
//   myGraphics->menuMoovUp();   // will move the menu up
//   myGraphics->menuMoovDown(); //will move the menu down
//   myGraphics->menuSelectCurrItem();  // will selevt the current item

//   SystemGraphics::Flashing_t flash=SystemGraphics::NoFlashing;
//   myGraphics->setFrameFlashSpeed(flash);
  // myGraphics->setLightColor("#ff0000");

  // QGeoServiceProvider::setApplicationName("MyApp");


    return app.exec();
}
