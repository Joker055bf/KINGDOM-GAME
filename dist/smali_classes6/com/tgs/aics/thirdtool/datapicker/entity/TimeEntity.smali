.class public Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;
.super Ljava/lang/Object;
.source "TimeEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private hour:I

.field private minute:I

.field private second:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hourOnFuture(I)Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;
    .locals 2

    .line 51
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 52
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    .line 53
    invoke-static {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->target(Ljava/util/Calendar;)Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    move-result-object p0

    return-object p0
.end method

.method public static minuteOnFuture(I)Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;
    .locals 2

    .line 45
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    .line 46
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    .line 47
    invoke-static {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->target(Ljava/util/Calendar;)Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    move-result-object p0

    return-object p0
.end method

.method public static now()Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;
    .locals 1

    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->target(Ljava/util/Calendar;)Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    move-result-object v0

    return-object v0
.end method

.method public static target(III)Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;
    .locals 1

    .line 20
    new-instance v0, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;-><init>()V

    .line 21
    invoke-virtual {v0, p0}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->setHour(I)V

    .line 22
    invoke-virtual {v0, p1}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->setMinute(I)V

    .line 23
    invoke-virtual {v0, p2}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->setSecond(I)V

    return-object v0
.end method

.method public static target(Ljava/util/Calendar;)Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;
    .locals 3

    const/16 v0, 0xb

    .line 28
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    .line 29
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xd

    .line 30
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    .line 31
    invoke-static {v0, v1, p0}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->target(III)Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    move-result-object p0

    return-object p0
.end method

.method public static target(Ljava/util/Date;)Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;
    .locals 1

    .line 35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 37
    invoke-static {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->target(Ljava/util/Calendar;)Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getHour()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->hour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->minute:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->second:I

    return v0
.end method

.method public setHour(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->hour:I

    return-void
.end method

.method public setMinute(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->minute:I

    return-void
.end method

.method public setSecond(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->second:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->minute:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->second:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTimeInMillis()J
    .locals 3

    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 82
    iget v2, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 83
    iget v2, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 84
    iget v2, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->second:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    const/4 v2, 0x0

    .line 85
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 86
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method
