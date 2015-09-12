#ifndef YEARDATA_H
#define YEARDATA_H

#include <QObject>
#include <QtCore>

class dayData;

class yearData : public QObject
{
    Q_OBJECT
public:
    yearData(QObject *parent = 0);
    yearData(QString _name,QObject *parent = 0);

    Q_PROPERTY(QList<QObject*> list READ listAsQObjects NOTIFY listChanged)
    const QList<dayData*> &list() const;
    QList<QObject*> listAsQObjects() const;

    Q_PROPERTY(int count READ count NOTIFY countChanged)
    int count() const {return m_dates.count();}

    void setName(QString _name) {groupName=_name;}
    QString getName() {return groupName;}
    void addDate(dayData * _data) {m_dates.append(_data);}

private:
    QList<dayData*> m_dates;
    QString groupName;
signals:
    void listChanged();
    void countChanged();
public slots:
};

#endif // YEARDATA_H
