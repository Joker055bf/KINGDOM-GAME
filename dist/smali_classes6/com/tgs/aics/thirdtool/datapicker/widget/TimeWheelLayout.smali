.class public Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;
.super Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;
.source "TimeWheelLayout.java"


# instance fields
.field private defaultValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

.field private endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

.field private hourLabelView:Landroid/widget/TextView;

.field private hourStep:I

.field private hourWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

.field private isAnteMeridiem:Z

.field private meridiemWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

.field private minuteLabelView:Landroid/widget/TextView;

.field private minuteStep:I

.field private minuteWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

.field private onTimeMeridiemSelectedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnTimeMeridiemSelectedListener;

.field private onTimeSelectedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnTimeSelectedListener;

.field private resetWhenLinkage:Z

.field private secondLabelView:Landroid/widget/TextView;

.field private secondStep:I

.field private secondWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

.field private selectedHour:Ljava/lang/Integer;

.field private selectedMinute:Ljava/lang/Integer;

.field private selectedSecond:Ljava/lang/Integer;

.field private startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

.field private timeMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 46
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->hourStep:I

    .line 47
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->minuteStep:I

    .line 48
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondStep:I

    .line 51
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->resetWhenLinkage:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 46
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->hourStep:I

    .line 47
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->minuteStep:I

    .line 48
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondStep:I

    .line 51
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->resetWhenLinkage:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 46
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->hourStep:I

    .line 47
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->minuteStep:I

    .line 48
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondStep:I

    .line 51
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->resetWhenLinkage:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 46
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->hourStep:I

    .line 47
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->minuteStep:I

    .line 48
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondStep:I

    .line 51
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->resetWhenLinkage:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;)Ljava/lang/Integer;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedHour:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;)Ljava/lang/Integer;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedMinute:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;)Ljava/lang/Integer;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedSecond:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;)Lcom/tgs/aics/thirdtool/datapicker/contract/OnTimeSelectedListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->onTimeSelectedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnTimeSelectedListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;)Lcom/tgs/aics/thirdtool/datapicker/contract/OnTimeMeridiemSelectedListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->onTimeMeridiemSelectedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnTimeMeridiemSelectedListener;

    return-object p0
.end method

.method private changeAnteMeridiem()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->meridiemWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    iget-boolean v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->isAnteMeridiem:Z

    if-eqz v1, :cond_0

    const-string v1, "AM"

    goto :goto_0

    :cond_0
    const-string v1, "PM"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setDefaultValue(Ljava/lang/Object;)V

    return-void
.end method

.method private changeHour()V
    .locals 4

    .line 374
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->getHour()I

    move-result v0

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->getHour()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 375
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->getHour()I

    move-result v1

    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    invoke-virtual {v2}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->getHour()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 376
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->isHour12Mode()Z

    move-result v2

    .line 377
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->isHour12Mode()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    goto :goto_0

    :cond_0
    const/16 v3, 0x17

    .line 378
    :goto_0
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 379
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 380
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedHour:Ljava/lang/Integer;

    if-nez v2, :cond_1

    .line 381
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedHour:Ljava/lang/Integer;

    goto :goto_1

    .line 383
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedHour:Ljava/lang/Integer;

    .line 384
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedHour:Ljava/lang/Integer;

    .line 386
    :goto_1
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->hourWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    iget v3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->hourStep:I

    invoke-virtual {v2, v0, v1, v3}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setRange(III)V

    .line 387
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->hourWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedHour:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setDefaultValue(Ljava/lang/Object;)V

    .line 388
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedHour:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->changeMinute(I)V

    return-void
.end method

.method private changeMinute(I)V
    .locals 3

    .line 394
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->getHour()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->getHour()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 395
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->getMinute()I

    move-result p1

    .line 396
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->getMinute()I

    move-result v0

    goto :goto_1

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->getHour()I

    move-result v0

    const/16 v1, 0x3b

    if-ne p1, v0, :cond_1

    .line 400
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->getMinute()I

    move-result p1

    move v0, v1

    goto :goto_1

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->getHour()I

    move-result v0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 406
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->getMinute()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    move p1, v2

    .line 411
    :goto_1
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedMinute:Ljava/lang/Integer;

    if-nez v1, :cond_3

    .line 412
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedMinute:Ljava/lang/Integer;

    goto :goto_2

    .line 414
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedMinute:Ljava/lang/Integer;

    .line 415
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedMinute:Ljava/lang/Integer;

    .line 417
    :goto_2
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->minuteWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    iget v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->minuteStep:I

    invoke-virtual {v1, p1, v0, v2}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setRange(III)V

    .line 418
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->minuteWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedMinute:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setDefaultValue(Ljava/lang/Object;)V

    .line 419
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->changeSecond()V

    return-void
