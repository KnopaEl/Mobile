#ifndef WEBAPPCONTROLLER_H
#define WEBAPPCONTROLLER_H
#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QFile>
#include <friendsmodel.h>
#include <QSqlDatabase>
#include <QtWidgets/QTableView>
class WebAppController : public QObject
{
    Q_OBJECT
public:
    explicit WebAppController(QObject *parent = nullptr);
    QNetworkAccessManager *manager;

    QString m_accessToken; // полученный access_token из вк

    void authorize(){ // приложение ВК, информация вся из настроек
            const QString appID ="6935080";
            const QString protKey = "dq279ctm2dBZydxqVRpG";
            const QString servKey = "1d54013f1d54013f1d54013fed1d3dd31711d541d54013f41ff49060adecfb088188fb2";
        }
    FriendsModel *friends_model;
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
    void restRequest();
    void write();
    void read();
    void success (QString add);
protected:
QObject *poisk; //Переменная, которая будет искать объект какой-то в qml
};


#endif // WEBAPPCONTROLLER_H
