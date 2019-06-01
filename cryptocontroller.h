#ifndef CRYPTOCONTROLLER_H
#define CRYPTOCONTROLLER_H

#include <QObject>
#include <openssl/conf.h>
#include <openssl/evp.h>
#include <openssl/err.h>
#include <openssl/aes.h>

class CryptoController: public QObject {
    Q_OBJECT
public:
    explicit CryptoController(QObject *parent = nullptr);

public slots:
    void encrypt(QString key);
    void decrypt(QString key);
};
#endif // CRYPTOCONTROLLER_H
