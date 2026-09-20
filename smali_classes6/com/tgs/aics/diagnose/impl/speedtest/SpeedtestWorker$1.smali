.class Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$1;
.super Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;
.source "SpeedtestWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->getIP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;Lcom/tgs/aics/diagnose/impl/speedtest/Connection;Ljava/lang/String;ZLjava/lang/String;J)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    iput-wide p6, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$1;->val$start:J

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/tgs/aics/diagnose/impl/speedtest/GetIP;-><init>(Lcom/tgs/aics/diagnose/impl/speedtest/Connection;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDataReceived(Ljava/lang/String;)V
    .locals 6

    .line 60
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    invoke-static {v0, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->access$002(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "processedString"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :catchall_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->access$100(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;)Lcom/tgs/aics/diagnose/impl/speedtest/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetIP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$1;->val$start:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Logger;->l(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->onIPInfoUpdate(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 6

    .line 70
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->access$100(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;)Lcom/tgs/aics/diagnose/impl/speedtest/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetIP: FAILED (took "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$1;->val$start:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Logger;->l(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->abort()V

    .line 72
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->onCriticalFailure(Ljava/lang/String;)V

    return-void
.end method
