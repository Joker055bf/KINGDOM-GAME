.class public Lcom/ypx/imagepicker/utils/PDateUtil;
.super Ljava/lang/Object;
.source "PDateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatTime(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;
    .locals 14

    const/16 v0, 0x3e8

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 87
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 88
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    mul-long/2addr v7, v9

    sub-long/2addr v5, v7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 89
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v10, v10

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v10, v10

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 90
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v11, v11

    mul-long/2addr v9, v11

    sub-long/2addr v7, v9

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v11, v11

    mul-long/2addr v9, v11

    sub-long/2addr v7, v9

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v11, v11

    mul-long/2addr v9, v11

    sub-long/2addr v7, v9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 91
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v12, p1

    mul-long/2addr v10, v12

    sub-long/2addr v8, v10

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    mul-long/2addr v10, v2

    sub-long/2addr v8, v10

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v10, p1

    mul-long/2addr v2, v10

    sub-long/2addr v8, v2

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v10, p1

    mul-long/2addr v1, v10

    sub-long/2addr v8, v1

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 95
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/ypx/imagepicker/R$string;->picker_str_day:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 98
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/ypx/imagepicker/R$string;->picker_str_hour:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 101
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/ypx/imagepicker/R$string;->picker_str_minute:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 104
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/ypx/imagepicker/R$string;->picker_str_second:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    cmp-long v0, v8, v2

    if-lez v0, :cond_4

    .line 107
    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/ypx/imagepicker/R$string;->picker_str_milli:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStrTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 22
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 25
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 26
    invoke-static {v0}, Lcom/ypx/imagepicker/utils/PDateUtil;->isToday(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 27
    sget p1, Lcom/ypx/imagepicker/R$string;->picker_str_today:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 29
    :cond_2
    invoke-static {v0}, Lcom/ypx/imagepicker/utils/PDateUtil;->isThisWeek(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 30
    sget p1, Lcom/ypx/imagepicker/R$string;->picker_str_this_week:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 32
    :cond_3
    invoke-static {v0}, Lcom/ypx/imagepicker/utils/PDateUtil;->isThisMonth(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 33
    sget p1, Lcom/ypx/imagepicker/R$string;->picker_str_this_months:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 35
    :cond_4
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget p2, Lcom/ypx/imagepicker/R$string;->picker_str_time_format:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoDuration(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-string p0, "00:01"

    return-object p0

    .line 72
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 73
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "mm:ss"

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isThisMonth(Ljava/util/Date;)Z
    .locals 1

    const-string v0, "yyyy-MM"

    .line 54
    invoke-static {p0, v0}, Lcom/ypx/imagepicker/utils/PDateUtil;->isThisTime(Ljava/util/Date;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isThisTime(Ljava/util/Date;Ljava/lang/String;)Z
    .locals 1

    .line 58
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 60
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isThisWeek(Ljava/util/Date;)Z
    .locals 3

    .line 40
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x3

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 42
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne p0, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isToday(Ljava/util/Date;)Z
    .locals 1

    const-string v0, "yyyy-MM-dd"

    .line 49
    invoke-static {p0, v0}, Lcom/ypx/imagepicker/utils/PDateUtil;->isThisTime(Ljava/util/Date;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
