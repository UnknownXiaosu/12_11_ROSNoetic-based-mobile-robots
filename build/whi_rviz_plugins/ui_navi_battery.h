/********************************************************************************
** Form generated from reading UI file 'navi_battery.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_NAVI_BATTERY_H
#define UI_NAVI_BATTERY_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_NaviBattery
{
public:
    QVBoxLayout *verticalLayout_2;
    QHBoxLayout *horizontalLayout_3;
    QLabel *label_battery;
    QLabel *label_soc;
    QSpacerItem *horizontalSpacer_2;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout;
    QLabel *label_state_caption;
    QLabel *label_charging;
    QHBoxLayout *horizontalLayout_2;
    QLabel *label_last_caption;
    QLabel *label_last_time;
    QSpacerItem *horizontalSpacer;
    QLabel *label_logo;

    void setupUi(QWidget *NaviBattery)
    {
        if (NaviBattery->objectName().isEmpty())
            NaviBattery->setObjectName(QString::fromUtf8("NaviBattery"));
        NaviBattery->resize(410, 104);
        verticalLayout_2 = new QVBoxLayout(NaviBattery);
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        label_battery = new QLabel(NaviBattery);
        label_battery->setObjectName(QString::fromUtf8("label_battery"));

        horizontalLayout_3->addWidget(label_battery);

        label_soc = new QLabel(NaviBattery);
        label_soc->setObjectName(QString::fromUtf8("label_soc"));

        horizontalLayout_3->addWidget(label_soc);

        horizontalSpacer_2 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_3->addItem(horizontalSpacer_2);

        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        label_state_caption = new QLabel(NaviBattery);
        label_state_caption->setObjectName(QString::fromUtf8("label_state_caption"));

        horizontalLayout->addWidget(label_state_caption);

        label_charging = new QLabel(NaviBattery);
        label_charging->setObjectName(QString::fromUtf8("label_charging"));

        horizontalLayout->addWidget(label_charging);


        verticalLayout->addLayout(horizontalLayout);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        label_last_caption = new QLabel(NaviBattery);
        label_last_caption->setObjectName(QString::fromUtf8("label_last_caption"));

        horizontalLayout_2->addWidget(label_last_caption);

        label_last_time = new QLabel(NaviBattery);
        label_last_time->setObjectName(QString::fromUtf8("label_last_time"));

        horizontalLayout_2->addWidget(label_last_time);


        verticalLayout->addLayout(horizontalLayout_2);


        horizontalLayout_3->addLayout(verticalLayout);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_3->addItem(horizontalSpacer);

        label_logo = new QLabel(NaviBattery);
        label_logo->setObjectName(QString::fromUtf8("label_logo"));

        horizontalLayout_3->addWidget(label_logo);


        verticalLayout_2->addLayout(horizontalLayout_3);


        retranslateUi(NaviBattery);

        QMetaObject::connectSlotsByName(NaviBattery);
    } // setupUi

    void retranslateUi(QWidget *NaviBattery)
    {
        NaviBattery->setWindowTitle(QApplication::translate("NaviBattery", "Form", nullptr));
        label_battery->setText(QString());
        label_soc->setText(QApplication::translate("NaviBattery", "xx%", nullptr));
        label_state_caption->setText(QApplication::translate("NaviBattery", "Charging State:", nullptr));
        label_charging->setText(QApplication::translate("NaviBattery", "TextLabel", nullptr));
        label_last_caption->setText(QApplication::translate("NaviBattery", "Last Charging Time:", nullptr));
        label_last_time->setText(QApplication::translate("NaviBattery", "TextLabel", nullptr));
        label_logo->setText(QString());
    } // retranslateUi

};

namespace Ui {
    class NaviBattery: public Ui_NaviBattery {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_NAVI_BATTERY_H
