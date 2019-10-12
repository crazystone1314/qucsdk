#include "widget.h"
#include "ui_widget.h"

Widget::Widget(QWidget *parent) : QWidget(parent), ui(new Ui::Widget)
{
    ui->setupUi(this);
    connect(ui->horizontalSlider, SIGNAL(valueChanged(int)), ui->gaugeCar, SLOT(setValue(int)));
    ui->horizontalSlider->setValue(88);
}

Widget::~Widget()
{
    delete ui;
}
