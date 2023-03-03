/****************************************************************************
** Meta object code from reading C++ file 'splashanimator.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../clusture_v1/splashanimator.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'splashanimator.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_SplashAnimator_t {
    QByteArrayData data[11];
    char stringdata0[143];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_SplashAnimator_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_SplashAnimator_t qt_meta_stringdata_SplashAnimator = {
    {
QT_MOC_LITERAL(0, 0, 14), // "SplashAnimator"
QT_MOC_LITERAL(1, 15, 12), // "kmhRendering"
QT_MOC_LITERAL(2, 28, 0), // ""
QT_MOC_LITERAL(3, 29, 13), // "kmhRendering2"
QT_MOC_LITERAL(4, 43, 12), // "RpmRendering"
QT_MOC_LITERAL(5, 56, 13), // "RpmRendering2"
QT_MOC_LITERAL(6, 70, 20), // "startFlare1Animation"
QT_MOC_LITERAL(7, 91, 14), // "startAnimation"
QT_MOC_LITERAL(8, 106, 10), // "stopEngine"
QT_MOC_LITERAL(9, 117, 12), // "frameRender1"
QT_MOC_LITERAL(10, 130, 12) // "frameRender2"

    },
    "SplashAnimator\0kmhRendering\0\0kmhRendering2\0"
    "RpmRendering\0RpmRendering2\0"
    "startFlare1Animation\0startAnimation\0"
    "stopEngine\0frameRender1\0frameRender2"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_SplashAnimator[] = {

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
       1,    0,   59,    2, 0x0a /* Public */,
       3,    0,   60,    2, 0x0a /* Public */,
       4,    0,   61,    2, 0x0a /* Public */,
       5,    0,   62,    2, 0x0a /* Public */,
       6,    0,   63,    2, 0x0a /* Public */,
       7,    0,   64,    2, 0x0a /* Public */,
       8,    0,   65,    2, 0x0a /* Public */,
       9,    0,   66,    2, 0x0a /* Public */,
      10,    0,   67,    2, 0x0a /* Public */,

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

void SplashAnimator::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<SplashAnimator *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->kmhRendering(); break;
        case 1: _t->kmhRendering2(); break;
        case 2: _t->RpmRendering(); break;
        case 3: _t->RpmRendering2(); break;
        case 4: _t->startFlare1Animation(); break;
        case 5: _t->startAnimation(); break;
        case 6: _t->stopEngine(); break;
        case 7: _t->frameRender1(); break;
        case 8: _t->frameRender2(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

QT_INIT_METAOBJECT const QMetaObject SplashAnimator::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_SplashAnimator.data,
    qt_meta_data_SplashAnimator,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *SplashAnimator::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *SplashAnimator::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_SplashAnimator.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int SplashAnimator::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
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
