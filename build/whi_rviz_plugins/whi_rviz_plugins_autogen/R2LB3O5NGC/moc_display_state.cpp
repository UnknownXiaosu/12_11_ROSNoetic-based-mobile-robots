/****************************************************************************
** Meta object code from reading C++ file 'display_state.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "include/whi_rviz_plugins/display_state.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'display_state.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_whi_rviz_plugins__DisplayState_t {
    QByteArrayData data[11];
    char stringdata0[197];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_whi_rviz_plugins__DisplayState_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_whi_rviz_plugins__DisplayState_t qt_meta_stringdata_whi_rviz_plugins__DisplayState = {
    {
QT_MOC_LITERAL(0, 0, 30), // "whi_rviz_plugins::DisplayState"
QT_MOC_LITERAL(1, 31, 15), // "updateOdomTopic"
QT_MOC_LITERAL(2, 47, 0), // ""
QT_MOC_LITERAL(3, 48, 15), // "updateGoalTopic"
QT_MOC_LITERAL(4, 64, 22), // "updateMotionStateTopic"
QT_MOC_LITERAL(5, 87, 18), // "updateBatteryTopic"
QT_MOC_LITERAL(6, 106, 18), // "updateRcStateTopic"
QT_MOC_LITERAL(7, 125, 19), // "updateArmStateTopic"
QT_MOC_LITERAL(8, 145, 14), // "updateImuTopic"
QT_MOC_LITERAL(9, 160, 16), // "updateEstopTopic"
QT_MOC_LITERAL(10, 177, 19) // "updateBaselinkFrame"

    },
    "whi_rviz_plugins::DisplayState\0"
    "updateOdomTopic\0\0updateGoalTopic\0"
    "updateMotionStateTopic\0updateBatteryTopic\0"
    "updateRcStateTopic\0updateArmStateTopic\0"
    "updateImuTopic\0updateEstopTopic\0"
    "updateBaselinkFrame"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_whi_rviz_plugins__DisplayState[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   59,    2, 0x08 /* Private */,
       3,    0,   60,    2, 0x08 /* Private */,
       4,    0,   61,    2, 0x08 /* Private */,
       5,    0,   62,    2, 0x08 /* Private */,
       6,    0,   63,    2, 0x08 /* Private */,
       7,    0,   64,    2, 0x08 /* Private */,
       8,    0,   65,    2, 0x08 /* Private */,
       9,    0,   66,    2, 0x08 /* Private */,
      10,    0,   67,    2, 0x08 /* Private */,

 // slots: parameters
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

void whi_rviz_plugins::DisplayState::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<DisplayState *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateOdomTopic(); break;
        case 1: _t->updateGoalTopic(); break;
        case 2: _t->updateMotionStateTopic(); break;
        case 3: _t->updateBatteryTopic(); break;
        case 4: _t->updateRcStateTopic(); break;
        case 5: _t->updateArmStateTopic(); break;
        case 6: _t->updateImuTopic(); break;
        case 7: _t->updateEstopTopic(); break;
        case 8: _t->updateBaselinkFrame(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

QT_INIT_METAOBJECT const QMetaObject whi_rviz_plugins::DisplayState::staticMetaObject = { {
    &rviz::Display::staticMetaObject,
    qt_meta_stringdata_whi_rviz_plugins__DisplayState.data,
    qt_meta_data_whi_rviz_plugins__DisplayState,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *whi_rviz_plugins::DisplayState::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *whi_rviz_plugins::DisplayState::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_whi_rviz_plugins__DisplayState.stringdata0))
        return static_cast<void*>(this);
    return rviz::Display::qt_metacast(_clname);
}

int whi_rviz_plugins::DisplayState::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Display::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 9)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 9;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
