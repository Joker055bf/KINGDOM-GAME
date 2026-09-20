.class public abstract Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$SpeedtestHandler;
.super Ljava/lang/Object;
.source "Speedtest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpeedtestHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCriticalFailure(Ljava/lang/String;)V
.end method

.method public abstract onDownloadUpdate(DD)V
.end method

.method public abstract onEnd()V
.end method

.method public abstract onIPInfoUpdate(Ljava/lang/String;)V
.end method

.method public abstract onPingJitterUpdate(DDD)V
.end method

.method public abstract onTestIDReceived(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onUploadUpdate(DD)V
.end method
