.class public Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;
.super Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;
.source "DateWheelLayout.java"


# instance fields
.field private dayLabelView:Landroid/widget/TextView;

.field private dayWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

.field private endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

.field private monthLabelView:Landroid/widget/TextView;

.field private monthWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

.field private onDateSelectedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnDateSelectedListener;

.field private resetWhenLinkage:Z

.field private selectedDay:Ljava/lang/Integer;

.field private selectedMonth:Ljava/lang/Integer;

.field private selectedYear:Ljava/lang/Integer;

.field private startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

.field private yearLabelView:Landroid/widget/TextView;

.field private yearWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->resetWhenLinkage:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->resetWhenLinkage:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->resetWhenLinkage:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->resetWhenLinkage:Z

    return-void
.end method

.method private changeDay(II)V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getYear()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getMonth()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    .line 336
    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getYear()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getMonth()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 337
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getDay()I

    move-result p1

    .line 338
    iget-object p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {p2}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getDay()I

    move-result p2

    goto :goto_1

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getYear()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getMonth()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getDay()I

    move-result v0

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->getTotalDaysInMonth(II)I

    move-result p2

    move p1, v0

    goto :goto_1

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getYear()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getMonth()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 348
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getDay()I

    move-result p2

    goto :goto_0

    .line 351
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->getTotalDaysInMonth(II)I

    move-result p2

    :goto_0
    move p1, v1

    .line 353
    :goto_1
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedDay:Ljava/lang/Integer;

    if-nez v0, :cond_3

    .line 354
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedDay:Ljava/lang/Integer;

    goto :goto_2

    .line 356
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedDay:Ljava/lang/Integer;

    .line 357
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedDay:Ljava/lang/Integer;

    .line 359
    :goto_2
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->dayWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {v0, p1, p2, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setRange(III)V

    .line 360
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->dayWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    iget-object p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedDay:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setDefaultValue(Ljava/lang/Object;)V

    return-void
.end method

.method private changeMonth(I)V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getYear()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getMonth()I

    move-result v0

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getMonth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 304
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getMonth()I

    move-result v1

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v3}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getMonth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getYear()I

    move-result v0

    const/16 v1, 0xc

    if-ne p1, v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getMonth()I

    move-result v0

    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getYear()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getMonth()I

    move-result v1

    :cond_2
    move v0, v2

    .line 321
    :goto_0
    iget-object v3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedMonth:Ljava/lang/Integer;

    if-nez v3, :cond_3

    .line 322
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedMonth:Ljava/lang/Integer;

    goto :goto_1

    .line 324
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedMonth:Ljava/lang/Integer;

    .line 325
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedMonth:Ljava/lang/Integer;

    .line 327
    :goto_1
    iget-object v3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->monthWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {v3, v0, v1, v2}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setRange(III)V

    .line 328
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->monthWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedMonth:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setDefaultValue(Ljava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedMonth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->changeDay(II)V

    return-void
.end method

.method private changeYear()V
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getYear()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 287
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getYear()I

    move-result v1

    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v2}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getYear()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 288
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedYear:Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 289
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedYear:Ljava/lang/Integer;

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedYear:Ljava/lang/Integer;

    .line 292
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedYear:Ljava/lang/Integer;

    .line 294
    :goto_0
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->yearWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setRange(III)V

    .line 295
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->yearWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedYear:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setDefaultValue(Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedYear:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->changeMonth(I)V

    return-void
.end method

.method private dateSelectedCallback()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->onDateSelectedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnDateSelectedListener;

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->dayWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    new-instance v1, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;)V

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getTotalDaysInMonth(II)I
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_6

    const/4 p1, 0x5

    if-eq p2, p1, :cond_6

    const/16 p1, 0xa

    if-eq p2, p1, :cond_6

    const/16 p1, 0xc

    if-eq p2, p1, :cond_6

    const/4 p1, 0x7

    if-eq p2, p1, :cond_6

    const/16 p1, 0x8

    if-eq p2, p1, :cond_6

    const/16 p1, 0x1e

    return p1

    :cond_0
    const/16 p2, 0x1d

    if-gtz p1, :cond_1

    return p2

    .line 389
    :cond_1
    rem-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_2

    rem-int/lit8 v1, p1, 0x64

    if-nez v1, :cond_4

    :cond_2
    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    return p2

    :cond_5
    const/16 p1, 0x1c

    return p1

    :cond_6
    const/16 p1, 0x1f

    return p1
.end method

