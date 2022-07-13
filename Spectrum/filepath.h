#ifndef FILEPATH_H
#define FILEPATH_H

#include <QDialog>

namespace Ui {
class filePath;
}

class filePath : public QDialog
{
    Q_OBJECT

public:
    explicit filePath(QWidget *parent = nullptr);
    ~filePath();

private slots:
    void on_cancel_clicked();

public slots:
    void on_lineEdit_editingFinished(QString& path);

private:
    Ui::filePath *ui;
};

#endif // FILEPATH_H
