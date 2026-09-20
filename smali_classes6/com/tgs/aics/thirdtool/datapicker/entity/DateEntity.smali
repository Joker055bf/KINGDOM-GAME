.class public Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;
.super Ljava/lang/Object;
.source "DateEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private day:I

.field private month:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dayOnFuture(I)Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;
    .locals 2

    .line 47
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 48
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    .line 49
    invoke-static {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->target(Ljava/util/Calendar;)Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object p0

    return-object p0
.end method

.method public static monthOnFuture(I)Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;
    .locals 2

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    .line 54
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    .line 55
    invoke-static {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->target(Ljava/util/Calendar;)Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object p0

    return-object p0
.end method

.method public static target(III)Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;
    .locals 1

    .line 21
    new-instance v0, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;-><init>()V

    .line 22
    invoke-virtual {v0, p0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->setYear(I)V

    .line 23
    invoke-virtual {v0, p1}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->setMonth(I)V

    .line 24
    invoke-virtual {v0, p2}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->setDay(I)V

    return-object v0
.end method

.method public static target(Ljava/util/Calendar;)Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;
    .locals 3

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 31
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    const/4 v0, 0x5

    .line 32
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    .line 33
    invoke-static {v1, v2, p0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->target(III)Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object p0

    return-object p0
.end method

.method public static target(Ljava/util/Date;)Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;
    .locals 1

    .line 37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 38
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 39
    invoke-static {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->target(Ljava/util/Calendar;)Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object p0

    return-object p0
.end method

.method public static today()Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;
    .locals 1

    .line 43
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->target(Ljava/util/Calendar;)Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object v0

    return-object v0
.end method

.method public static yearOnFuture(I)Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;
    .locals 2

    .line 59
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    .line 61
    invoke-static {v0}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->target(Ljava/util/Calendar;)Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 108
    :cond_1
    check-cast p1, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    .line 109
    iget v2, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->year:I

    iget v3, p1, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->year:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->month:I

    iget v3, p1, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->month:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->day:I

    iget p1, p1, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->day:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDay()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->day:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->month:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 116
    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->year:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->month:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->day:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setDay(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->day:I

    return-void
.end method

.method public setMonth(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->month:I

    return-void
.end method

.method public setYear(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->year:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->month:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTimeInMillis()J
    .locals 3

    .line 89
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 90
    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->year:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 91
    iget v1, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->month:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    .line 92
    iget v2, p0, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->day:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 94
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 95
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 96
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 97
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method