.method static synthetic lambda$setDateFormatter$1(Lcom/tgs/aics/thirdtool/datapicker/contract/DateFormatter;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 222
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/contract/DateFormatter;->formatYear(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setDateFormatter$2(Lcom/tgs/aics/thirdtool/datapicker/contract/DateFormatter;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 223
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/contract/DateFormatter;->formatMonth(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setDateFormatter$3(Lcom/tgs/aics/thirdtool/datapicker/contract/DateFormatter;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 224
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/contract/DateFormatter;->formatDay(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDayLabelView()Landroid/widget/TextView;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->dayLabelView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getDayWheelView()Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->dayWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    return-object v0
.end method

.method public final getEndValue()Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    return-object v0
.end method

.method public final getMonthLabelView()Landroid/widget/TextView;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->monthLabelView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getMonthWheelView()Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->monthWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    return-object v0
.end method

.method public final getSelectedDay()I
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->dayWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->getCurrentItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getSelectedMonth()I
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->monthWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->getCurrentItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getSelectedYear()I
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->yearWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->getCurrentItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getStartValue()Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    return-object v0
.end method

.method public final getYearLabelView()Landroid/widget/TextView;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->yearLabelView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getYearWheelView()Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->yearWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    return-object v0
.end method

.method synthetic lambda$dateSelectedCallback$0$com-tgs-aics-thirdtool-datapicker-widget-DateWheelLayout()V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->onDateSelectedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnDateSelectedListener;

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedYear:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedMonth:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedDay:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tgs/aics/thirdtool/datapicker/contract/OnDateSelectedListener;->onDateSelected(III)V

    return-void
.end method

.method protected onAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 81
    sget-object v0, Lcom/tgs/service/ai/R$styleable;->DateWheelLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 82
    sget p2, Lcom/tgs/service/ai/R$styleable;->DateWheelLayout_wheel_dateMode:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setDateMode(I)V

    .line 83
    sget p2, Lcom/tgs/service/ai/R$styleable;->DateWheelLayout_wheel_yearLabel:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 84
    sget v0, Lcom/tgs/service/ai/R$styleable;->DateWheelLayout_wheel_monthLabel:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    sget v1, Lcom/tgs/service/ai/R$styleable;->DateWheelLayout_wheel_dayLabel:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    invoke-virtual {p0, p2, v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setDateLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 88
    new-instance p1, Lcom/tgs/aics/thirdtool/datapicker/impl/SimpleDateFormatter;

    invoke-direct {p1}, Lcom/tgs/aics/thirdtool/datapicker/impl/SimpleDateFormatter;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setDateFormatter(Lcom/tgs/aics/thirdtool/datapicker/contract/DateFormatter;)V

    return-void
.end method

.method protected onInit(Landroid/content/Context;)V
    .locals 0

    .line 71
    sget p1, Lcom/tgs/service/ai/R$id;->wheel_picker_date_year_wheel:I

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->yearWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    .line 72
    sget p1, Lcom/tgs/service/ai/R$id;->wheel_picker_date_month_wheel:I

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->monthWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    .line 73
    sget p1, Lcom/tgs/service/ai/R$id;->wheel_picker_date_day_wheel:I

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->dayWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    .line 74
    sget p1, Lcom/tgs/service/ai/R$id;->wheel_picker_date_year_label:I

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->yearLabelView:Landroid/widget/TextView;

    .line 75
    sget p1, Lcom/tgs/service/ai/R$id;->wheel_picker_date_month_label:I

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->monthLabelView:Landroid/widget/TextView;

    .line 76
    sget p1, Lcom/tgs/service/ai/R$id;->wheel_picker_date_day_label:I

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->dayLabelView:Landroid/widget/TextView;

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 93
    invoke-super {p0, p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 94
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    if-nez p1, :cond_0

    .line 95
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->today()Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object p1

    const/16 p2, 0x1e

    invoke-static {p2}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->yearOnFuture(I)Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object p2

    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->today()Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setRange(Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;)V

    :cond_0
    return-void
.end method

.method public onWheelScrollStateChanged(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V
    .locals 3

    .line 129
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getId()I

    move-result p1

    .line 130
    sget v0, Lcom/tgs/service/ai/R$id;->wheel_picker_date_year_wheel:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 131
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->monthWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    if-nez p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setEnabled(Z)V

    .line 132
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->dayWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setEnabled(Z)V

    return-void

    .line 135
    :cond_2
    sget v0, Lcom/tgs/service/ai/R$id;->wheel_picker_date_month_wheel:I

    if-ne p1, v0, :cond_5

    .line 136
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->yearWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    if-nez p2, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setEnabled(Z)V

    .line 137
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->dayWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-virtual {p1, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setEnabled(Z)V

    return-void

    .line 140
    :cond_5
    sget v0, Lcom/tgs/service/ai/R$id;->wheel_picker_date_day_wheel:I

    if-ne p1, v0, :cond_8

    .line 141
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->yearWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    if-nez p2, :cond_6

    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v2

    :goto_4
    invoke-virtual {p1, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setEnabled(Z)V

    .line 142
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->monthWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    if-nez p2, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    invoke-virtual {p1, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setEnabled(Z)V

    :cond_8
    return-void
.end method

.method public onWheelSelected(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V
    .locals 2

    .line 101
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getId()I

    move-result p1

    .line 102
    sget v0, Lcom/tgs/service/ai/R$id;->wheel_picker_date_year_wheel:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 103
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->yearWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedYear:Ljava/lang/Integer;

    .line 104
    iget-boolean p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->resetWhenLinkage:Z

    if-eqz p2, :cond_0

    .line 105
    iput-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedMonth:Ljava/lang/Integer;

    .line 106
    iput-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedDay:Ljava/lang/Integer;

    .line 108
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->changeMonth(I)V

    .line 109
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->dateSelectedCallback()V

    return-void

    .line 112
    :cond_1
    sget v0, Lcom/tgs/service/ai/R$id;->wheel_picker_date_month_wheel:I

    if-ne p1, v0, :cond_3

    .line 113
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->monthWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedMonth:Ljava/lang/Integer;

    .line 114
    iget-boolean p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->resetWhenLinkage:Z

    if-eqz p1, :cond_2

    .line 115
    iput-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedDay:Ljava/lang/Integer;

    .line 117
    :cond_2
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedYear:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedMonth:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->changeDay(II)V

    .line 118
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->dateSelectedCallback()V

    return-void

    .line 121
    :cond_3
    sget v0, Lcom/tgs/service/ai/R$id;->wheel_picker_date_day_wheel:I

    if-ne p1, v0, :cond_4

    .line 122
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->dayWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedDay:Ljava/lang/Integer;

    .line 123
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->dateSelectedCallback()V

    :cond_4
    return-void
.end method

.method protected provideLayoutRes()I
    .locals 1

    .line 61
    sget v0, Lcom/tgs/service/ai/R$layout;->tgs_aics_wheel_picker_date:I

    return v0
.end method

.method protected provideWheelViews()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    const/4 v1, 0x0

    .line 66
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->yearWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->monthWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->dayWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setDateFormatter(Lcom/tgs/aics/thirdtool/datapicker/contract/DateFormatter;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->yearWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    new-instance v1, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/thirdtool/datapicker/contract/DateFormatter;)V

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setFormatter(Lcom/tgs/aics/thirdtool/datapicker/contract/WheelFormatter;)V

    .line 223
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->monthWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    new-instance v1, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout$$ExternalSyntheticLambda2;-><init>(Lcom/tgs/aics/thirdtool/datapicker/contract/DateFormatter;)V

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setFormatter(Lcom/tgs/aics/thirdtool/datapicker/contract/WheelFormatter;)V

    .line 224
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->dayWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    new-instance v1, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout$$ExternalSyntheticLambda3;-><init>(Lcom/tgs/aics/thirdtool/datapicker/contract/DateFormatter;)V

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setFormatter(Lcom/tgs/aics/thirdtool/datapicker/contract/WheelFormatter;)V

    return-void
.end method

.method public setDateLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->yearLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->monthLabelView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->dayLabelView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDateMode(I)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->yearWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->yearLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->monthWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->monthLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->dayWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->dayLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, -0x1

    const/16 v1, 0x8

    if-ne p1, v0, :cond_0

    .line 161
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->yearWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {p1, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setVisibility(I)V

    .line 162
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->yearLabelView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->monthWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {p1, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setVisibility(I)V

    .line 164
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->monthLabelView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->dayWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {p1, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setVisibility(I)V

    .line 166
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->dayLabelView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 170
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->yearWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {p1, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setVisibility(I)V

    .line 171
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->yearLabelView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 175
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->dayWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {p1, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setVisibility(I)V

    .line 176
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->dayLabelView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setDefaultValue(Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {p0, v0, v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setRange(Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;)V

    return-void
.end method

.method public setOnDateSelectedListener(Lcom/tgs/aics/thirdtool/datapicker/contract/OnDateSelectedListener;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->onDateSelectedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnDateSelectedListener;

    return-void
.end method

.method public setRange(Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;)V
    .locals 1

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, p1, p2, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setRange(Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;)V

    return-void
.end method

.method public setRange(Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;)V
    .locals 4

    if-nez p1, :cond_0

    .line 192
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->today()Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object p1

    :cond_0
    if-nez p2, :cond_1

    const/16 p2, 0x1e

    .line 195
    invoke-static {p2}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->yearOnFuture(I)Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object p2

    .line 197
    :cond_1
    invoke-virtual {p2}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->toTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->toTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 200
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    .line 201
    iput-object p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    if-eqz p3, :cond_2

    .line 203
    invoke-virtual {p3}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getYear()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedYear:Ljava/lang/Integer;

    .line 204
    invoke-virtual {p3}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getMonth()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedMonth:Ljava/lang/Integer;

    .line 205
    invoke-virtual {p3}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getDay()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedDay:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 207
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedYear:Ljava/lang/Integer;

    .line 208
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedMonth:Ljava/lang/Integer;

    .line 209
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->selectedDay:Ljava/lang/Integer;

    .line 211
    :goto_0
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->changeYear()V

    return-void

    .line 198
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Ensure the start date is less than the end date"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setResetWhenLinkage(Z)V
    .locals 0

    .line 238
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->resetWhenLinkage:Z

    return-void
.end method
