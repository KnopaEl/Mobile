#ifndef WEBAPPCONTROLLER_H
#define WEBAPPCONTROLLER_H

#include <QObject>
#include <QNetworkAccessManager>

class WebAppController : public QObject
{
    Q_OBJECT
public:
    explicit WebAppController(QObject *parent = nullptr);
    QNetworkAccessManager *manager;
    void getPageInfo();
//        {
//            manager->get(QNetworkRequest(QUrl("https://yandex.ru/pogoda/moscow/details#1")));
//        }
    void onPageInfo(){}
signals:

public slots:
    void onRezult(QNetworkReply *reply);
};


#endif // WEBAPPCONTROLLER_H
