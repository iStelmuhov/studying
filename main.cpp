#include <QApplication>
#include <QQmlApplicationEngine>
#include <QtQuick/qquickitem.h>
#include <QtQuick/qquickview.h>
#include <QtQuick>
#include "dataobject.h"
#include "daydata.h"
#include "lesson.h"
#include "yeardata.h"
#include "groupsdata.h"
#include <QDebug>

int main(int argc, char *argv[])
{
   QApplication app(argc, argv);
   QQuickView view;
   view.setResizeMode(QQuickView::SizeRootObjectToView);
   view.setSource(QUrl("qrc:Test.qml"));

   dayData * data = new dayData;
   data->addData(new Lesson("OneA","OneB",QTime(7,25)));
   data->addData(new Lesson("TwoA","TwoB",QTime(8,25)));
   data->addData(new Lesson("ThreeA","ThreeB",QTime(9,25)));

   dayData * data2 = new dayData;
   data2->addData(new Lesson("FOUR","OneW",QTime(7,25)));
   data2->addData(new Lesson("FIFE","TwoW",QTime(8,25)));
   data2->addData(new Lesson("ThreeC","ThreeW",QTime(9,25)));

    yearData year((QString)"One");
    year.addDate(data);
    year.addDate(data2);

    yearData year2((QString)"Two");
    year2.addDate(data2);
    year2.addDate(data2);


    GroupsData groups;
    groups.addGroup(&year);
    groups.addGroup(&year2);
    groups.setActive(0);

   QQmlContext *ctxt = view.rootContext();
   ctxt->setContextProperty("programmModel", &groups);
   //ctxt->setContextProperty("groups", &groups);


   view.show();

    return app.exec();
}
