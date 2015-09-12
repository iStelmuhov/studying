#include "groupsdata.h"

GroupsData::GroupsData(QObject *parent) :
    QObject(parent),m_groups(QList<yearData*>()),activeGroup(nullptr)
{

}

void GroupsData::getNewIndex(int _index)
{
    activeGroup=m_groups[_index];
}

