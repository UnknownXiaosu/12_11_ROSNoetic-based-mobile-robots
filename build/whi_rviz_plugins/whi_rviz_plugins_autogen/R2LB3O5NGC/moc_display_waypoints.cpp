/****************************************************************************
** Meta object code from reading C++ file 'display_waypoints.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "include/whi_rviz_plugins/display_waypoints.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'display_waypoints.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_whi_rviz_plugins__WaypointsDisplay_t {
    QByteArrayData data[16];
    char stringdata0[311];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_whi_rviz_plugins__WaypointsDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_whi_rviz_plugins__WaypointsDisplay_t qt_meta_stringdata_whi_rviz_plugins__WaypointsDisplay = {
    {
QT_MOC_LITERAL(0, 0, 34), // "whi_rviz_plugins::WaypointsDi..."
QT_MOC_LITERAL(1, 35, 32), // "interactiveMarkerProcessFeedback"
QT_MOC_LITERAL(2, 68, 0), // ""
QT_MOC_LITERAL(3, 69, 46), // "visualization_msgs::Interacti..."
QT_MOC_LITERAL(4, 116, 8), // "Feedback"
QT_MOC_LITERAL(5, 125, 11), // "updateMarks"
QT_MOC_LITERAL(6, 137, 16), // "updateVisibility"
QT_MOC_LITERAL(7, 154, 10), // "updateSize"
QT_MOC_LITERAL(8, 165, 11), // "updateColor"
QT_MOC_LITERAL(9, 177, 10), // "updateMode"
QT_MOC_LITERAL(10, 188, 19), // "updateBaselinkFrame"
QT_MOC_LITERAL(11, 208, 18), // "updateStuckTimeout"
QT_MOC_LITERAL(12, 227, 25), // "updateRecoveryMaxTryCount"
QT_MOC_LITERAL(13, 253, 15), // "updateTolerance"
QT_MOC_LITERAL(14, 269, 22), // "updateMotionStateTopic"
QT_MOC_LITERAL(15, 292, 18) // "updateRcStateTopic"

    },
    "whi_rviz_plugins::WaypointsDisplay\0"
    "interactiveMarkerProcessFeedback\0\0"
    "visualization_msgs::InteractiveMarkerFeedback&\0"
    "Feedback\0updateMarks\0updateVisibility\0"
    "updateSize\0updateColor\0updateMode\0"
    "updateBaselinkFrame\0updateStuckTimeout\0"
    "updateRecoveryMaxTryCount\0updateTolerance\0"
    "updateMotionStateTopic\0updateRcStateTopic"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_whi_rviz_plugins__WaypointsDisplay[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      12,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   74,    2, 0x08 /* Private */,
       5,    0,   77,    2, 0x08 /* Private */,
       6,    0,   78,    2, 0x08 /* Private */,
       7,    0,   79,    2, 0x08 /* Private */,
       8,    0,   80,    2, 0x08 /* Private */,
       9,    0,   81,    2, 0x08 /* Private */,
      10,    0,   82,    2, 0x08 /* Private */,
      11,    0,   83,    2, 0x08 /* Private */,
      12,    0,   84,    2, 0x08 /* Private */,
      13,    0,   85,    2, 0x08 /* Private */,
      14,    0,   86,    2, 0x08 /* Private */,
      15,    0,   87,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void whi_rviz_plugins::WaypointsDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<WaypointsDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->interactiveMarkerProcessFeedback((*reinterpret_cast< visualization_msgs::InteractiveMarkerFeedback(*)>(_a[1]))); break;
        case 1: _t->updateMarks(); break;
        case 2: _t->updateVisibility(); break;
        case 3: _t->updateSize(); break;
        case 4: _t->updateColor(); break;
        case 5: _t->updateMode(); break;
        case 6: _t->updateBaselinkFrame(); break;
        case 7: _t->updateStuckTimeout(); break;
        case 8: _t->updateRecoveryMaxTryCount(); break;
        case 9: _t->updateTolerance(); break;
        case 10: _t->updateMotionStateTopic(); break;
        case 11: _t->updateRcStateTopic(); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject whi_rviz_plugins::WaypointsDisplay::staticMetaObject = { {
    &rviz::Display::staticMetaObject,
    qt_meta_stringdata_whi_rviz_plugins__WaypointsDisplay.data,
    qt_meta_data_whi_rviz_plugins__WaypointsDisplay,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *whi_rviz_plugins::WaypointsDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *whi_rviz_plugins::WaypointsDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_whi_rviz_plugins__WaypointsDisplay.stringdata0))
        return static_cast<void*>(this);
    return rviz::Display::qt_metacast(_clname);
}

int whi_rviz_plugins::WaypointsDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Display::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 12)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 12;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 12)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 12;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
