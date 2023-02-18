#ifndef SYSTEMGRAPHICS_H
#define SYSTEMGRAPHICS_H

#include <QObject>

class SystemGraphics : public QObject
{
    Q_OBJECT
public:
    explicit SystemGraphics(QObject *parent = nullptr);

signals:

};

#endif // SYSTEMGRAPHICS_H
