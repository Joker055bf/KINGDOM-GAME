.class public Lcom/tgs/aics/thirdtool/datapicker/impl/SimpleTimeFormatter;
.super Ljava/lang/Object;
.source "SimpleTimeFormatter.java"

# interfaces
.implements Lcom/tgs/aics/thirdtool/datapicker/contract/TimeFormatter;


# instance fields
.field private final wheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;


# direct methods
.method public constructor <init>(Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/impl/SimpleTimeFormatter;->wheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    return-void
.end method


# virtual methods
.method public formatHour(I)Ljava/lang/String;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/impl/SimpleTimeFormatter;->wheelLayout:Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/widget/TimeWheelLayout;->isHour12Mode()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/16 p1, 0x18

    :cond_0
    const/16 v0, 0xc

    if-le p1, v0, :cond_1

    add-int/lit8 p1, p1, -0xc

    :cond_1
    const/16 v0, 0xa

    if-ge p1, v0, :cond_2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatMinute(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatSecond(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
