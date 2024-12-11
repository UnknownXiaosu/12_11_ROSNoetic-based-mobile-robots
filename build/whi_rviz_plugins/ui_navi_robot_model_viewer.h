/********************************************************************************
** Form generated from reading UI file 'navi_robot_model_viewer.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_NAVI_ROBOT_MODEL_VIEWER_H
#define UI_NAVI_ROBOT_MODEL_VIEWER_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_NaviRobotModelViewer
{
public:
    QVBoxLayout *verticalLayout_2;
    QHBoxLayout *horizontalLayout_main;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout;
    QSpacerItem *horizontalSpacer;
    QLabel *label_logo;
    QSpacerItem *verticalSpacer;
    QHBoxLayout *horizontalLayout_2;
    QLabel *label;
    QComboBox *comboBox_view;
    QSpacerItem *horizontalSpacer_2;

    void setupUi(QWidget *NaviRobotModelViewer)
    {
        if (NaviRobotModelViewer->objectName().isEmpty())
            NaviRobotModelViewer->setObjectName(QString::fromUtf8("NaviRobotModelViewer"));
        NaviRobotModelViewer->resize(466, 369);
        verticalLayout_2 = new QVBoxLayout(NaviRobotModelViewer);
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        horizontalLayout_main = new QHBoxLayout();
        horizontalLayout_main->setObjectName(QString::fromUtf8("horizontalLayout_main"));
        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer);

        label_logo = new QLabel(NaviRobotModelViewer);
        label_logo->setObjectName(QString::fromUtf8("label_logo"));

        horizontalLayout->addWidget(label_logo);


        verticalLayout->addLayout(horizontalLayout);

        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout->addItem(verticalSpacer);


        horizontalLayout_main->addLayout(verticalLayout);


        verticalLayout_2->addLayout(horizontalLayout_main);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        label = new QLabel(NaviRobotModelViewer);
        label->setObjectName(QString::fromUtf8("label"));

        horizontalLayout_2->addWidget(label);

        comboBox_view = new QComboBox(NaviRobotModelViewer);
        comboBox_view->setObjectName(QString::fromUtf8("comboBox_view"));

        horizontalLayout_2->addWidget(comboBox_view);

        horizontalSpacer_2 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer_2);


        verticalLayout_2->addLayout(horizontalLayout_2);


        retranslateUi(NaviRobotModelViewer);

        QMetaObject::connectSlotsByName(NaviRobotModelViewer);
    } // setupUi

    void retranslateUi(QWidget *NaviRobotModelViewer)
    {
        NaviRobotModelViewer->setWindowTitle(QApplication::translate("NaviRobotModelViewer", "Form", nullptr));
        label_logo->setText(QString());
        label->setText(QApplication::translate("NaviRobotModelViewer", "View:", nullptr));
    } // retranslateUi

};

namespace Ui {
    class NaviRobotModelViewer: public Ui_NaviRobotModelViewer {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_NAVI_ROBOT_MODEL_VIEWER_H
