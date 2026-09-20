.class public Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;
.super Ljava/lang/Object;
.source "DatimeEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private date:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

.field private time:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dayOnFuture(I)Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;
    .locals 1

    .line 63
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->now()Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    move-result-object v0

    .line 64
    invoke-static {p0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->dayOnFuture(I)Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->setDate(Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;)V

    return-object v0
.end method

.method public static hourOnFuture(I)Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;
    .locals 1

    .line 57
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->now()Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    move-result-object v0

    .line 58
    invoke-static {p0}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->hourOnFuture(I)Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->setTime(Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;)V

    return-object v0
.end method

.method public static minuteOnFuture(I)Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;
    .locals 1

    .line 51
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->now()Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    move-result-object v0

    .line 52
    invoke-static {p0}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->minuteOnFuture(I)Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->setTime(Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;)V

    return-object v0
.end method

.method public static monthOnFuture(I)Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;
    .locals 1

    .line 69
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->now()Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    move-result-object v0

    .line 70
    invoke-static {p0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->monthOnFuture(I)Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->setDate(Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;)V

    return-object v0
.end method

.method public static now()Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;
    .locals 2

    .line 44
    new-instance v0, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;-><init>()V

    .line 45
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->today()Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->setDate(Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;)V

    .line 46
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->now()Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->setTime(Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;)V

    return-object v0
.end method

.method public static target(IIIIII)Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;
    .locals 0

    .line 34
    invoke-static {p0, p1, p2}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->target(III)Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object p0

    .line 35
    invoke-static {p3, p4, p5}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->target(III)Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    move-result-object p1

    .line 37
    new-instance p2, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    invoke-direct {p2}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;-><init>()V

    .line 38
    invoke-virtual {p2, p0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->setDate(Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;)V

    .line 39
    invoke-virtual {p2, p1}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->setTime(Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;)V

    return-object p2
.end method

.method public static yearOnFuture(I)Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;
    .locals 1

    .line 75
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->now()Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    move-result-object v0

    .line 76
    invoke-static {p0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->yearOnFuture(I)Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->setDate(Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;)V

    return-object v0
.end method


# virtual methods
.method public getDate()Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->date:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    return-object v0
.end method

.method public getTime()Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->time:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    return-object v0
.end method

.method public setDate(Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->date:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    return-void
.end method

.method public setTime(Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->time:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->date:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->time:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTimeInMillis()J
    .locals 3

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->date:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getYear()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 99
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->date:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getMonth()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 100
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->date:Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->getDay()I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 101
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->time:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->getHour()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 102
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->time:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->getMinute()I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 103
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->time:Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/datapicker/entity/TimeEntity;->getSecond()I

    move-result v1

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    const/4 v2, 0x0

    .line 104
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 105
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method
