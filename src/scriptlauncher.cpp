#include "scriptlauncher.h"
#include    <QProcess>
ScriptLauncher::ScriptLauncher(QObject *parent) :
    QObject(parent),
    m_process(new QProcess(this))
{
}
void ScriptLauncher::launchScript(QString program)
{
    m_process->start(program);
    m_process->waitForFinished();
}
