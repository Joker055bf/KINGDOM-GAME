.class public Lcom/tgs/aics/thirdtool/datapicker/DatePicker;
.super Lcom/tgs/aics/thirdtool/datapicker/common/ModalDialog;
.source "DatePicker.java"


# instance fields
.field private onDatePickedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatePickedListener;

.field protected wheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;


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
    new-instance v0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/DatePicker;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/DatePicker;->wheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    return-object v0
.end method

.method public final getWheelLayout()Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/DatePicker;->wheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    return-object v0
.end method

.method protected onCancel()V
    .locals 0

    return-void
.end method

.method protected onOk()V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/DatePicker;->onDatePickedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatePickedListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/DatePicker;->wheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->getSelectedYear()I

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/DatePicker;->wheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->getSelectedMonth()I

    move-result v1

    .line 47
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/DatePicker;->wheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    invoke-virtual {v2}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->getSelectedDay()I

    move-result v2

    .line 48
    iget-object v3, p0, Lcom/tgs/aics/thirdtool/datapicker/DatePicker;->onDatePickedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatePickedListener;

    invoke-interface {v3, v0, v1, v2}, Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatePickedListener;->onDatePicked(III)V

    :cond_0
    return-void
.end method

.method public setOnDatePickedListener(Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatePickedListener;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/DatePicker;->onDatePickedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatePickedListener;

    return-void
.end method
