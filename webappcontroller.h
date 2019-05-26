#ifndef WEBAPPCONTROLLER_H
#define WEBAPPCONTROLLER_H
#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkReply>

class WebAppController : public QObject
{
    Q_OBJECT
public:
    explicit WebAppController(QObject *parent = nullptr);
    QNetworkAccessManager *manager;
//    void getPageInfo();
//        {
//            manager->get(QNetworkRequest(QUrl("https://yandex.ru/pogoda/moscow/details#1")));
//        }
//    void onPageInfo(){}

signals:
    void authorized();
    void authSuccess();

public slots:
    void onPageInfo(QNetworkReply *reply);
    void getPageInfo();
    void onAuth(QString login, QString password);//функция для авторизации

protected:
QObject *poisk; //Переменная, которая будет искать объект какой-то в qml
};


#endif // WEBAPPCONTROLLER_H
