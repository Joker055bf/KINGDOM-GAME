.class public Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;
.super Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;
.source "DatimeWheelLayout.java"


# instance fields
.field private dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

.field private endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

.field private onDatimeSelectedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatimeSelectedListener;

.field private startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

.field private timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;)Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;)Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;)Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatimeSelectedListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->onDatimeSelectedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatimeSelectedListener;

    return-object p0
.end method


# virtual methods
.method public final getDateWheelLayout()Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    return-object v0
.end method

.method public final getDayLabelView()Landroid/widget/TextView;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->getDayLabelView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public final getDayWheelView()Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->getDayWheelView()Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    move-result-object v0

    return-object v0
.end method

.method public final getEndValue()Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    return-object v0
.end method

.method public final getHourLabelView()Landroid/widget/TextView;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->getHourLabelView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public final getHourWheelView()Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->getHourWheelView()Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    move-result-object v0

    return-object v0
.end method

.method public final getMeridiemWheelView()Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->getMeridiemWheelView()Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;

    move-result-object v0

    return-object v0
.end method

.method public final getMinuteLabelView()Landroid/widget/TextView;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->getMinuteLabelView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public final getMinuteWheelView()Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->getMinuteWheelView()Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    move-result-object v0

    return-object v0
.end method

.method public final getMonthLabelView()Landroid/widget/TextView;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->getMonthLabelView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public final getMonthWheelView()Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->getMonthWheelView()Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    move-result-object v0

    return-object v0
.end method

.method public final getSecondLabelView()Landroid/widget/TextView;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->getSecondLabelView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public final getSecondWheelView()Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->getSecondWheelView()Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedDay()I
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->getSelectedDay()I

    move-result v0

    return v0
.end method

.method public final getSelectedHour()I
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->getSelectedHour()I

    move-result v0

    return v0
.end method

.method public final getSelectedMinute()I
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->getSelectedMinute()I

    move-result v0

    return v0
.end method

.method public final getSelectedMonth()I
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->getSelectedMonth()I

    move-result v0

    return v0
.end method

.method public final getSelectedSecond()I
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->getSelectedSecond()I

    move-result v0

    return v0
.end method

.method public final getSelectedYear()I
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->getSelectedYear()I

    move-result v0

    return v0
.end method

.method public final getStartValue()Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    return-object v0
.end method

.method public final getTimeWheelLayout()Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    return-object v0
.end method

.method public final getYearLabelView()Landroid/widget/TextView;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->getYearLabelView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public final getYearWheelView()Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->getYearWheelView()Lcom/tgs/aics/thirdtool/datapicker/widget/NumberWheelView;

    move-result-object v0

    return-object v0
.end method