.end method

.method private changeSecond()V
    .locals 4

    .line 423
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedSecond:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 424
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedSecond:Ljava/lang/Integer;

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    const/16 v2, 0x3b

    iget v3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondStep:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setRange(III)V

    .line 427
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedSecond:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setDefaultValue(Ljava/lang/Object;)V

    return-void
.end method

.method private fixHour(I)I
    .locals 1

    .line 342
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->isHour12Mode()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/16 p1, 0x18

    :cond_0
    const/16 v0, 0xc

    if-le p1, v0, :cond_1

    add-int/lit8 p1, p1, -0xc

    :cond_1
    return p1
.end method

.method static synthetic lambda$setTimeFormatter$0(Lcom/tgs/aics/thirdtool/datapicker/contract/TimeFormatter;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 259
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/contract/TimeFormatter;->formatHour(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setTimeFormatter$1(Lcom/tgs/aics/thirdtool/datapicker/contract/TimeFormatter;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 260
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/contract/TimeFormatter;->formatMinute(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setTimeFormatter$2(Lcom/tgs/aics/thirdtool/datapicker/contract/TimeFormatter;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 261
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/contract/TimeFormatter;->formatSecond(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private timeSelectedCallback()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->onTimeSelectedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnTimeSelectedListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    new-instance v1, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout$1;

    invoke-direct {v1, p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout$1;-><init>(Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;)V

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->post(Ljava/lang/Runnable;)Z

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->onTimeMeridiemSelectedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnTimeMeridiemSelectedListener;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    new-instance v1, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout$2;

    invoke-direct {v1, p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout$2;-><init>(Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;)V

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final getEndValue()Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    return-object v0
.end method

.method public final getHourLabelView()Landroid/widget/TextView;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->hourLabelView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getHourWheelView()Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->hourWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    return-object v0
.end method

.method public final getMeridiemLabelView()Landroid/widget/TextView;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 333
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use getMeridiemWheelView instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getMeridiemWheelView()Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->meridiemWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    return-object v0
.end method

.method public final getMinuteLabelView()Landroid/widget/TextView;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->minuteLabelView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getMinuteWheelView()Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->minuteWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    return-object v0
.end method

.method public final getSecondLabelView()Landroid/widget/TextView;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondLabelView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getSecondWheelView()Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    return-object v0
.end method

.method public final getSelectedHour()I
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->hourWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->getCurrentItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 338
    invoke-direct {p0, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->fixHour(I)I

    move-result v0

    return v0
.end method

.method public final getSelectedMinute()I
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->minuteWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->getCurrentItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getSelectedSecond()I
    .locals 2

    .line 358
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->timeMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->getCurrentItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getStartValue()Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    return-object v0
.end method

.method public final isAnteMeridiem()Z
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->meridiemWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getCurrentItem()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 368
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->isAnteMeridiem:Z

    return v0

    :cond_0
    const-string v1, "AM"

    .line 370
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isDataAlready()Z
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHour12Mode()Z
    .locals 2

    .line 213
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->timeMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 92
    sget-object v0, Lcom/tgs/service/ai/R$styleable;->TimeWheelLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 93
    sget p2, Lcom/tgs/service/ai/R$styleable;->TimeWheelLayout_wheel_timeMode:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->setTimeMode(I)V

    .line 94
    sget p2, Lcom/tgs/service/ai/R$styleable;->TimeWheelLayout_wheel_hourLabel:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 95
    sget v0, Lcom/tgs/service/ai/R$styleable;->TimeWheelLayout_wheel_minuteLabel:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    sget v1, Lcom/tgs/service/ai/R$styleable;->TimeWheelLayout_wheel_secondLabel:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    invoke-virtual {p0, p2, v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->setTimeLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 99
    new-instance p1, Lcom/tgs/aics/thirdtool/datapicker/impl/SimpleTimeFormatter;

    invoke-direct {p1, p0}, Lcom/tgs/aics/thirdtool/datapicker/impl/SimpleTimeFormatter;-><init>(Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;)V

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->setTimeFormatter(Lcom/tgs/aics/thirdtool/datapicker/contract/TimeFormatter;)V

    return-void
.end method

.method protected onInit(Landroid/content/Context;)V
    .locals 0

    .line 81
    sget p1, Lcom/tgs/service/ai/R$id;->wheel_picker_time_hour_wheel:I

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->hourWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    .line 82
    sget p1, Lcom/tgs/service/ai/R$id;->wheel_picker_time_minute_wheel:I

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->minuteWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    .line 83
    sget p1, Lcom/tgs/service/ai/R$id;->wheel_picker_time_second_wheel:I

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    .line 84
    sget p1, Lcom/tgs/service/ai/R$id;->wheel_picker_time_hour_label:I

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->hourLabelView:Landroid/widget/TextView;

    .line 85
    sget p1, Lcom/tgs/service/ai/R$id;->wheel_picker_time_minute_label:I

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->minuteLabelView:Landroid/widget/TextView;

    .line 86
    sget p1, Lcom/tgs/service/ai/R$id;->wheel_picker_time_second_label:I

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondLabelView:Landroid/widget/TextView;

    .line 87
    sget p1, Lcom/tgs/service/ai/R$id;->wheel_picker_time_meridiem_wheel:I

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->meridiemWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 104
    invoke-super {p0, p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 105
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 106
    invoke-static {p1, p1, p1}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->target(III)Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    move-result-object p1

    const/16 p2, 0x17

    const/16 v0, 0x3b

    .line 107
    invoke-static {p2, v0, v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->target(III)Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    move-result-object p2

    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->now()Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    move-result-object v0

    .line 106
    invoke-virtual {p0, p1, p2, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->setRange(Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;)V

    :cond_0
    return-void
.end method

.method public onWheelScrollStateChanged(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V
    .locals 3

    .line 146
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getId()I

    move-result p1

    .line 147
    sget v0, Lcom/tgs/service/ai/R$id;->wheel_picker_time_hour_wheel:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 148
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->minuteWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    if-nez p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setEnabled(Z)V

    .line 149
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setEnabled(Z)V

    return-void

    .line 152
    :cond_2
    sget v0, Lcom/tgs/service/ai/R$id;->wheel_picker_time_minute_wheel:I

    if-ne p1, v0, :cond_5

    .line 153
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->hourWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    if-nez p2, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setEnabled(Z)V

    .line 154
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-virtual {p1, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setEnabled(Z)V

    return-void

    .line 157
    :cond_5
    sget v0, Lcom/tgs/service/ai/R$id;->wheel_picker_time_second_wheel:I

    if-ne p1, v0, :cond_8

    .line 158
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->hourWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    if-nez p2, :cond_6

    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v2

    :goto_4
    invoke-virtual {p1, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setEnabled(Z)V

    .line 159
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->minuteWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

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

    .line 113
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getId()I

    move-result p1

    .line 114
    sget v0, Lcom/tgs/service/ai/R$id;->wheel_picker_time_hour_wheel:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 115
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->hourWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedHour:Ljava/lang/Integer;

    .line 116
    iget-boolean p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->resetWhenLinkage:Z

    if-eqz p2, :cond_0

    .line 117
    iput-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedMinute:Ljava/lang/Integer;

    .line 118
    iput-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedSecond:Ljava/lang/Integer;

    .line 120
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->changeMinute(I)V

    .line 121
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->timeSelectedCallback()V

    return-void

    .line 124
    :cond_1
    sget v0, Lcom/tgs/service/ai/R$id;->wheel_picker_time_minute_wheel:I

    if-ne p1, v0, :cond_3

    .line 125
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->minuteWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedMinute:Ljava/lang/Integer;

    .line 126
    iget-boolean p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->resetWhenLinkage:Z

    if-eqz p1, :cond_2

    .line 127
    iput-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedSecond:Ljava/lang/Integer;

    .line 129
    :cond_2
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->changeSecond()V

    .line 130
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->timeSelectedCallback()V

    return-void

    .line 133
    :cond_3
    sget v0, Lcom/tgs/service/ai/R$id;->wheel_picker_time_second_wheel:I

    if-ne p1, v0, :cond_4

    .line 134
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedSecond:Ljava/lang/Integer;

    .line 135
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->timeSelectedCallback()V

    return-void

    .line 138
    :cond_4
    sget v0, Lcom/tgs/service/ai/R$id;->wheel_picker_time_meridiem_wheel:I

    if-ne p1, v0, :cond_5

    .line 139
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->meridiemWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    invoke-virtual {p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "AM"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->isAnteMeridiem:Z

    .line 140
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->timeSelectedCallback()V

    :cond_5
    return-void
.end method

.method protected provideLayoutRes()I
    .locals 1

    .line 71
    sget v0, Lcom/tgs/service/ai/R$layout;->tgs_aics_wheel_picker_time:I

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

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    const/4 v1, 0x0

    .line 76
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->hourWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->minuteWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->meridiemWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultValue(Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;)V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    invoke-virtual {p0, v0, v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->setRange(Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;)V

    return-void
.end method

.method public setOnTimeMeridiemSelectedListener(Lcom/tgs/aics/thirdtool/datapicker/contract/OnTimeMeridiemSelectedListener;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->onTimeMeridiemSelectedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnTimeMeridiemSelectedListener;

    return-void
.end method

.method public setOnTimeSelectedListener(Lcom/tgs/aics/thirdtool/datapicker/contract/OnTimeSelectedListener;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->onTimeSelectedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnTimeSelectedListener;

    return-void
.end method

.method public setRange(Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;)V
    .locals 1

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0, p1, p2, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->setRange(Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;)V

    return-void
.end method

.method public setRange(Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->isHour12Mode()Z

    move-result p1

    invoke-static {p1, v0, v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->target(III)Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    move-result-object p1

    :cond_0
    const/16 v1, 0xc

    if-nez p2, :cond_2

    .line 232
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->isHour12Mode()Z

    move-result p2

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    const/16 p2, 0x17

    :goto_0
    const/16 v2, 0x3b

    invoke-static {p2, v2, v2}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->target(III)Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    move-result-object p2

    .line 234
    :cond_2
    invoke-virtual {p2}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->toTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->toTimeInMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    .line 237
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    .line 238
    iput-object p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    if-nez p3, :cond_3

    move-object p3, p1

    .line 242
    :cond_3
    iput-object p3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->defaultValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    .line 243
    invoke-virtual {p3}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->getHour()I

    move-result p1

    if-lt p1, v1, :cond_4

    invoke-virtual {p3}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->getHour()I

    move-result p1

    const/16 p2, 0x18

    if-ne p1, p2, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    iput-boolean v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->isAnteMeridiem:Z

    .line 244
    invoke-virtual {p3}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->getHour()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->fixHour(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedHour:Ljava/lang/Integer;

    .line 245
    invoke-virtual {p3}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->getMinute()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedMinute:Ljava/lang/Integer;

    .line 246
    invoke-virtual {p3}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->getSecond()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->selectedSecond:Ljava/lang/Integer;

    .line 247
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->changeHour()V

    .line 248
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->changeAnteMeridiem()V

    return-void

    .line 235
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Ensure the start time is less than the time date"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setResetWhenLinkage(Z)V
    .locals 0

    .line 279
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->resetWhenLinkage:Z

    return-void
.end method

.method public setTimeFormatter(Lcom/tgs/aics/thirdtool/datapicker/contract/TimeFormatter;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->hourWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    new-instance v1, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/thirdtool/datapicker/contract/TimeFormatter;)V

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setFormatter(Lcom/tgs/aics/thirdtool/datapicker/contract/WheelFormatter;)V

    .line 260
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->minuteWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    new-instance v1, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/thirdtool/datapicker/contract/TimeFormatter;)V

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setFormatter(Lcom/tgs/aics/thirdtool/datapicker/contract/WheelFormatter;)V

    .line 261
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    new-instance v1, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout$$ExternalSyntheticLambda2;-><init>(Lcom/tgs/aics/thirdtool/datapicker/contract/TimeFormatter;)V

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setFormatter(Lcom/tgs/aics/thirdtool/datapicker/contract/WheelFormatter;)V

    return-void
.end method

.method public setTimeLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->hourLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->minuteLabelView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondLabelView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTimeMode(I)V
    .locals 3

    .line 183
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->timeMode:I

    .line 184
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->hourWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->hourLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->minuteWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->minuteLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->meridiemWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setVisibility(I)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->hourWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {v0, v2}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->hourLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->minuteWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {v0, v2}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->minuteLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {v0, v2}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->timeMode:I

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_2

    .line 203
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    invoke-virtual {p1, v2}, Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;->setVisibility(I)V

    .line 204
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondLabelView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    :cond_2
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->isHour12Mode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 207
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->meridiemWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    invoke-virtual {p1, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setVisibility(I)V

    .line 208
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->meridiemWheelView:Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    const-string v0, "AM"

    const-string v1, "PM"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;->setData(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public setTimeStep(III)V
    .locals 0

    .line 283
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->hourStep:I

    .line 284
    iput p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->minuteStep:I

    .line 285
    iput p3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->secondStep:I

    .line 286
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->isDataAlready()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 287
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    iget-object p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    iget-object p3, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->defaultValue:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->setRange(Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;)V

    :cond_0
    return-void
.end method
