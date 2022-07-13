#include "mainwindow.h"
#include "filepath.h"
#include "./ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    MainWindow::makePlot();
    ui->minN->setPlaceholderText(QString("0"));
    ui->maxN->setPlaceholderText(QString("10000"));
    ui->shiftN->setPlaceholderText(QString("0"));
    ui->label_4->setText("\u0394N =");
    ui->label_6->setText("\u2022 N");
    ui->label_10->setText(" \u2022 e");
    ui->label_13->setText(" \u2022 N");
    ui->label_15->setText("\u2022 N +");
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::makePlot()
{
    for(int i=nMin; i <= nMax; i++)
    {
        x.push_back(i);
        x1.push_back(i);
        y.push_back(0);
        y1.push_back(0);
        programSpectrum.push_back(0);
        fileSpectrum.push_back(0);
    }
    ui->customPlot->setInteraction(QCP::iRangeZoom,true);
    ui->customPlot->setInteraction(QCP::iRangeDrag, true);
    ui->customPlot->xAxis->setRange(nMin, nMax);

    ui->customPlot->axisRect()->setRangeDrag(Qt::Horizontal | Qt::Vertical);
    ui->customPlot->axisRect()->setRangeZoom(Qt::Horizontal | Qt::Vertical);

    ui->customPlot->addGraph();
    ui->customPlot->graph(0)->setData(x, y);
    ui->customPlot->addGraph();
    ui->customPlot->graph(1)->setData(x1, y1);
    ui->customPlot->graph(0)->setLineStyle(QCPGraph::lsNone);
    ui->customPlot->graph(0)->setScatterStyle(QCPScatterStyle(QCPScatterStyle::ssCircle,QColor(), 2));
    ui->customPlot->xAxis->setLabel("Channel");
    ui->customPlot->yAxis->setLabel("Counts");
}

bool MainWindow::goodInputData()
{
    if(ui->minN->text().toInt()<0 and ui->minN->text() !="")
    {
        ui->statusBar->showMessage("Minimal channel should be positive");
        return false;
    }
    else if(ui->maxN->text().toInt()<=0 and ui->maxN->text() !="")
    {
        ui->statusBar->showMessage("Maximal channel should be positive");
        return false;
    }
    else if(ui->shiftN->text().toInt()<=0 and (ui->minN->text().toInt()+ui->shiftN->text().toInt()) < 0)
    {
        ui->statusBar->showMessage("This shift provides negative channel(s)");
        return false;
    }
    else if(ui->peakCounts->text().toInt()<=0 and ui->peakCounts->text() !="" )
    {
        ui->statusBar->showMessage("Number of counts should be positive");
        return false;
    }
    else if(ui->peakChannel->text().toInt()<=0 and ui->peakChannel->text() !="" )
    {
        ui->statusBar->showMessage("Mean value of peak should be positive");
        return false;
    }
    else if(ui->peakChannel->text().toInt()>nMax or ui->peakChannel->text().toInt()<nMin)
    {
        ui->statusBar->showMessage("Mean value should belong to the specified interval");
        return false;
    }
    else if(ui->peakFWHM->text().toDouble()<=0 and !fwhmParametricMode and ui->peakFWHM->text() !="")
    {
        ui->statusBar->showMessage("FWHM of peak should be positive");
        return false;
    }
    else if(ui->scale->text().toDouble()<=0 and ui->scale->text() !="")
    {
        ui->statusBar->showMessage("Scale should be positive");
        return false;
    }
    else if((ui->param1->text().toDouble() + ui->param2->text().toDouble() * ui->peakChannel->text().toDouble())<=0  and fwhmParametricMode)
    {
        ui->statusBar->showMessage("This parametrization provides negative FWHM");
        return false;
    }
    else if(ui->bg1->text().toInt()<0)
    {
        ui->statusBar->showMessage("First background parameter should be positive");
        return false;
    }
    else if(ui->bg2->text().toInt()<0)
    {
        ui->statusBar->showMessage("Second background parameter should be positive");
        return false;
    }
    else if(ui->bg4->text().toInt()<0)
    {
        ui->statusBar->showMessage("Fourth background parameter should be positive");
        return false;
    }      
    else return true;
}

