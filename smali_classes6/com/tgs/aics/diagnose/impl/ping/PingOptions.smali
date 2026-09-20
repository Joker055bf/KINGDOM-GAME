.class Lcom/tgs/aics/diagnose/impl/ping/PingOptions;
.super Ljava/lang/Object;
.source "PingOptions.java"


# instance fields
.field private timeToLive:I

.field private timeoutMillis:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    .line 8
    iput v0, p0, Lcom/tgs/aics/diagnose/impl/ping/PingOptions;->timeToLive:I

    const/16 v0, 0x3e8

    .line 9
    iput v0, p0, Lcom/tgs/aics/diagnose/impl/ping/PingOptions;->timeoutMillis:I

    return-void
.end method


# virtual methods
.method public getTimeToLive()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/ping/PingOptions;->timeToLive:I

    return v0
.end method

.method public getTimeoutMillis()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/ping/PingOptions;->timeoutMillis:I

    return v0
.end method

.method public setTimeToLive(I)V
    .locals 1

    const/4 v0, 0x1

    .line 25
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/diagnose/impl/ping/PingOptions;->timeToLive:I

    return-void
.end method

.method public setTimeoutMillis(I)V
    .locals 1

    const/16 v0, 0x3e8

    .line 17
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/diagnose/impl/ping/PingOptions;->timeoutMillis:I

    return-void
.end method
