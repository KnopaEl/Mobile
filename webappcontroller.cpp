#include "webappcontroller.h"
#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QUrl>

WebAppController::WebAppController(QObject *QMLObject) : poisk(QMLObject)
{
    manager = new QNetworkAccessManager(this); // создание менеджера, который будет отправлять запросы
    connect(manager, &QNetworkAccessManager::finished, this, &WebAppController::onPageInfo);

}

void WebAppController::getPageInfo()
{
    manager->get(QNetworkRequest(QUrl("https://yandex.ru/pogoda/moscow")));
}

void WebAppController::onPageInfo(QNetworkReply *reply)
{
    qDebug()<<reply->url();
    qDebug()<<reply->rawHeaderList();
    //qDebug()<<reply->readAll(); - не станет выводить, так как другая кодировка

    // Если запрос не отправляется, то выводим ошибку в Debug
    if(reply->error()){
        qDebug() << "ERROR";
        qDebug() << reply->errorString();
        }
    else { // если без ошибок
        QString pogoda = reply -> readAll();// В переменную передается код страницы HTML

        QObject* text_edit = poisk->findChild<QObject*>("text_edit"); // находим элемент text_edit из qml-кода

        QObject* otbr = poisk->findChild<QObject*>("otbr"); // находим элемент text_edit из qml-кода

        otbr -> setProperty("text", pogoda);

        int i = 0;
        if ((i= pogoda.indexOf("temp__value", i)) != -1)
        {
            qDebug() << "\n" << "Погода на сегодняшний день" << i;
            qDebug() << pogoda.mid(i+13,3); //пропускаем 13 символа после нашего тега и выводим следующие 3, например, +21

            text_edit -> setProperty("text", pogoda.mid(i+13,3));
        }
    }
}

void WebAppController::onAuth(QString login, QString password){

}
