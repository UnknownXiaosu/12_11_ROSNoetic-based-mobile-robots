/********************************************************************************
** Form generated from reading UI file 'line_chart_2D.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_LINE_CHART_2D_H
#define UI_LINE_CHART_2D_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>
#include "qwt_plot.h"

QT_BEGIN_NAMESPACE

class Ui_LineChart2D
{
public:
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout;
    QComboBox *comboBox_channel;
    QComboBox *comboBox_item;
    QPushButton *pushButton_reset;
    QSpacerItem *horizontalSpacer;
    QLabel *label_logo;
    QwtPlot *qwtPlot;

    void setupUi(QWidget *LineChart2D)
    {
        if (LineChart2D->objectName().isEmpty())
            LineChart2D->setObjectName(QString::fromUtf8("LineChart2D"));
        LineChart2D->resize(462, 483);
        verticalLayout = new QVBoxLayout(LineChart2D);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        comboBox_channel = new QComboBox(LineChart2D);
        comboBox_channel->setObjectName(QString::fromUtf8("comboBox_channel"));

        horizontalLayout->addWidget(comboBox_channel);

        comboBox_item = new QComboBox(LineChart2D);
        comboBox_item->setObjectName(QString::fromUtf8("comboBox_item"));

        horizontalLayout->addWidget(comboBox_item);

        pushButton_reset = new QPushButton(LineChart2D);
        pushButton_reset->setObjectName(QString::fromUtf8("pushButton_reset"));

        horizontalLayout->addWidget(pushButton_reset);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer);

        label_logo = new QLabel(LineChart2D);
        label_logo->setObjectName(QString::fromUtf8("label_logo"));

        horizontalLayout->addWidget(label_logo);


        verticalLayout->addLayout(horizontalLayout);

        qwtPlot = new QwtPlot(LineChart2D);
        qwtPlot->setObjectName(QString::fromUtf8("qwtPlot"));

        verticalLayout->addWidget(qwtPlot);


        retranslateUi(LineChart2D);

        QMetaObject::connectSlotsByName(LineChart2D);
    } // setupUi

    void retranslateUi(QWidget *LineChart2D)
    {
        LineChart2D->setWindowTitle(QApplication::translate("LineChart2D", "Form", nullptr));
        pushButton_reset->setText(QApplication::translate("LineChart2D", "reset base", nullptr));
        label_logo->setText(QString());
    } // retranslateUi

};

namespace Ui {
    class LineChart2D: public Ui_LineChart2D {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_LINE_CHART_2D_H
