.class public interface abstract Lcom/tgs/aics/diagnose/impl/ping/Ping$PingListener;
.super Ljava/lang/Object;
.source "Ping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/diagnose/impl/ping/Ping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PingListener"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onFinished(Lcom/tgs/aics/diagnose/impl/ping/PingStats;)V
.end method

.method public abstract onResult(Lcom/tgs/aics/diagnose/impl/ping/PingResult;)V
.end method