void MainWindow::on_apply_clicked()
{
    if(!MainWindow::goodInputData()) return;

    ui->minN->setDisabled(true);
    ui->maxN->setDisabled(true);

    if(ui->peakChannel->text() != "" and ui->peakCounts->text() != "")
    {
        foreach(peak* p, peaks)
        {
            if(p->getMean()==ui->peakChannel->text().toInt())
            {
                canAddPeak = false;
                break;
            }
            else
            {
                canAddPeak = true;
            }
        }
        if(canAddPeak)
        {
            if(ui->param1->text()!="" and ui->param2->text()!="" and fwhmParametricMode) peaks.push_back(new peak(ui->peakCounts->text().toInt(),
                    ui->peakChannel->text().toInt(),ui->param1->text().toDouble() + ui->param2->text().toDouble() * ui->peakChannel->text().toDouble()));
            if(ui->peakFWHM->text()!="" and !fwhmParametricMode) peaks.push_back(new peak(ui->peakCounts->text().toInt(),
                ui->peakChannel->text().toInt(),ui->peakFWHM->text().toDouble()));
            for(int i=nMin; i <=nMax; i++)
            {
                programSpectrum[i]+= peaks.last()->getValueAtPoint(x[i]);
                y[i] += peaks.last()->getValueAtPoint(x[i]);
            }
            ui->listWidget->addItem("Peak " + ui->peakChannel->text());
        }
    }
    if(ui->bg1->text() != "" and ui->bg2->text() != "" and ui->bg3->text() != "" and ui->bg4->text() != "" and !bkgExist)
    {
        bkg->setBackground(ui->bg1->text().toDouble(),ui->bg2->text().toDouble(),ui->bg3->text().toDouble(),ui->bg4->text().toDouble());
        ui->listWidget->addItem("Background");
        for(int i=nMin; i <= nMax; i++)
        {
            programSpectrum[i] += bkg->getValueAtPoint(x[i]);
            y[i] += bkg->getValueAtPoint(x[i]);
        }
        ui->customPlot->graph(0)->setLineStyle(QCPGraph::lsNone);
        bkgExist = true;
    }

    ui->customPlot->yAxis->setRange(0,*std::max_element(y.constBegin(),y.constEnd())*1.2);
    ui->customPlot->graph(0)->setData(x, y);
    ui->customPlot->replot();
}

void MainWindow::on_Noise_clicked()
{
    if(makeNewNoise)
    {
        ns = QVector<double>((new noise(nMax,programSpectrum))->getNoise());
    }
    if(ui->Noise->isChecked())
    {
        for (int i=nMin; i<=nMax; i++)
        {
            y[i] += ns[i];
        }
        makeNewNoise = false;
    }
    else
    {
        for (int i=nMin; i<=nMax; i++)
        {
            y[i] -= ns[i];
        }
        makeNewNoise = true;
    }
    ui->customPlot->graph(0)->setData(x, y);
    ui->customPlot->yAxis->setRange(0,*std::max_element(y.constBegin(),y.constEnd())*1.2);
    ui->customPlot->replot();
}

void MainWindow::on_natural_clicked()
{
    if(ui->natural->isChecked())
    {
        for (int i=nMin;i<=nMax;i++)
        {
            if(bkgExist) y1[i] += bkg->getValueAtPoint(x1[i]);
            foreach(peak* p,peaks)
            {
                if(x1[i]==p->getMean()) y1[i]+=p->getValueAtPoint(x1[i]);
            }
        }
    }
    else
    {
        for (int i=nMin;i<=nMax;i++)
        {
            y1[i] = 0;
        }        
    }
    ui->customPlot->graph(1)->setData(x1,y1);
    ui->customPlot->replot();
}

void MainWindow::on_Clear_clicked()
{
    for (int i=nMin; i<= nMax; i++) {
        programSpectrum[i]=0;
        fileSpectrum[i]=0;
        y[i]=0;
        y1[i]=0;
    }
    markers.clear();
    peaks.clear();
    canAddPeak = true;
    bkgExist = false;
    ui->Noise->setChecked(false);
    makeNewNoise = true;
    ui->listWidget->clear();
    ui->customPlot->graph(0)->setData(x, y);
    ui->customPlot->graph(1)->setData(x1, y1);
    ui->customPlot->replot();

    ui->minN->setEnabled(true);
    ui->maxN->setEnabled(true);
}

void MainWindow::on_delItem_clicked()
{
    foreach(QListWidgetItem* item, ui->listWidget->selectedItems()) {
        if(item->text() == "Background")
        {
            for(int i=nMin;i<=nMax;i++){
                y[i] -= bkg->getValueAtPoint(x[i]);
            }
            bkgExist = false;
        }
        else if(item->text()=="File spectrum")
        {
            for(int i=nMin;i<=nMax;i++){
                y[i] -= fileSpectrum[i];
            }
        }
        else
        {
            for(int p=0;p<peaks.size();p++)
            {
                if(peaks[p]->getMean() == item->text().mid(5,item->text().size()-5).toInt())
                {
                    for(int i=nMin;i<=nMax;i++){
                        programSpectrum[i] -= peaks[p]->getValueAtPoint(x[i]);
                        y[i] -= peaks[p]->getValueAtPoint(x[i]);
                        if(peaks[p]->getMean()==x1[i]) y1[i] -= peaks[p]->getValueAtPoint(x1[i]);
                    }
                    peaks.remove(p);
                }
            }
        }
        ui->listWidget->model()->removeRow(ui->listWidget->row(item));
    }
    ui->customPlot->graph(0)->setData(x, y);
    ui->customPlot->yAxis->setRange(0,*std::max_element(y.constBegin(),y.constEnd())*1.2);
    ui->customPlot->replot();
}

