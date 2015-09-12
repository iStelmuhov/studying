#ifndef DAYDATA_H
#define DAYDATA_H

#include <QQuickItem>
#include <QSGGeometry>
#include <QSGFlatColorMaterial>
#include <QDate>
#include <QtCore>

class Lesson;

class dayData : public QObject
{
    Q_OBJECT
public:
    dayData(QQuickItem* parent = 0);

    Q_PROPERTY(QList<QObject*> list READ listAsQObjects NOTIFY listChanged)
    const QList<Lesson*> &list() const;
    QList<QObject*> listAsQObjects() const;

    Q_PROPERTY(int count READ count NOTIFY countChanged)
    int count() const {return m_lessons.count();}

    void addData(Lesson * _les) {m_lessons.append(_les);}

private:
    QList<Lesson*> m_lessons;
signals:
    void listChanged();
    void countChanged();
public slots:
};

#endif // DAYDATA_H
