// This file is autogenerated by CMake. Do not edit.

#include <QtCore/qtsymbolmacros.h>
#include <QtQml/qqmlextensionplugin.h>


$<$<BOOL:$<TARGET_PROPERTY:QuickStudioEventSimulator,_qt_cachegen_sanitized_resource_name>>:QT_DECLARE_EXTERN_RESOURCE($<JOIN:$<TARGET_PROPERTY:QuickStudioEventSimulator,_qt_cachegen_sanitized_resource_name>,)
QT_DECLARE_EXTERN_RESOURCE(>)>
$<$<BOOL:$<TARGET_PROPERTY:QuickStudioEventSimulator,_qt_qml_module_sanitized_resource_names>>:QT_DECLARE_EXTERN_RESOURCE($<JOIN:$<TARGET_PROPERTY:QuickStudioEventSimulator,_qt_qml_module_sanitized_resource_names>,)
QT_DECLARE_EXTERN_RESOURCE(>)>


$<$<BOOL:qml_register_types_QtQuick_Studio_EventSimulator>:QT_DECLARE_EXTERN_SYMBOL_VOID($<JOIN:qml_register_types_QtQuick_Studio_EventSimulator,)
QT_DECLARE_EXTERN_SYMBOL_VOID(>)>

class QtQuick_Studio_EventSimulatorPlugin : public QQmlEngineExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID QQmlEngineExtensionInterface_iid)

public:
    QtQuick_Studio_EventSimulatorPlugin(QObject *parent = nullptr) : QQmlEngineExtensionPlugin(parent)
    {

$<$<BOOL:qml_register_types_QtQuick_Studio_EventSimulator>:QT_KEEP_SYMBOL($<JOIN:qml_register_types_QtQuick_Studio_EventSimulator,)
QT_KEEP_SYMBOL(>)>
$<$<BOOL:$<TARGET_PROPERTY:QuickStudioEventSimulator,_qt_cachegen_sanitized_resource_name>>:QT_KEEP_RESOURCE($<JOIN:$<TARGET_PROPERTY:QuickStudioEventSimulator,_qt_cachegen_sanitized_resource_name>,)
QT_KEEP_RESOURCE(>)>
$<$<BOOL:$<TARGET_PROPERTY:QuickStudioEventSimulator,_qt_qml_module_sanitized_resource_names>>:QT_KEEP_RESOURCE($<JOIN:$<TARGET_PROPERTY:QuickStudioEventSimulator,_qt_qml_module_sanitized_resource_names>,)
QT_KEEP_RESOURCE(>)>
    }
};



#include "QuickStudioEventSimulatorplugin_QtQuick_Studio_EventSimulatorPlugin.moc"