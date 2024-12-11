/********************************************************************************
** Form generated from reading UI file 'navi_waypoints.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_NAVI_WAYPOINTS_H
#define UI_NAVI_WAYPOINTS_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QDoubleSpinBox>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QTableWidget>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_NaviWaypoints
{
public:
    QVBoxLayout *verticalLayout;
    QVBoxLayout *verticalLayout_3;
    QHBoxLayout *horizontalLayout_2;
    QLabel *label_state;
    QSpacerItem *horizontalSpacer_3;
    QLabel *label_logo;
    QHBoxLayout *horizontalLayout_8;
    QVBoxLayout *verticalLayout_7;
    QGroupBox *groupBox_4;
    QVBoxLayout *verticalLayout_8;
    QHBoxLayout *horizontalLayout;
    QComboBox *comboBox_ns;
    QPushButton *pushButton_add_ns;
    QPushButton *pushButton_execute;
    QPushButton *pushButton_abort;
    QSpacerItem *verticalSpacer_3;
    QCheckBox *checkBox_loop;
    QGroupBox *groupBox_5;
    QVBoxLayout *verticalLayout_9;
    QHBoxLayout *horizontalLayout_9;
    QLabel *label_5;
    QDoubleSpinBox *doubleSpinBox_point_span;
    QHBoxLayout *horizontalLayout_10;
    QLabel *label_6;
    QDoubleSpinBox *doubleSpinBox_stop_span;
    QGroupBox *groupBox_waypoints;
    QVBoxLayout *verticalLayout_10;
    QHBoxLayout *horizontalLayout_11;
    QPushButton *pushButton_load;
    QPushButton *pushButton_save;
    QTableWidget *tableWidget_waypoints;
    QSpacerItem *verticalSpacer_4;
    QHBoxLayout *horizontalLayout_12;
    QCheckBox *checkBox_current;
    QSpacerItem *horizontalSpacer_4;
    QPushButton *pushButton_add;
    QPushButton *pushButton_insert;
    QPushButton *pushButton_remove;

    void setupUi(QWidget *NaviWaypoints)
    {
        if (NaviWaypoints->objectName().isEmpty())
            NaviWaypoints->setObjectName(QString::fromUtf8("NaviWaypoints"));
        NaviWaypoints->resize(587, 326);
        verticalLayout = new QVBoxLayout(NaviWaypoints);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        verticalLayout_3 = new QVBoxLayout();
        verticalLayout_3->setObjectName(QString::fromUtf8("verticalLayout_3"));
        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        label_state = new QLabel(NaviWaypoints);
        label_state->setObjectName(QString::fromUtf8("label_state"));

        horizontalLayout_2->addWidget(label_state);

        horizontalSpacer_3 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer_3);

        label_logo = new QLabel(NaviWaypoints);
        label_logo->setObjectName(QString::fromUtf8("label_logo"));

        horizontalLayout_2->addWidget(label_logo);


        verticalLayout_3->addLayout(horizontalLayout_2);

        horizontalLayout_8 = new QHBoxLayout();
        horizontalLayout_8->setObjectName(QString::fromUtf8("horizontalLayout_8"));
        verticalLayout_7 = new QVBoxLayout();
        verticalLayout_7->setObjectName(QString::fromUtf8("verticalLayout_7"));
        groupBox_4 = new QGroupBox(NaviWaypoints);
        groupBox_4->setObjectName(QString::fromUtf8("groupBox_4"));
        verticalLayout_8 = new QVBoxLayout(groupBox_4);
        verticalLayout_8->setObjectName(QString::fromUtf8("verticalLayout_8"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        comboBox_ns = new QComboBox(groupBox_4);
        comboBox_ns->setObjectName(QString::fromUtf8("comboBox_ns"));
        comboBox_ns->setEditable(true);

        horizontalLayout->addWidget(comboBox_ns);

        pushButton_add_ns = new QPushButton(groupBox_4);
        pushButton_add_ns->setObjectName(QString::fromUtf8("pushButton_add_ns"));

        horizontalLayout->addWidget(pushButton_add_ns);


        verticalLayout_8->addLayout(horizontalLayout);

        pushButton_execute = new QPushButton(groupBox_4);
        pushButton_execute->setObjectName(QString::fromUtf8("pushButton_execute"));

        verticalLayout_8->addWidget(pushButton_execute);

        pushButton_abort = new QPushButton(groupBox_4);
        pushButton_abort->setObjectName(QString::fromUtf8("pushButton_abort"));

        verticalLayout_8->addWidget(pushButton_abort);

        verticalSpacer_3 = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_8->addItem(verticalSpacer_3);

        checkBox_loop = new QCheckBox(groupBox_4);
        checkBox_loop->setObjectName(QString::fromUtf8("checkBox_loop"));

        verticalLayout_8->addWidget(checkBox_loop);


        verticalLayout_7->addWidget(groupBox_4);

        groupBox_5 = new QGroupBox(NaviWaypoints);
        groupBox_5->setObjectName(QString::fromUtf8("groupBox_5"));
        verticalLayout_9 = new QVBoxLayout(groupBox_5);
        verticalLayout_9->setObjectName(QString::fromUtf8("verticalLayout_9"));
        horizontalLayout_9 = new QHBoxLayout();
        horizontalLayout_9->setObjectName(QString::fromUtf8("horizontalLayout_9"));
        label_5 = new QLabel(groupBox_5);
        label_5->setObjectName(QString::fromUtf8("label_5"));

        horizontalLayout_9->addWidget(label_5);

        doubleSpinBox_point_span = new QDoubleSpinBox(groupBox_5);
        doubleSpinBox_point_span->setObjectName(QString::fromUtf8("doubleSpinBox_point_span"));

        horizontalLayout_9->addWidget(doubleSpinBox_point_span);


        verticalLayout_9->addLayout(horizontalLayout_9);

        horizontalLayout_10 = new QHBoxLayout();
        horizontalLayout_10->setObjectName(QString::fromUtf8("horizontalLayout_10"));
        label_6 = new QLabel(groupBox_5);
        label_6->setObjectName(QString::fromUtf8("label_6"));

        horizontalLayout_10->addWidget(label_6);

        doubleSpinBox_stop_span = new QDoubleSpinBox(groupBox_5);
        doubleSpinBox_stop_span->setObjectName(QString::fromUtf8("doubleSpinBox_stop_span"));

        horizontalLayout_10->addWidget(doubleSpinBox_stop_span);


        verticalLayout_9->addLayout(horizontalLayout_10);


        verticalLayout_7->addWidget(groupBox_5);


        horizontalLayout_8->addLayout(verticalLayout_7);

        groupBox_waypoints = new QGroupBox(NaviWaypoints);
        groupBox_waypoints->setObjectName(QString::fromUtf8("groupBox_waypoints"));
        verticalLayout_10 = new QVBoxLayout(groupBox_waypoints);
        verticalLayout_10->setObjectName(QString::fromUtf8("verticalLayout_10"));
        horizontalLayout_11 = new QHBoxLayout();
        horizontalLayout_11->setObjectName(QString::fromUtf8("horizontalLayout_11"));
        pushButton_load = new QPushButton(groupBox_waypoints);
        pushButton_load->setObjectName(QString::fromUtf8("pushButton_load"));

        horizontalLayout_11->addWidget(pushButton_load);

        pushButton_save = new QPushButton(groupBox_waypoints);
        pushButton_save->setObjectName(QString::fromUtf8("pushButton_save"));

        horizontalLayout_11->addWidget(pushButton_save);


        verticalLayout_10->addLayout(horizontalLayout_11);

        tableWidget_waypoints = new QTableWidget(groupBox_waypoints);
        tableWidget_waypoints->setObjectName(QString::fromUtf8("tableWidget_waypoints"));

        verticalLayout_10->addWidget(tableWidget_waypoints);

        verticalSpacer_4 = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_10->addItem(verticalSpacer_4);

        horizontalLayout_12 = new QHBoxLayout();
        horizontalLayout_12->setObjectName(QString::fromUtf8("horizontalLayout_12"));
        checkBox_current = new QCheckBox(groupBox_waypoints);
        checkBox_current->setObjectName(QString::fromUtf8("checkBox_current"));

        horizontalLayout_12->addWidget(checkBox_current);

        horizontalSpacer_4 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_12->addItem(horizontalSpacer_4);

        pushButton_add = new QPushButton(groupBox_waypoints);
        pushButton_add->setObjectName(QString::fromUtf8("pushButton_add"));

        horizontalLayout_12->addWidget(pushButton_add);

        pushButton_insert = new QPushButton(groupBox_waypoints);
        pushButton_insert->setObjectName(QString::fromUtf8("pushButton_insert"));

        horizontalLayout_12->addWidget(pushButton_insert);

        pushButton_remove = new QPushButton(groupBox_waypoints);
        pushButton_remove->setObjectName(QString::fromUtf8("pushButton_remove"));

        horizontalLayout_12->addWidget(pushButton_remove);


        verticalLayout_10->addLayout(horizontalLayout_12);


        horizontalLayout_8->addWidget(groupBox_waypoints);


        verticalLayout_3->addLayout(horizontalLayout_8);


        verticalLayout->addLayout(verticalLayout_3);


        retranslateUi(NaviWaypoints);

        QMetaObject::connectSlotsByName(NaviWaypoints);
    } // setupUi

    void retranslateUi(QWidget *NaviWaypoints)
    {
        NaviWaypoints->setWindowTitle(QApplication::translate("NaviWaypoints", "Form", nullptr));
        label_state->setText(QString());
        label_logo->setText(QString());
        groupBox_4->setTitle(QApplication::translate("NaviWaypoints", "Commands", nullptr));
        pushButton_add_ns->setText(QApplication::translate("NaviWaypoints", "Add ns", nullptr));
        pushButton_execute->setText(QApplication::translate("NaviWaypoints", "Execute", nullptr));
        pushButton_abort->setText(QApplication::translate("NaviWaypoints", "Abort", nullptr));
        checkBox_loop->setText(QApplication::translate("NaviWaypoints", "Loop", nullptr));
        groupBox_5->setTitle(QApplication::translate("NaviWaypoints", "Options", nullptr));
        label_5->setText(QApplication::translate("NaviWaypoints", "Point span(s)", nullptr));
        label_6->setText(QApplication::translate("NaviWaypoints", "Stop span(s)", nullptr));
        groupBox_waypoints->setTitle(QApplication::translate("NaviWaypoints", "Waypoints", nullptr));
        pushButton_load->setText(QApplication::translate("NaviWaypoints", "Load", nullptr));
        pushButton_save->setText(QApplication::translate("NaviWaypoints", "Save", nullptr));
        checkBox_current->setText(QApplication::translate("NaviWaypoints", "Current", nullptr));
        pushButton_add->setText(QApplication::translate("NaviWaypoints", "Add", nullptr));
        pushButton_insert->setText(QApplication::translate("NaviWaypoints", "Insert", nullptr));
        pushButton_remove->setText(QApplication::translate("NaviWaypoints", "Remove", nullptr));
    } // retranslateUi

};

namespace Ui {
    class NaviWaypoints: public Ui_NaviWaypoints {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_NAVI_WAYPOINTS_H
