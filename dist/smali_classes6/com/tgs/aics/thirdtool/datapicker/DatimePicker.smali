.class public Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;
.super Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;
.source "DatimePicker.java"


# instance fields
.field private onDatimePickedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatimePickedListener;

.field protected wheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;-><init>(Landroid/app/Activity;I)V

    return-void
.end method


# virtual methods
.method protected createBodyView()Landroid/view/View;
    .locals 2

    .line 33
    new-instance v0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;->wheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;

    return-object v0
.end method

.method public final getWheelLayout()Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;->wheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;

    return-object v0
.end method

.method protected onCancel()V
    .locals 0

    return-void
.end method

.method protected onOk()V
    .locals 8

    .line 44
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;->onDatimePickedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatimePickedListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;->wheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->getSelectedYear()I

    move-result v2

    .line 46
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;->wheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->getSelectedMonth()I

    move-result v3

    .line 47
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;->wheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->getSelectedDay()I

    move-result v4

    .line 48
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;->wheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->getSelectedHour()I

    move-result v5

    .line 49
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;->wheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->getSelectedMinute()I

    move-result v6

    .line 50
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;->wheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->getSelectedSecond()I

    move-result v7

    .line 51
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;->onDatimePickedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatimePickedListener;

    invoke-interface/range {v1 .. v7}, Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatimePickedListener;->onDatimePicked(IIIIII)V

    :cond_0
    return-void
.end method

.method public setOnDatimePickedListener(Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatimePickedListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;->onDatimePickedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatimePickedListener;

    return-void
.end method
