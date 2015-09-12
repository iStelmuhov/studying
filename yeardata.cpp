#include "yeardata.h"
#include "daydata.h"

yearData::yearData(QObject *parent) :
    QObject(parent), m_dates(QList<dayData*>())
{

}

yearData::yearData(QString _name, QObject *parent):
QObject(parent), m_dates(QList<dayData*>()),groupName(_name)
{

}

const QList<dayData *> &yearData::list() const
{
    return m_dates;
}

QList<QObject *> yearData::listAsQObjects() const
{
    QList<QObject *> res;
    res.reserve(m_dates.count());
    for(auto i : m_dates)
       res.append(i);
    return res;
}
