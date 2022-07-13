#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include "qcustomplot.h"
#include "peak.h"
#include "background.h"
#include "noise.h"

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:
    void makePlot();
    bool goodInputData();
    void on_apply_clicked();
    void on_Clear_clicked();
    void on_Noise_clicked();
    void on_natural_clicked();
    void on_delItem_clicked();
    void on_minN_editingFinished();
    void on_maxN_editingFinished();
    void on_shiftN_editingFinished();
    void on_scale_editingFinished();
    void on_peakFWHM_editingFinished();
    void on_param1_editingFinished();
    void on_param2_editingFinished();
    void on_actionOpen_triggered();
    void on_actionExit_triggered();
    void on_actionSave_triggered();
    void on_actionHelp_triggered();

private:
    Ui::MainWindow *ui;
    QVector<double> x, y,programSpectrum, fileSpectrum, ns,x1,y1;
    int nMin=0,nMax=10000,Shift=0;
    QVector<QCPItemLine*> markers;
    QPen pen;
    QVector<peak*> peaks;
    background* bkg = new background();
    bool bkgExist = false;
    bool makeNewNoise = true;
    bool canAddPeak = true;
    bool fwhmParametricMode;
};
#endif // MAINWINDOW_H
