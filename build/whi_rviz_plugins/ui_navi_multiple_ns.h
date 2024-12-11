/********************************************************************************
** Form generated from reading UI file 'navi_multiple_ns.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_NAVI_MULTIPLE_NS_H
#define UI_NAVI_MULTIPLE_NS_H

#include <QtCore/QVariant>
#include <QtGui/QIcon>
#include <QtWidgets/QApplication>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_NaviMultipleNs
{
public:
    QVBoxLayout *verticalLayout_2;
    QHBoxLayout *horizontalLayout_3;
    QVBoxLayout *verticalLayout;
    QLabel *label_count;
    QHBoxLayout *horizontalLayout;
    QComboBox *comboBox_ns;
    QPushButton *pushButton_add_ns;
    QPushButton *pushButton_remove_ns;
    QHBoxLayout *horizontalLayout_2;
    QPushButton *pushButton_initial;
    QPushButton *pushButton_goal;
    QSpacerItem *horizontalSpacer;
    QLabel *label_logo;

    void setupUi(QWidget *NaviMultipleNs)
    {
        if (NaviMultipleNs->objectName().isEmpty())
            NaviMultipleNs->setObjectName(QString::fromUtf8("NaviMultipleNs"));
        NaviMultipleNs->resize(410, 105);
        verticalLayout_2 = new QVBoxLayout(NaviMultipleNs);
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        label_count = new QLabel(NaviMultipleNs);
        label_count->setObjectName(QString::fromUtf8("label_count"));

        verticalLayout->addWidget(label_count);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        comboBox_ns = new QComboBox(NaviMultipleNs);
        comboBox_ns->setObjectName(QString::fromUtf8("comboBox_ns"));
        comboBox_ns->setEditable(true);

        horizontalLayout->addWidget(comboBox_ns);

        pushButton_add_ns = new QPushButton(NaviMultipleNs);
        pushButton_add_ns->setObjectName(QString::fromUtf8("pushButton_add_ns"));

        horizontalLayout->addWidget(pushButton_add_ns);

        pushButton_remove_ns = new QPushButton(NaviMultipleNs);
        pushButton_remove_ns->setObjectName(QString::fromUtf8("pushButton_remove_ns"));

        horizontalLayout->addWidget(pushButton_remove_ns);


        verticalLayout->addLayout(horizontalLayout);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        pushButton_initial = new QPushButton(NaviMultipleNs);
        pushButton_initial->setObjectName(QString::fromUtf8("pushButton_initial"));
        QIcon icon;
        icon.addFile(QString::fromUtf8("../icons/classes/SetInitialPose.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_initial->setIcon(icon);
        pushButton_initial->setCheckable(true);

        horizontalLayout_2->addWidget(pushButton_initial);

        pushButton_goal = new QPushButton(NaviMultipleNs);
        pushButton_goal->setObjectName(QString::fromUtf8("pushButton_goal"));
        QIcon icon1;
        icon1.addFile(QString::fromUtf8("../icons/classes/SetGoal.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_goal->setIcon(icon1);
        pushButton_goal->setCheckable(true);

        horizontalLayout_2->addWidget(pushButton_goal);


        verticalLayout->addLayout(horizontalLayout_2);


        horizontalLayout_3->addLayout(verticalLayout);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_3->addItem(horizontalSpacer);

        label_logo = new QLabel(NaviMultipleNs);
        label_logo->setObjectName(QString::fromUtf8("label_logo"));

        horizontalLayout_3->addWidget(label_logo);


        verticalLayout_2->addLayout(horizontalLayout_3);


        retranslateUi(NaviMultipleNs);

        QMetaObject::connectSlotsByName(NaviMultipleNs);
    } // setupUi

    void retranslateUi(QWidget *NaviMultipleNs)
    {
        NaviMultipleNs->setWindowTitle(QApplication::translate("NaviMultipleNs", "Form", nullptr));
        label_count->setText(QApplication::translate("NaviMultipleNs", "ns count: 0", nullptr));
        pushButton_add_ns->setText(QApplication::translate("NaviMultipleNs", "Add", nullptr));
        pushButton_remove_ns->setText(QApplication::translate("NaviMultipleNs", "Remove", nullptr));
        pushButton_initial->setText(QApplication::translate("NaviMultipleNs", "Initial Pose", nullptr));
        pushButton_goal->setText(QApplication::translate("NaviMultipleNs", "Navi Goal", nullptr));
        label_logo->setText(QString());
    } // retranslateUi

};

namespace Ui {
    class NaviMultipleNs: public Ui_NaviMultipleNs {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_NAVI_MULTIPLE_NS_H
