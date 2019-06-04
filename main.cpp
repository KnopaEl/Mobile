#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "webappcontroller.h"
#include <QNetworkReply>
#include "friendsmodel.h"
#include "cryptocontroller.h"
#include <QtWidgets/QTableView>
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    CryptoController CryptoControl;

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;
    WebAppController wa;
    //wa.getPageInfo();
   engine.rootContext()->setContextProperty("friends_model", wa.friends_model); //Перемещаемая модель, которой присваиваем имя

    QObject::connect(engine.rootObjects().first(), SIGNAL(success(QString)),
    &wa, SLOT(success(QString)));
    QObject::connect(engine.rootObjects().first(), SIGNAL(onAuth(QString, QString)),
    &wa, SLOT(onAuth(QString, QString)));
    QObject::connect(engine.rootObjects().first(), SIGNAL(restRequest()),
    &wa, SLOT(restRequest()));
    QObject::connect(engine.rootObjects().first(), SIGNAL(encrypt(QString)),
    &CryptoControl, SLOT(encrypt(QString)));
    QObject::connect(engine.rootObjects().first(), SIGNAL(decrypt(QString)),
    &CryptoControl, SLOT(decrypt(QString)));
    QObject::connect(engine.rootObjects().first(), SIGNAL(read()),
    &wa, SLOT(read()));
    QObject::connect(engine.rootObjects().first(), SIGNAL(write()),
    &wa, SLOT(write()));



//    QObject::connect(engine.rootObjects().first(), SIGNAL(getPageInfo()), &wa, SLOT(getPageInfo()));
    //связь C++ и Qml:
    QObject* root = engine.rootObjects()[0];
    WebAppController myV(root);
    engine.rootContext()->setContextProperty("_myV", &myV);




    return app.exec();
}