void MainWindow::on_minN_editingFinished()
{
    if(MainWindow::goodInputData()) return;

    nMin = ui->minN->text().toInt();

    ui->customPlot->graph(0)->setData(x, y);
    ui->customPlot->graph(1)->setData(x1, y1);
    ui->customPlot->xAxis->setRange(nMin, nMax);
    ui->customPlot->replot();

    ui->minN->setDisabled(true);
}

void MainWindow::on_maxN_editingFinished()
{
    if(MainWindow::goodInputData()) return;

    x.clear();
    x1.clear();
    y.clear();
    y1.clear();
    programSpectrum.clear();
    fileSpectrum.clear();

    nMax = ui->maxN->text().toInt();

    for (int i = nMin; i <= nMax; i++)
    {
        x.push_back(i);
        x1.push_back(i);
        y.push_back(0);
        y1.push_back(0);
        programSpectrum.push_back(0);
        fileSpectrum.push_back(0);
    }

    ui->customPlot->graph(0)->setData(x,y);
    ui->customPlot->graph(1)->setData(x1,y1);
    ui->customPlot->xAxis->setRange(nMin, nMax);
    ui->customPlot->replot();

    ui->maxN->setEnabled(false);
}


void MainWindow::on_shiftN_editingFinished()
{
    if(MainWindow::goodInputData()) return;

    Shift = ui->shiftN->text().toInt();
    for(int i=nMin;i<=nMax;i++)
    {
        x[i] += Shift;
        x1[i] += Shift;
    }
    ui->customPlot->graph(0)->setData(x, y);
    ui->customPlot->graph(1)->setData(x1, y1);
    ui->customPlot->replot();
}

void MainWindow::on_scale_editingFinished()
{
    if(MainWindow::goodInputData()) return;

    foreach(QListWidgetItem* item, ui->listWidget->selectedItems()) {
        foreach(peak* p, peaks)
        {
            if(p->getMean() == item->text().mid(5,item->text().size()-5).toInt())
            {
                for(int i=nMin;i<=nMax;i++)
                {
                    y[i] += (ui->scale->text().toDouble()-1)*p->getValueAtPoint(x[i]);
                    if(x1[i]==p->getMean()) y1[i] += (ui->scale->text().toDouble()-1)*p->getValueAtPoint(x1[i]);
                }
            }
        }
    }
    ui->customPlot->graph(0)->setData(x, y);
    ui->customPlot->graph(1)->setData(x1, y1);
    ui->customPlot->yAxis->setRange(0,*std::max_element(y.constBegin(),y.constEnd())*1.2);
    ui->customPlot->replot();
}

void MainWindow::on_peakFWHM_editingFinished()
{
    fwhmParametricMode = false;
    ui->peakFWHM->setStyleSheet("color : black");
    ui->param1->setStyleSheet("color : gray");
    ui->param2->setStyleSheet("color : gray");
    ui->label_3->setStyleSheet("color : black");
    ui->label_4->setStyleSheet("color : gray");
    ui->label_5->setStyleSheet("color : gray");
    ui->label_6->setStyleSheet("color : gray");
}


void MainWindow::on_param1_editingFinished()
{
    fwhmParametricMode = true;
    ui->peakFWHM->setStyleSheet("color : gray");
    ui->param1->setStyleSheet("color : black");
    ui->param2->setStyleSheet("color : black");
    ui->label_3->setStyleSheet("color : gray");
    ui->label_4->setStyleSheet("color : black");
    ui->label_5->setStyleSheet("color : black");
    ui->label_6->setStyleSheet("color : black");
}


void MainWindow::on_param2_editingFinished()
{
    fwhmParametricMode = true;
    ui->peakFWHM->setStyleSheet("color : gray");
    ui->param1->setStyleSheet("color : black");
    ui->param2->setStyleSheet("color : black");
    ui->label_3->setStyleSheet("color : gray");
    ui->label_4->setStyleSheet("color : black");
    ui->label_5->setStyleSheet("color : black");
    ui->label_6->setStyleSheet("color : black");;
}


