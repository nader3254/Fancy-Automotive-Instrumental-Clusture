/****************************************************************************
** Meta object code from reading C++ file 'splashanimator.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.4.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../clusture_v1/splashanimator.h"
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'splashanimator.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.4.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

#ifndef Q_CONSTINIT
#define Q_CONSTINIT
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
namespace {
struct qt_meta_stringdata_SplashAnimator_t {
    uint offsetsAndSizes[16];
    char stringdata0[15];
    char stringdata1[13];
    char stringdata2[1];
    char stringdata3[14];
    char stringdata4[13];
    char stringdata5[14];
    char stringdata6[21];
    char stringdata7[15];
};
#define QT_MOC_LITERAL(ofs, len) \
    uint(sizeof(qt_meta_stringdata_SplashAnimator_t::offsetsAndSizes) + ofs), len 
Q_CONSTINIT static const qt_meta_stringdata_SplashAnimator_t qt_meta_stringdata_SplashAnimator = {
    {
        QT_MOC_LITERAL(0, 14),  // "SplashAnimator"
        QT_MOC_LITERAL(15, 12),  // "kmhRendering"
        QT_MOC_LITERAL(28, 0),  // ""
        QT_MOC_LITERAL(29, 13),  // "kmhRendering2"
        QT_MOC_LITERAL(43, 12),  // "RpmRendering"
        QT_MOC_LITERAL(56, 13),  // "RpmRendering2"
        QT_MOC_LITERAL(70, 20),  // "startFlare1Animation"
        QT_MOC_LITERAL(91, 14)   // "startAnimation"
    },
    "SplashAnimator",
    "kmhRendering",
    "",
    "kmhRendering2",
    "RpmRendering",
    "RpmRendering2",
    "startFlare1Animation",
    "startAnimation"
};
#undef QT_MOC_LITERAL
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_SplashAnimator[] = {

 // content:
      10,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
       1,    0,   50,    2, 0x0a,    1 /* Public */,
       3,    0,   51,    2, 0x0a,    2 /* Public */,
       4,    0,   52,    2, 0x0a,    3 /* Public */,
       5,    0,   53,    2, 0x0a,    4 /* Public */,
       6,    0,   54,    2, 0x0a,    5 /* Public */,
       7,    0,   55,    2, 0x0a,    6 /* Public */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

Q_CONSTINIT const QMetaObject SplashAnimator::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_SplashAnimator.offsetsAndSizes,
    qt_meta_data_SplashAnimator,
    qt_static_metacall,
    nullptr,
    qt_incomplete_metaTypeArray<qt_meta_stringdata_SplashAnimator_t,
        // Q_OBJECT / Q_GADGET
        QtPrivate::TypeAndForceComplete<SplashAnimator, std::true_type>,
        // method 'kmhRendering'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'kmhRendering2'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'RpmRendering'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'RpmRendering2'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'startFlare1Animation'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'startAnimation'
        QtPrivate::TypeAndForceComplete<void, std::false_type>
    >,
    nullptr
} };

void SplashAnimator::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<SplashAnimator *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->kmhRendering(); break;
        case 1: _t->kmhRendering2(); break;
        case 2: _t->RpmRendering(); break;
        case 3: _t->RpmRendering2(); break;
        case 4: _t->startFlare1Animation(); break;
        case 5: _t->startAnimation(); break;
        default: ;
        }
    }
    (void)_a;
}

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
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 6)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 6;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE