#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "splashanimator.h"
#include "systemgraphics.h"
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

  //  qmlRegisterType<SplashAnimator>("dash.graphics",1,0,"SplashAnimator");    //take care
    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
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

  // QGeoServiceProvider::setApplicationName("MyApp");


    return app.exec();
}
