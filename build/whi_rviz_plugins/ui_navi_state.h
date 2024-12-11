/********************************************************************************
** Form generated from reading UI file 'navi_state.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_NAVI_STATE_H
#define UI_NAVI_STATE_H

#include <QtCore/QVariant>
#include <QtGui/QIcon>
#include <QtWidgets/QApplication>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_NaviState
{
public:
    QVBoxLayout *verticalLayout_18;
    QHBoxLayout *horizontalLayout_7;
    QHBoxLayout *horizontalLayout_twist;
    QVBoxLayout *verticalLayout_2;
    QHBoxLayout *horizontalLayout_3;
    QLabel *label;
    QLabel *label_linear;
    QSpacerItem *horizontalSpacer_3;
    QHBoxLayout *horizontalLayout_4;
    QLabel *label_2;
    QLabel *label_angular;
    QSpacerItem *horizontalSpacer_2;
    QSpacerItem *horizontalSpacer_13;
    QVBoxLayout *verticalLayout_3;
    QHBoxLayout *horizontalLayout_5;
    QLabel *label_5;
    QLabel *label_goal;
    QSpacerItem *horizontalSpacer_4;
    QHBoxLayout *horizontalLayout_6;
    QLabel *label_7;
    QLabel *label_eta;
    QSpacerItem *horizontalSpacer_5;
    QSpacerItem *horizontalSpacer_8;
    QVBoxLayout *verticalLayout_13;
    QHBoxLayout *horizontalLayout_11;
    QLabel *label_8;
    QLabel *label_started;
    QSpacerItem *horizontalSpacer_6;
    QHBoxLayout *horizontalLayout_12;
    QLabel *label_9;
    QLabel *label_running_hours;
    QSpacerItem *horizontalSpacer_7;
    QSpacerItem *horizontalSpacer_14;
    QVBoxLayout *verticalLayout_4;
    QHBoxLayout *horizontalLayout_8;
    QSpacerItem *horizontalSpacer;
    QLabel *label_logo;
    QSpacerItem *verticalSpacer;
    QHBoxLayout *horizontalLayout;
    QVBoxLayout *verticalLayout_5;
    QLabel *label_indicator_1;
    QLabel *label_indicator_cap_1;
    QVBoxLayout *verticalLayout_6;
    QLabel *label_indicator_2;
    QLabel *label_indicator_cap_2;
    QVBoxLayout *verticalLayout_7;
    QLabel *label_indicator_3;
    QLabel *label_indicator_cap_3;
    QVBoxLayout *verticalLayout_8;
    QLabel *label_indicator_4;
    QLabel *label_indicator_cap_4;
    QVBoxLayout *verticalLayout_9;
    QLabel *label_indicator_5;
    QLabel *label_indicator_cap_5;
    QVBoxLayout *verticalLayout_10;
    QLabel *label_indicator_6;
    QLabel *label_indicator_cap_6;
    QVBoxLayout *verticalLayout_11;
    QLabel *label_indicator_7;
    QLabel *label_indicator_cap_7;
    QVBoxLayout *verticalLayout_12;
    QLabel *label_indicator_8;
    QLabel *label_indicator_cap_8;
    QVBoxLayout *verticalLayout_14;
    QPushButton *pushButton_clear;
    QSpacerItem *verticalSpacer_2;
    QVBoxLayout *verticalLayout_15;
    QPushButton *pushButton_reset_imu;
    QSpacerItem *verticalSpacer_3;
    QVBoxLayout *verticalLayout_16;
    QPushButton *pushButton_reset_rc;
    QSpacerItem *verticalSpacer_4;
    QVBoxLayout *verticalLayout_17;
    QPushButton *pushButton_reset_rgbd;
    QSpacerItem *verticalSpacer_5;
    QSpacerItem *horizontalSpacer_9;
    QPushButton *pushButton_estop;
    QSpacerItem *horizontalSpacer_12;
    QHBoxLayout *horizontalLayout_2;
    QLabel *label_battery;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout_9;
    QLabel *label_3;
    QLabel *label_soc;
    QHBoxLayout *horizontalLayout_10;
    QLabel *label_6;
    QLabel *label_soh;

    void setupUi(QWidget *NaviState)
    {
        if (NaviState->objectName().isEmpty())
            NaviState->setObjectName(QString::fromUtf8("NaviState"));
        NaviState->resize(988, 131);
        verticalLayout_18 = new QVBoxLayout(NaviState);
        verticalLayout_18->setObjectName(QString::fromUtf8("verticalLayout_18"));
        horizontalLayout_7 = new QHBoxLayout();
        horizontalLayout_7->setObjectName(QString::fromUtf8("horizontalLayout_7"));
        horizontalLayout_twist = new QHBoxLayout();
        horizontalLayout_twist->setObjectName(QString::fromUtf8("horizontalLayout_twist"));
        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        label = new QLabel(NaviState);
        label->setObjectName(QString::fromUtf8("label"));

        horizontalLayout_3->addWidget(label);

        label_linear = new QLabel(NaviState);
        label_linear->setObjectName(QString::fromUtf8("label_linear"));

        horizontalLayout_3->addWidget(label_linear);

        horizontalSpacer_3 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_3->addItem(horizontalSpacer_3);


        verticalLayout_2->addLayout(horizontalLayout_3);

        horizontalLayout_4 = new QHBoxLayout();
        horizontalLayout_4->setObjectName(QString::fromUtf8("horizontalLayout_4"));
        label_2 = new QLabel(NaviState);
        label_2->setObjectName(QString::fromUtf8("label_2"));

        horizontalLayout_4->addWidget(label_2);

        label_angular = new QLabel(NaviState);
        label_angular->setObjectName(QString::fromUtf8("label_angular"));

        horizontalLayout_4->addWidget(label_angular);

        horizontalSpacer_2 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_4->addItem(horizontalSpacer_2);


        verticalLayout_2->addLayout(horizontalLayout_4);


        horizontalLayout_twist->addLayout(verticalLayout_2);

        horizontalSpacer_13 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_twist->addItem(horizontalSpacer_13);

        verticalLayout_3 = new QVBoxLayout();
        verticalLayout_3->setObjectName(QString::fromUtf8("verticalLayout_3"));
        horizontalLayout_5 = new QHBoxLayout();
        horizontalLayout_5->setObjectName(QString::fromUtf8("horizontalLayout_5"));
        label_5 = new QLabel(NaviState);
        label_5->setObjectName(QString::fromUtf8("label_5"));

        horizontalLayout_5->addWidget(label_5);

        label_goal = new QLabel(NaviState);
        label_goal->setObjectName(QString::fromUtf8("label_goal"));

        horizontalLayout_5->addWidget(label_goal);

        horizontalSpacer_4 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_5->addItem(horizontalSpacer_4);


        verticalLayout_3->addLayout(horizontalLayout_5);

        horizontalLayout_6 = new QHBoxLayout();
        horizontalLayout_6->setObjectName(QString::fromUtf8("horizontalLayout_6"));
        label_7 = new QLabel(NaviState);
        label_7->setObjectName(QString::fromUtf8("label_7"));

        horizontalLayout_6->addWidget(label_7);

        label_eta = new QLabel(NaviState);
        label_eta->setObjectName(QString::fromUtf8("label_eta"));

        horizontalLayout_6->addWidget(label_eta);

        horizontalSpacer_5 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_6->addItem(horizontalSpacer_5);


        verticalLayout_3->addLayout(horizontalLayout_6);


        horizontalLayout_twist->addLayout(verticalLayout_3);

        horizontalSpacer_8 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_twist->addItem(horizontalSpacer_8);

        verticalLayout_13 = new QVBoxLayout();
        verticalLayout_13->setObjectName(QString::fromUtf8("verticalLayout_13"));
        horizontalLayout_11 = new QHBoxLayout();
        horizontalLayout_11->setObjectName(QString::fromUtf8("horizontalLayout_11"));
        label_8 = new QLabel(NaviState);
        label_8->setObjectName(QString::fromUtf8("label_8"));

        horizontalLayout_11->addWidget(label_8);

        label_started = new QLabel(NaviState);
        label_started->setObjectName(QString::fromUtf8("label_started"));

        horizontalLayout_11->addWidget(label_started);

        horizontalSpacer_6 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_11->addItem(horizontalSpacer_6);


        verticalLayout_13->addLayout(horizontalLayout_11);

        horizontalLayout_12 = new QHBoxLayout();
        horizontalLayout_12->setObjectName(QString::fromUtf8("horizontalLayout_12"));
        label_9 = new QLabel(NaviState);
        label_9->setObjectName(QString::fromUtf8("label_9"));

        horizontalLayout_12->addWidget(label_9);

        label_running_hours = new QLabel(NaviState);
        label_running_hours->setObjectName(QString::fromUtf8("label_running_hours"));

        horizontalLayout_12->addWidget(label_running_hours);

        horizontalSpacer_7 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_12->addItem(horizontalSpacer_7);


        verticalLayout_13->addLayout(horizontalLayout_12);


        horizontalLayout_twist->addLayout(verticalLayout_13);


        horizontalLayout_7->addLayout(horizontalLayout_twist);

        horizontalSpacer_14 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_7->addItem(horizontalSpacer_14);

        verticalLayout_4 = new QVBoxLayout();
        verticalLayout_4->setObjectName(QString::fromUtf8("verticalLayout_4"));
        horizontalLayout_8 = new QHBoxLayout();
        horizontalLayout_8->setObjectName(QString::fromUtf8("horizontalLayout_8"));
        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_8->addItem(horizontalSpacer);

        label_logo = new QLabel(NaviState);
        label_logo->setObjectName(QString::fromUtf8("label_logo"));

        horizontalLayout_8->addWidget(label_logo);


        verticalLayout_4->addLayout(horizontalLayout_8);

        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_4->addItem(verticalSpacer);


        horizontalLayout_7->addLayout(verticalLayout_4);


        verticalLayout_18->addLayout(horizontalLayout_7);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        verticalLayout_5 = new QVBoxLayout();
        verticalLayout_5->setObjectName(QString::fromUtf8("verticalLayout_5"));
        label_indicator_1 = new QLabel(NaviState);
        label_indicator_1->setObjectName(QString::fromUtf8("label_indicator_1"));

        verticalLayout_5->addWidget(label_indicator_1);

        label_indicator_cap_1 = new QLabel(NaviState);
        label_indicator_cap_1->setObjectName(QString::fromUtf8("label_indicator_cap_1"));

        verticalLayout_5->addWidget(label_indicator_cap_1);


        horizontalLayout->addLayout(verticalLayout_5);

        verticalLayout_6 = new QVBoxLayout();
        verticalLayout_6->setObjectName(QString::fromUtf8("verticalLayout_6"));
        label_indicator_2 = new QLabel(NaviState);
        label_indicator_2->setObjectName(QString::fromUtf8("label_indicator_2"));

        verticalLayout_6->addWidget(label_indicator_2);

        label_indicator_cap_2 = new QLabel(NaviState);
        label_indicator_cap_2->setObjectName(QString::fromUtf8("label_indicator_cap_2"));

        verticalLayout_6->addWidget(label_indicator_cap_2);


        horizontalLayout->addLayout(verticalLayout_6);

        verticalLayout_7 = new QVBoxLayout();
        verticalLayout_7->setObjectName(QString::fromUtf8("verticalLayout_7"));
        label_indicator_3 = new QLabel(NaviState);
        label_indicator_3->setObjectName(QString::fromUtf8("label_indicator_3"));

        verticalLayout_7->addWidget(label_indicator_3);

        label_indicator_cap_3 = new QLabel(NaviState);
        label_indicator_cap_3->setObjectName(QString::fromUtf8("label_indicator_cap_3"));

        verticalLayout_7->addWidget(label_indicator_cap_3);


        horizontalLayout->addLayout(verticalLayout_7);

        verticalLayout_8 = new QVBoxLayout();
        verticalLayout_8->setObjectName(QString::fromUtf8("verticalLayout_8"));
        label_indicator_4 = new QLabel(NaviState);
        label_indicator_4->setObjectName(QString::fromUtf8("label_indicator_4"));

        verticalLayout_8->addWidget(label_indicator_4);

        label_indicator_cap_4 = new QLabel(NaviState);
        label_indicator_cap_4->setObjectName(QString::fromUtf8("label_indicator_cap_4"));

        verticalLayout_8->addWidget(label_indicator_cap_4);


        horizontalLayout->addLayout(verticalLayout_8);

        verticalLayout_9 = new QVBoxLayout();
        verticalLayout_9->setObjectName(QString::fromUtf8("verticalLayout_9"));
        label_indicator_5 = new QLabel(NaviState);
        label_indicator_5->setObjectName(QString::fromUtf8("label_indicator_5"));

        verticalLayout_9->addWidget(label_indicator_5);

        label_indicator_cap_5 = new QLabel(NaviState);
        label_indicator_cap_5->setObjectName(QString::fromUtf8("label_indicator_cap_5"));

        verticalLayout_9->addWidget(label_indicator_cap_5);


        horizontalLayout->addLayout(verticalLayout_9);

        verticalLayout_10 = new QVBoxLayout();
        verticalLayout_10->setObjectName(QString::fromUtf8("verticalLayout_10"));
        label_indicator_6 = new QLabel(NaviState);
        label_indicator_6->setObjectName(QString::fromUtf8("label_indicator_6"));

        verticalLayout_10->addWidget(label_indicator_6);

        label_indicator_cap_6 = new QLabel(NaviState);
        label_indicator_cap_6->setObjectName(QString::fromUtf8("label_indicator_cap_6"));

        verticalLayout_10->addWidget(label_indicator_cap_6);


        horizontalLayout->addLayout(verticalLayout_10);

        verticalLayout_11 = new QVBoxLayout();
        verticalLayout_11->setObjectName(QString::fromUtf8("verticalLayout_11"));
        label_indicator_7 = new QLabel(NaviState);
        label_indicator_7->setObjectName(QString::fromUtf8("label_indicator_7"));

        verticalLayout_11->addWidget(label_indicator_7);

        label_indicator_cap_7 = new QLabel(NaviState);
        label_indicator_cap_7->setObjectName(QString::fromUtf8("label_indicator_cap_7"));

        verticalLayout_11->addWidget(label_indicator_cap_7);


        horizontalLayout->addLayout(verticalLayout_11);

        verticalLayout_12 = new QVBoxLayout();
        verticalLayout_12->setObjectName(QString::fromUtf8("verticalLayout_12"));
        label_indicator_8 = new QLabel(NaviState);
        label_indicator_8->setObjectName(QString::fromUtf8("label_indicator_8"));

        verticalLayout_12->addWidget(label_indicator_8);

        label_indicator_cap_8 = new QLabel(NaviState);
        label_indicator_cap_8->setObjectName(QString::fromUtf8("label_indicator_cap_8"));

        verticalLayout_12->addWidget(label_indicator_cap_8);


        horizontalLayout->addLayout(verticalLayout_12);

        verticalLayout_14 = new QVBoxLayout();
        verticalLayout_14->setObjectName(QString::fromUtf8("verticalLayout_14"));
        pushButton_clear = new QPushButton(NaviState);
        pushButton_clear->setObjectName(QString::fromUtf8("pushButton_clear"));

        verticalLayout_14->addWidget(pushButton_clear);

        verticalSpacer_2 = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_14->addItem(verticalSpacer_2);


        horizontalLayout->addLayout(verticalLayout_14);

        verticalLayout_15 = new QVBoxLayout();
        verticalLayout_15->setObjectName(QString::fromUtf8("verticalLayout_15"));
        pushButton_reset_imu = new QPushButton(NaviState);
        pushButton_reset_imu->setObjectName(QString::fromUtf8("pushButton_reset_imu"));

        verticalLayout_15->addWidget(pushButton_reset_imu);

        verticalSpacer_3 = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_15->addItem(verticalSpacer_3);


        horizontalLayout->addLayout(verticalLayout_15);

        verticalLayout_16 = new QVBoxLayout();
        verticalLayout_16->setObjectName(QString::fromUtf8("verticalLayout_16"));
        pushButton_reset_rc = new QPushButton(NaviState);
        pushButton_reset_rc->setObjectName(QString::fromUtf8("pushButton_reset_rc"));

        verticalLayout_16->addWidget(pushButton_reset_rc);

        verticalSpacer_4 = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_16->addItem(verticalSpacer_4);


        horizontalLayout->addLayout(verticalLayout_16);

        verticalLayout_17 = new QVBoxLayout();
        verticalLayout_17->setObjectName(QString::fromUtf8("verticalLayout_17"));
        pushButton_reset_rgbd = new QPushButton(NaviState);
        pushButton_reset_rgbd->setObjectName(QString::fromUtf8("pushButton_reset_rgbd"));

        verticalLayout_17->addWidget(pushButton_reset_rgbd);

        verticalSpacer_5 = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_17->addItem(verticalSpacer_5);


        horizontalLayout->addLayout(verticalLayout_17);

        horizontalSpacer_9 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer_9);

        pushButton_estop = new QPushButton(NaviState);
        pushButton_estop->setObjectName(QString::fromUtf8("pushButton_estop"));
        QSizePolicy sizePolicy(QSizePolicy::Preferred, QSizePolicy::Expanding);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(pushButton_estop->sizePolicy().hasHeightForWidth());
        pushButton_estop->setSizePolicy(sizePolicy);
        QIcon icon;
        icon.addFile(QString::fromUtf8("../icons/classes/estop_released.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon.addFile(QString::fromUtf8("../icons/classes/estop_pressed.png"), QSize(), QIcon::Normal, QIcon::On);
        pushButton_estop->setIcon(icon);

        horizontalLayout->addWidget(pushButton_estop);

        horizontalSpacer_12 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer_12);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        label_battery = new QLabel(NaviState);
        label_battery->setObjectName(QString::fromUtf8("label_battery"));

        horizontalLayout_2->addWidget(label_battery);

        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        horizontalLayout_9 = new QHBoxLayout();
        horizontalLayout_9->setObjectName(QString::fromUtf8("horizontalLayout_9"));
        label_3 = new QLabel(NaviState);
        label_3->setObjectName(QString::fromUtf8("label_3"));

        horizontalLayout_9->addWidget(label_3);

        label_soc = new QLabel(NaviState);
        label_soc->setObjectName(QString::fromUtf8("label_soc"));

        horizontalLayout_9->addWidget(label_soc);


        verticalLayout->addLayout(horizontalLayout_9);

        horizontalLayout_10 = new QHBoxLayout();
        horizontalLayout_10->setObjectName(QString::fromUtf8("horizontalLayout_10"));
        label_6 = new QLabel(NaviState);
        label_6->setObjectName(QString::fromUtf8("label_6"));

        horizontalLayout_10->addWidget(label_6);

        label_soh = new QLabel(NaviState);
        label_soh->setObjectName(QString::fromUtf8("label_soh"));

        horizontalLayout_10->addWidget(label_soh);


        verticalLayout->addLayout(horizontalLayout_10);


        horizontalLayout_2->addLayout(verticalLayout);


        horizontalLayout->addLayout(horizontalLayout_2);


        verticalLayout_18->addLayout(horizontalLayout);


        retranslateUi(NaviState);

        QMetaObject::connectSlotsByName(NaviState);
    } // setupUi

    void retranslateUi(QWidget *NaviState)
    {
        NaviState->setWindowTitle(QApplication::translate("NaviState", "Form", nullptr));
        label->setText(QApplication::translate("NaviState", "Linear (m/s):", nullptr));
        label_linear->setText(QApplication::translate("NaviState", "0.0", nullptr));
        label_2->setText(QApplication::translate("NaviState", "Angular (rad/s):", nullptr));
        label_angular->setText(QApplication::translate("NaviState", "0.0", nullptr));
        label_5->setText(QApplication::translate("NaviState", "Target:", nullptr));
        label_goal->setText(QApplication::translate("NaviState", "0.0", nullptr));
        label_7->setText(QApplication::translate("NaviState", "ETA:", nullptr));
        label_eta->setText(QApplication::translate("NaviState", "0.0", nullptr));
        label_8->setText(QApplication::translate("NaviState", "Started on:", nullptr));
        label_started->setText(QApplication::translate("NaviState", "N/A", nullptr));
        label_9->setText(QApplication::translate("NaviState", "Running hours:", nullptr));
        label_running_hours->setText(QApplication::translate("NaviState", "0.0", nullptr));
        label_logo->setText(QString());
        label_indicator_1->setText(QString());
        label_indicator_cap_1->setText(QApplication::translate("NaviState", "amr", nullptr));
        label_indicator_2->setText(QString());
        label_indicator_cap_2->setText(QApplication::translate("NaviState", "rc", nullptr));
        label_indicator_3->setText(QString());
        label_indicator_cap_3->setText(QApplication::translate("NaviState", "task", nullptr));
        label_indicator_4->setText(QString());
        label_indicator_cap_4->setText(QApplication::translate("NaviState", "arm", nullptr));
        label_indicator_5->setText(QString());
        label_indicator_cap_5->setText(QApplication::translate("NaviState", "imu", nullptr));
        label_indicator_6->setText(QString());
        label_indicator_cap_6->setText(QApplication::translate("NaviState", "TextLabel", nullptr));
        label_indicator_7->setText(QString());
        label_indicator_cap_7->setText(QApplication::translate("NaviState", "TextLabel", nullptr));
        label_indicator_8->setText(QString());
        label_indicator_cap_8->setText(QApplication::translate("NaviState", "TextLabel", nullptr));
        pushButton_clear->setText(QApplication::translate("NaviState", "clear err", nullptr));
        pushButton_reset_imu->setText(QApplication::translate("NaviState", "Reset IMU", nullptr));
        pushButton_reset_rc->setText(QApplication::translate("NaviState", "Reset RC", nullptr));
        pushButton_reset_rgbd->setText(QApplication::translate("NaviState", "Reset RGBD", nullptr));
        pushButton_estop->setText(QApplication::translate("NaviState", "E-Stop", nullptr));
        label_battery->setText(QString());
        label_3->setText(QApplication::translate("NaviState", "SOC:", nullptr));
        label_soc->setText(QApplication::translate("NaviState", "N/A", nullptr));
        label_6->setText(QApplication::translate("NaviState", "SOH:", nullptr));
        label_soh->setText(QApplication::translate("NaviState", "N/A", nullptr));
    } // retranslateUi

};

namespace Ui {
    class NaviState: public Ui_NaviState {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_NAVI_STATE_H
