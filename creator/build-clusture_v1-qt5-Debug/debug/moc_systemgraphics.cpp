/****************************************************************************
** Meta object code from reading C++ file 'systemgraphics.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../clusture_v1/systemgraphics.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'systemgraphics.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_SystemGraphics_t {
    QByteArrayData data[27];
    char stringdata0[243];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_SystemGraphics_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_SystemGraphics_t qt_meta_stringdata_SystemGraphics = {
    {
QT_MOC_LITERAL(0, 0, 14), // "SystemGraphics"
QT_MOC_LITERAL(1, 15, 11), // "setKmhValue"
QT_MOC_LITERAL(2, 27, 0), // ""
QT_MOC_LITERAL(3, 28, 3), // "val"
QT_MOC_LITERAL(4, 32, 11), // "setRpmValue"
QT_MOC_LITERAL(5, 44, 13), // "setLightColor"
QT_MOC_LITERAL(6, 58, 3), // "clr"
QT_MOC_LITERAL(7, 62, 18), // "setFrameFlashSpeed"
QT_MOC_LITERAL(8, 81, 4), // "mode"
QT_MOC_LITERAL(9, 86, 11), // "updateClock"
QT_MOC_LITERAL(10, 98, 13), // "setTemprature"
QT_MOC_LITERAL(11, 112, 4), // "vall"
QT_MOC_LITERAL(12, 117, 8), // "openMenu"
QT_MOC_LITERAL(13, 126, 6), // "openUI"
QT_MOC_LITERAL(14, 133, 4), // "page"
QT_MOC_LITERAL(15, 138, 12), // "setMusicPath"
QT_MOC_LITERAL(16, 151, 4), // "path"
QT_MOC_LITERAL(17, 156, 9), // "setCaller"
QT_MOC_LITERAL(18, 166, 8), // "img_path"
QT_MOC_LITERAL(19, 175, 4), // "name"
QT_MOC_LITERAL(20, 180, 10), // "setWeather"
QT_MOC_LITERAL(21, 191, 7), // "weather"
QT_MOC_LITERAL(22, 199, 5), // "w_Img"
QT_MOC_LITERAL(23, 205, 9), // "w_country"
QT_MOC_LITERAL(24, 215, 6), // "w_city"
QT_MOC_LITERAL(25, 222, 6), // "w_info"
QT_MOC_LITERAL(26, 229, 13) // "w_rainPercent"

    },
    "SystemGraphics\0setKmhValue\0\0val\0"
    "setRpmValue\0setLightColor\0clr\0"
    "setFrameFlashSpeed\0mode\0updateClock\0"
    "setTemprature\0vall\0openMenu\0openUI\0"
    "page\0setMusicPath\0path\0setCaller\0"
    "img_path\0name\0setWeather\0weather\0w_Img\0"
    "w_country\0w_city\0w_info\0w_rainPercent"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_SystemGraphics[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      11,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   69,    2, 0x0a /* Public */,
       4,    1,   72,    2, 0x0a /* Public */,
       5,    1,   75,    2, 0x0a /* Public */,
       7,    1,   78,    2, 0x0a /* Public */,
       9,    0,   81,    2, 0x0a /* Public */,
      10,    1,   82,    2, 0x0a /* Public */,
      12,    0,   85,    2, 0x0a /* Public */,
      13,    1,   86,    2, 0x0a /* Public */,
      15,    1,   89,    2, 0x0a /* Public */,
      17,    2,   92,    2, 0x0a /* Public */,
      20,    6,   97,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void, QMetaType::QString,    6,
    QMetaType::Void, QMetaType::Int,    8,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,   11,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,   14,
    QMetaType::Void, QMetaType::QString,   16,
    QMetaType::Void, QMetaType::QString, QMetaType::QString,   18,   19,
    QMetaType::Void, QMetaType::Int, QMetaType::QString, QMetaType::QString, QMetaType::QString, QMetaType::QString, QMetaType::Float,   21,   22,   23,   24,   25,   26,

       0        // eod
};

void SystemGraphics::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<SystemGraphics *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->setKmhValue((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: _t->setRpmValue((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->setLightColor((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 3: _t->setFrameFlashSpeed((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 4: _t->updateClock(); break;
        case 5: _t->setTemprature((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 6: _t->openMenu(); break;
        case 7: _t->openUI((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 8: _t->setMusicPath((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 9: _t->setCaller((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2]))); break;
        case 10: _t->setWeather((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2])),(*reinterpret_cast< QString(*)>(_a[3])),(*reinterpret_cast< QString(*)>(_a[4])),(*reinterpret_cast< QString(*)>(_a[5])),(*reinterpret_cast< float(*)>(_a[6]))); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject SystemGraphics::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_SystemGraphics.data,
    qt_meta_data_SystemGraphics,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *SystemGraphics::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *SystemGraphics::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_SystemGraphics.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int SystemGraphics::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 11)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 11;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 11)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 11;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
