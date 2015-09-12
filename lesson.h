#ifndef LESSON_H
#define LESSON_H

#include <QTime>
#include <QtCore>

class Lesson:public QObject
{
     Q_OBJECT

private:
    QString m_lessonName;
    QString m_teacherName;
    QTime m_startTime;
public:
    Lesson();
    Lesson(QString _lName,QString _tName,QTime _sTime);

    Q_PROPERTY(QString lessonName READ lessonName NOTIFY lessonChanged())
    QString lessonName() const;
    void setLessonName(QString &_name) {m_lessonName=_name;}

    Q_PROPERTY(QString teacherName READ teacherName NOTIFY teacherChanged())
    QString teacherName() const;
    void setTeacherName(QString &_name) {m_teacherName=_name;}

    Q_PROPERTY(QTime time READ time NOTIFY timeChanget())
    QTime time() const;
    void setTime (QTime &_time) {m_startTime=_time;}
signals:
    void lessonChanged();
    void teacherChanged();
    void timeChanget();
};

#endif // LESSON_H
