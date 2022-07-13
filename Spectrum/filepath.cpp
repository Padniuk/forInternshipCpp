#include "filepath.h"
#include "ui_filepath.h"

filePath::filePath(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::filePath)
{
    ui->setupUi(this);
}

filePath::~filePath()
{
    delete ui;
}

void filePath::on_lineEdit_editingFinished(QString& path)
{
    path = ui->path->text();
}


void filePath::on_cancel_clicked()
{
    this->close();
}

