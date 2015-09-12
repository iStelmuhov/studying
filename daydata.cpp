#include "daydata.h"
#include "lesson.h"

dayData::dayData(QQuickItem* parent)
    :QObject(parent),
      m_lessons(QList<Lesson*>())
{

}



const QList<Lesson *> &dayData::list() const
{
    return m_lessons;
}

QList<QObject *> dayData::listAsQObjects() const
{
    QList<QObject *> res;
    res.reserve(m_lessons.count());
    for(auto i : m_lessons)
       res.append(i);
    return res;
}
