/****************************************************************************
** Meta object code from reading C++ file 'display_video_stream.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "include/whi_rviz_plugins/display_video_stream.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'display_video_stream.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_whi_rviz_plugins__VideoStreamDisplay_t {
    QByteArrayData data[6];
    char stringdata0[115];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_whi_rviz_plugins__VideoStreamDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_whi_rviz_plugins__VideoStreamDisplay_t qt_meta_stringdata_whi_rviz_plugins__VideoStreamDisplay = {
    {
QT_MOC_LITERAL(0, 0, 36), // "whi_rviz_plugins::VideoStream..."
QT_MOC_LITERAL(1, 37, 22), // "updateNormalizeOptions"
QT_MOC_LITERAL(2, 60, 0), // ""
QT_MOC_LITERAL(3, 61, 18), // "updateStreamSource"
QT_MOC_LITERAL(4, 80, 18), // "updateStreamDevice"
QT_MOC_LITERAL(5, 99, 15) // "updateStreamUrl"

    },
    "whi_rviz_plugins::VideoStreamDisplay\0"
    "updateNormalizeOptions\0\0updateStreamSource\0"
    "updateStreamDevice\0updateStreamUrl"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_whi_rviz_plugins__VideoStreamDisplay[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   34,    2, 0x09 /* Protected */,
       3,    0,   35,    2, 0x09 /* Protected */,
       4,    0,   36,    2, 0x09 /* Protected */,
       5,    0,   37,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void whi_rviz_plugins::VideoStreamDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<VideoStreamDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateNormalizeOptions(); break;
        case 1: _t->updateStreamSource(); break;
        case 2: _t->updateStreamDevice(); break;
        case 3: _t->updateStreamUrl(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

QT_INIT_METAOBJECT const QMetaObject whi_rviz_plugins::VideoStreamDisplay::staticMetaObject = { {
    &rviz::ImageDisplayBase::staticMetaObject,
    qt_meta_stringdata_whi_rviz_plugins__VideoStreamDisplay.data,
    qt_meta_data_whi_rviz_plugins__VideoStreamDisplay,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *whi_rviz_plugins::VideoStreamDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *whi_rviz_plugins::VideoStreamDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_whi_rviz_plugins__VideoStreamDisplay.stringdata0))
        return static_cast<void*>(this);
    return rviz::ImageDisplayBase::qt_metacast(_clname);
}

int whi_rviz_plugins::VideoStreamDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::ImageDisplayBase::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 4;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
