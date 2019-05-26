#include "webappcontroller.h"
#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QUrl>

WebAppController::WebAppController(QObject *parent) : QObject(parent)
{
    manager = new QNetworkAccessManager(this);
    connect(manager, &QNetworkAccessManager::finished, this, &WebAppController::onRezult);

}

void WebAppController::getPageInfo()
{
    manager->get(QNetworkRequest(QUrl("https://yandex.ru/pogoda/moscow/details#1")));
}

void WebAppController::onRezult(QNetworkReply *reply)
{
    qDebug()<<reply->url();
    qDebug()<<reply->rawHeaderList();
    //qDebug()<<reply->readAll(); - не станет выводить, так как другая кодировка
}