void MainWindow::on_actionOpen_triggered()
{
    filePath path(this);
    path.setModal(true);
    path.exec();
    QString inputName = "";
    path.on_lineEdit_editingFinished(inputName);

    QFile input;
    input.setFileName(inputName);

    if(input.fileName().right(4)=="json")
    {
        if(input.open(QIODevice::ReadOnly))
        {
            QByteArray bytes = input.readAll();
            input.close();

            QJsonParseError jsonError;
            QJsonDocument document = QJsonDocument::fromJson( bytes, &jsonError );
            if( jsonError.error != QJsonParseError::NoError )
            {
                ui->statusBar->messageChanged("Reading error");
            }

            if(document.isObject())
            {
                
                for(int i=nMin;i<=nMax;i++)
                {
                    fileSpectrum.push_back(0);
                }

                QJsonObject jsonObj = document.object();
                if(!jsonObj["background"].isNull())
                {
                    background* fileBkg = new background();
                    fileBkg->setBackground(jsonObj["background"].toObject()["par1"].toInt(),jsonObj["background"].toObject()["par2"].toDouble(),
                        jsonObj["background"].toObject()["par3"].toDouble(),jsonObj["background"].toObject()["par4"].toInt());
                        for(int i=nMin;i<=nMax;i++)
                        {
                            fileSpectrum[i]+=fileBkg->getValueAtPoint(x[i]);
                        }
                }

                if(!jsonObj["peaks"].isNull())
                {
                    QVector<peak*> filePeaks;
                    QJsonArray jsonPeaks = jsonObj["peaks"].toArray();
                    foreach(auto p, jsonPeaks)
                    {
                        if(!p.toObject()["parametric"].toBool()) filePeaks.push_back(new peak(p.toObject()["par1"].toInt(),p.toObject()["par2"].toInt(),p.toObject()["par3"].toDouble()));
                        else filePeaks.push_back(new peak(p.toObject()["par1"].toInt(),p.toObject()["par2"].toInt(),
                            p.toObject()["par3"].toDouble()+p.toObject()["par2"].toInt()*p.toObject()["par4"].toDouble()));
                    }
                    foreach(peak* p, filePeaks)
                    {
                        for(int i=nMin;i<=nMax;i++)
                        {
                            fileSpectrum[i]+=p->getValueAtPoint(x[i]);
                        }
                    }
                }
                if(!jsonObj["noise"].isNull())
                {
                    if(jsonObj["noise"].toBool())
                    {
                        QVector<double> fileNs = (new noise(nMax,fileSpectrum))->getNoise();
                        for (int i = nMin; i <= nMax; i++)
                        {
                            fileSpectrum[i] += fileNs[i];
                        }
                    }
                }
                for(int i=nMin;i<=nMax;i++)
                {
                    y[i]+=fileSpectrum[i];
                }
                ui->listWidget->addItem("File spectrum");
            }
        }
    }
    else if(input.fileName().right(3)=="txt")
    {
        if (input.open(QIODevice::ReadOnly))
        {
            QTextStream in(&input);
            fileSpectrum.clear();
            double data;
            while (!in.atEnd())
            {
                QString line = in.readLine();
                if(line != "Channel\tCounts")
                {
                    in >> data >> data;
                    if(data<0) continue;
                    fileSpectrum.push_back(data);
                }  
            }

            for(int i=nMin;i<=nMax;i++)
            {
                y[i]+=fileSpectrum[i];
            }
            ui->listWidget->addItem("File spectrum");
        }
        else
        {
            ui->statusBar->showMessage("Reading error");
        }
    }
    else
    {
        if(inputName != "") ui->statusBar->showMessage("Reading error");
    }
    ui->customPlot->graph(0)->setData(x, y);
    ui->customPlot->yAxis->setRange(0,*std::max_element(y.constBegin(),y.constEnd())*1.2);
    ui->customPlot->replot();
}

void MainWindow::on_actionSave_triggered()
{
    filePath path(this);
    path.setModal(true);
    path.exec();
    QString outputName = "";
    path.on_lineEdit_editingFinished(outputName);

    QFile output;
    output.setFileName(outputName);
    if(output.open(QIODevice::WriteOnly | QIODevice::Text))
    {
        QTextStream stream(&output);

        for(int i=-1;i<y.size();i++)
        {
            if(i==-1)
            {
                stream << "Channel"<< '\t' << "Counts" <<'\n';
            }
            else stream << x[i] << '\t' << y[i] <<'\n';
        }
        output.close();
    }
}


void MainWindow::on_actionHelp_triggered()
{
    ui->statusBar->showMessage("God will help you...");
}

void MainWindow::on_actionExit_triggered()
{
    QApplication::quit();
}

