#include "lesson.h"

Lesson::Lesson()
{

}

Lesson::Lesson(QString _lName,QString _tName,QTime _sTime)
    :m_lessonName(_lName),m_teacherName(_tName),m_startTime(_sTime)
{

}

QString Lesson::lessonName() const
{
    return m_lessonName;

}

QString Lesson::teacherName() const
{
    return m_teacherName;
}

QTime Lesson::time() const
{
    return m_startTime;
}


