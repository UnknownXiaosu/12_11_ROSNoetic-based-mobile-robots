/********************************************************************************
** Form generated from reading UI file 'navi_teleop.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_NAVI_TELEOP_H
#define UI_NAVI_TELEOP_H

#include <QtCore/QVariant>
#include <QtGui/QIcon>
#include <QtWidgets/QApplication>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_NaviTeleop
{
public:
    QVBoxLayout *verticalLayout_3;
    QHBoxLayout *horizontalLayout;
    QGridLayout *gridLayout;
    QPushButton *pushButton_right;
    QPushButton *pushButton_left;
    QPushButton *pushButton_halt;
    QPushButton *pushButton_forward;
    QPushButton *pushButton_backward;
    QLabel *label_key_active;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout_2;
    QSpacerItem *horizontalSpacer;
    QLabel *label_logo;
    QSpacerItem *verticalSpacer_2;
    QHBoxLayout *horizontalLayout_twist;
    QVBoxLayout *verticalLayout_2;
    QHBoxLayout *horizontalLayout_3;
    QLabel *label;
    QLabel *label_linear;
    QSpacerItem *horizontalSpacer_3;
    QLabel *label_3;
    QHBoxLayout *horizontalLayout_4;
    QLabel *label_2;
    QLabel *label_angular;
    QSpacerItem *horizontalSpacer_2;
    QLabel *label_4;
    QSpacerItem *verticalSpacer;

    void setupUi(QWidget *NaviTeleop)
    {
        if (NaviTeleop->objectName().isEmpty())
            NaviTeleop->setObjectName(QString::fromUtf8("NaviTeleop"));
        NaviTeleop->resize(395, 224);
        verticalLayout_3 = new QVBoxLayout(NaviTeleop);
        verticalLayout_3->setObjectName(QString::fromUtf8("verticalLayout_3"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        gridLayout = new QGridLayout();
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        pushButton_right = new QPushButton(NaviTeleop);
        pushButton_right->setObjectName(QString::fromUtf8("pushButton_right"));
        pushButton_right->setMinimumSize(QSize(60, 0));
        QIcon icon;
        icon.addFile(QString::fromUtf8("../icons/classes/right.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_right->setIcon(icon);

        gridLayout->addWidget(pushButton_right, 1, 2, 1, 1);

        pushButton_left = new QPushButton(NaviTeleop);
        pushButton_left->setObjectName(QString::fromUtf8("pushButton_left"));
        pushButton_left->setMinimumSize(QSize(60, 0));
        QIcon icon1;
        icon1.addFile(QString::fromUtf8("../icons/classes/left.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_left->setIcon(icon1);

        gridLayout->addWidget(pushButton_left, 1, 0, 1, 1);

        pushButton_halt = new QPushButton(NaviTeleop);
        pushButton_halt->setObjectName(QString::fromUtf8("pushButton_halt"));
        pushButton_halt->setMinimumSize(QSize(60, 0));
        QIcon icon2;
        icon2.addFile(QString::fromUtf8("../icons/classes/halt.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_halt->setIcon(icon2);

        gridLayout->addWidget(pushButton_halt, 1, 1, 1, 1);

        pushButton_forward = new QPushButton(NaviTeleop);
        pushButton_forward->setObjectName(QString::fromUtf8("pushButton_forward"));
        QSizePolicy sizePolicy(QSizePolicy::Minimum, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(pushButton_forward->sizePolicy().hasHeightForWidth());
        pushButton_forward->setSizePolicy(sizePolicy);
        pushButton_forward->setMinimumSize(QSize(60, 0));
        pushButton_forward->setBaseSize(QSize(0, 0));
        QIcon icon3;
        icon3.addFile(QString::fromUtf8("../icons/classes/forward.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_forward->setIcon(icon3);

        gridLayout->addWidget(pushButton_forward, 0, 1, 1, 1);

        pushButton_backward = new QPushButton(NaviTeleop);
        pushButton_backward->setObjectName(QString::fromUtf8("pushButton_backward"));
        pushButton_backward->setMinimumSize(QSize(60, 0));
        QIcon icon4;
        icon4.addFile(QString::fromUtf8("../icons/classes/backward.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_backward->setIcon(icon4);

        gridLayout->addWidget(pushButton_backward, 2, 1, 1, 1);

        label_key_active = new QLabel(NaviTeleop);
        label_key_active->setObjectName(QString::fromUtf8("label_key_active"));

        gridLayout->addWidget(label_key_active, 0, 0, 1, 1);


        horizontalLayout->addLayout(gridLayout);

        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer);

        label_logo = new QLabel(NaviTeleop);
        label_logo->setObjectName(QString::fromUtf8("label_logo"));

        horizontalLayout_2->addWidget(label_logo);


        verticalLayout->addLayout(horizontalLayout_2);

        verticalSpacer_2 = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout->addItem(verticalSpacer_2);


        horizontalLayout->addLayout(verticalLayout);


        verticalLayout_3->addLayout(horizontalLayout);

        horizontalLayout_twist = new QHBoxLayout();
        horizontalLayout_twist->setObjectName(QString::fromUtf8("horizontalLayout_twist"));
        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        label = new QLabel(NaviTeleop);
        label->setObjectName(QString::fromUtf8("label"));

        horizontalLayout_3->addWidget(label);

        label_linear = new QLabel(NaviTeleop);
        label_linear->setObjectName(QString::fromUtf8("label_linear"));

        horizontalLayout_3->addWidget(label_linear);

        horizontalSpacer_3 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_3->addItem(horizontalSpacer_3);

        label_3 = new QLabel(NaviTeleop);
        label_3->setObjectName(QString::fromUtf8("label_3"));

        horizontalLayout_3->addWidget(label_3);


        verticalLayout_2->addLayout(horizontalLayout_3);

        horizontalLayout_4 = new QHBoxLayout();
        horizontalLayout_4->setObjectName(QString::fromUtf8("horizontalLayout_4"));
        label_2 = new QLabel(NaviTeleop);
        label_2->setObjectName(QString::fromUtf8("label_2"));

        horizontalLayout_4->addWidget(label_2);

        label_angular = new QLabel(NaviTeleop);
        label_angular->setObjectName(QString::fromUtf8("label_angular"));

        horizontalLayout_4->addWidget(label_angular);

        horizontalSpacer_2 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_4->addItem(horizontalSpacer_2);

        label_4 = new QLabel(NaviTeleop);
        label_4->setObjectName(QString::fromUtf8("label_4"));

        horizontalLayout_4->addWidget(label_4);


        verticalLayout_2->addLayout(horizontalLayout_4);

        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_2->addItem(verticalSpacer);


        horizontalLayout_twist->addLayout(verticalLayout_2);


        verticalLayout_3->addLayout(horizontalLayout_twist);


        retranslateUi(NaviTeleop);

        QMetaObject::connectSlotsByName(NaviTeleop);
    } // setupUi

    void retranslateUi(QWidget *NaviTeleop)
    {
        NaviTeleop->setWindowTitle(QApplication::translate("NaviTeleop", "Form", nullptr));
        pushButton_right->setText(QString());
        pushButton_left->setText(QString());
        pushButton_halt->setText(QString());
        pushButton_forward->setText(QString());
        pushButton_backward->setText(QString());
        label_key_active->setText(QApplication::translate("NaviTeleop", "Key", nullptr));
        label_logo->setText(QString());
        label->setText(QApplication::translate("NaviTeleop", "Linear:", nullptr));
        label_linear->setText(QApplication::translate("NaviTeleop", "0.0", nullptr));
        label_3->setText(QApplication::translate("NaviTeleop", "m/s", nullptr));
        label_2->setText(QApplication::translate("NaviTeleop", "Angular:", nullptr));
        label_angular->setText(QApplication::translate("NaviTeleop", "0.0", nullptr));
        label_4->setText(QApplication::translate("NaviTeleop", "rad/s", nullptr));
    } // retranslateUi

};

namespace Ui {
    class NaviTeleop: public Ui_NaviTeleop {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_NAVI_TELEOP_H