.method protected onAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 75
    sget-object v0, Lcom/tgs/service/ai/R$styleable;->DatimeWheelLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 76
    sget p2, Lcom/tgs/service/ai/R$styleable;->DatimeWheelLayout_wheel_dateMode:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setDateMode(I)V

    .line 77
    sget p2, Lcom/tgs/service/ai/R$styleable;->DatimeWheelLayout_wheel_timeMode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setTimeMode(I)V

    .line 78
    sget p2, Lcom/tgs/service/ai/R$styleable;->DatimeWheelLayout_wheel_yearLabel:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 79
    sget v0, Lcom/tgs/service/ai/R$styleable;->DatimeWheelLayout_wheel_monthLabel:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    sget v1, Lcom/tgs/service/ai/R$styleable;->DatimeWheelLayout_wheel_dayLabel:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {p0, p2, v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setDateLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 82
    sget p2, Lcom/tgs/service/ai/R$styleable;->DatimeWheelLayout_wheel_hourLabel:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 83
    sget v0, Lcom/tgs/service/ai/R$styleable;->DatimeWheelLayout_wheel_minuteLabel:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    sget v1, Lcom/tgs/service/ai/R$styleable;->DatimeWheelLayout_wheel_secondLabel:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-virtual {p0, p2, v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setTimeLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 87
    new-instance p1, Lcom/tgs/aics/thirdtool/datapicker/impl/SimpleDateFormatter;

    invoke-direct {p1}, Lcom/tgs/aics/thirdtool/datapicker/impl/SimpleDateFormatter;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setDateFormatter(Lcom/tgs/aics/thirdtool/datapicker/contract/DateFormatter;)V

    .line 88
    new-instance p1, Lcom/tgs/aics/thirdtool/datapicker/impl/SimpleTimeFormatter;

    iget-object p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-direct {p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/impl/SimpleTimeFormatter;-><init>(Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;)V

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setTimeFormatter(Lcom/tgs/aics/thirdtool/datapicker/contract/TimeFormatter;)V

    return-void
.end method

.method protected onInit(Landroid/content/Context;)V
    .locals 0

    .line 69
    sget p1, Lcom/tgs/service/ai/R$id;->wheel_picker_date_wheel:I

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    .line 70
    sget p1, Lcom/tgs/service/ai/R$id;->wheel_picker_time_wheel:I

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 93
    invoke-super {p0, p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/BaseWheelLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 94
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    if-nez p1, :cond_0

    .line 95
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->now()Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    move-result-object p1

    const/16 p2, 0x1e

    invoke-static {p2}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->yearOnFuture(I)Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    move-result-object p2

    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->now()Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setRange(Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;)V

    :cond_0
    return-void
.end method

.method public onWheelLoopFinished(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->onWheelLoopFinished(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;)V

    .line 132
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->onWheelLoopFinished(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;)V

    return-void
.end method

.method public onWheelScrollStateChanged(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    invoke-virtual {v0, p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->onWheelScrollStateChanged(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V

    .line 126
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-virtual {v0, p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->onWheelScrollStateChanged(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V

    return-void
.end method

.method public onWheelScrolled(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    invoke-virtual {v0, p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->onWheelScrolled(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V

    .line 120
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-virtual {v0, p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->onWheelScrolled(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V

    return-void
.end method

.method public onWheelSelected(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    invoke-virtual {v0, p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->onWheelSelected(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V

    .line 102
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-virtual {v0, p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->onWheelSelected(Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;I)V

    .line 103
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->onDatimeSelectedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatimeSelectedListener;

    if-nez p1, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    new-instance p2, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout$1;

    invoke-direct {p2, p0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout$1;-><init>(Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;)V

    invoke-virtual {p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected provideLayoutRes()I
    .locals 1

    .line 56
    sget v0, Lcom/tgs/service/ai/R$layout;->tgs_aics_wheel_picker_datime:I

    return v0
.end method

.method protected provideWheelViews()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tgs/aics/thirdtool/datapicker/widget/WheelView;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->provideWheelViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->provideWheelViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public setDateFormatter(Lcom/tgs/aics/thirdtool/datapicker/contract/DateFormatter;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setDateFormatter(Lcom/tgs/aics/thirdtool/datapicker/contract/DateFormatter;)V

    return-void
.end method

.method public setDateLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setDateLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDateMode(I)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setDateMode(I)V

    return-void
.end method

.method public setDefaultValue(Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;)V
    .locals 2

    if-nez p1, :cond_0

    .line 171
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->now()Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    move-result-object p1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->getDate()Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setDefaultValue(Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;)V

    .line 174
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->getTime()Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->setDefaultValue(Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;)V

    return-void
.end method

.method public setOnDatimeSelectedListener(Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatimeSelectedListener;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->onDatimeSelectedListener:Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatimeSelectedListener;

    return-void
.end method

.method public setRange(Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, p1, p2, v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setRange(Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;)V

    return-void
.end method

.method public setRange(Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;)V
    .locals 4

    if-nez p1, :cond_0

    .line 155
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->now()Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    move-result-object p1

    :cond_0
    if-nez p2, :cond_1

    const/16 p2, 0xa

    .line 158
    invoke-static {p2}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->yearOnFuture(I)Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    move-result-object p2

    :cond_1
    if-nez p3, :cond_2

    move-object p3, p1

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->getDate()Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->getDate()Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object v2

    invoke-virtual {p3}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->getDate()Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setRange(Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;)V

    .line 164
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-virtual {p3}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->getTime()Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p3}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->setRange(Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;)V

    .line 165
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->startValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    .line 166
    iput-object p2, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->endValue:Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    return-void
.end method

.method public setResetWhenLinkage(ZZ)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->dateWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setResetWhenLinkage(Z)V

    .line 199
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-virtual {p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->setResetWhenLinkage(Z)V

    return-void
.end method

.method public setTimeFormatter(Lcom/tgs/aics/thirdtool/datapicker/contract/TimeFormatter;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->setTimeFormatter(Lcom/tgs/aics/thirdtool/datapicker/contract/TimeFormatter;)V

    return-void
.end method

.method public setTimeLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->setTimeLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTimeMode(I)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->timeWheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->setTimeMode(I)V

    return-void
.end method
