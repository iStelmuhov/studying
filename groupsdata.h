#ifndef GROUPSDATA_H
#define GROUPSDATA_H

#include <QObject>
#include "yeardata.h"
#include <QtCore>
class GroupsData : public QObject
{
    Q_OBJECT
public:
    explicit GroupsData(QObject *parent = 0);

    Q_PROPERTY(QString name READ name NOTIFY nameChanged)
    QString name() {return activeGroup->getName();}

    Q_PROPERTY(yearData * active READ active NOTIFY activeChanched)
    yearData * active() {return activeGroup;}
    void setActive(int index) {activeGroup=m_groups[index];}

    void addGroup(yearData * _data) {m_groups.append(_data);}
private:
    QList<yearData*> m_groups;
    yearData * activeGroup;

signals:
    void nameChanged();
    void activeChanched();
public slots:
    void getNewIndex(int _index);
};

#endif // GROUPSDATA_H
