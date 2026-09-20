.class Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$2;
.super Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;
.source "Speedtest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->start(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$SpeedtestHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

.field final synthetic val$callback:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$SpeedtestHandler;


# direct methods
.method constructor <init>(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$SpeedtestHandler;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$2;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    iput-object p5, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$2;->val$callback:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$SpeedtestHandler;

    invoke-direct {p0, p2, p3, p4}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;-><init>(Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;)V

    return-void
.end method


# virtual methods
.method public onCriticalFailure(Ljava/lang/String;)V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$2;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->access$100(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$2;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->access$202(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;I)I

    .line 216
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$2;->val$callback:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$SpeedtestHandler;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$SpeedtestHandler;->onCriticalFailure(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 216
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onDownloadUpdate(DD)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$2;->val$callback:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$SpeedtestHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$SpeedtestHandler;->onDownloadUpdate(DD)V

    return-void
.end method

.method public onEnd()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$2;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->access$100(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$2;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->access$202(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;I)I

    .line 208
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$2;->val$callback:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$SpeedtestHandler;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$SpeedtestHandler;->onEnd()V

    return-void

    :catchall_0
    move-exception v1

    .line 208
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onIPInfoUpdate(Ljava/lang/String;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$2;->val$callback:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$SpeedtestHandler;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$SpeedtestHandler;->onIPInfoUpdate(Ljava/lang/String;)V

    return-void
.end method

.method public onPingJitterUpdate(DDD)V
    .locals 7

    .line 189
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$2;->val$callback:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$SpeedtestHandler;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$SpeedtestHandler;->onPingJitterUpdate(DDD)V

    return-void
.end method

.method public onTestIDReceived(Ljava/lang/String;)V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$2;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->access$300(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;)Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->access$400(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 200
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$2;->val$callback:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$SpeedtestHandler;

    invoke-virtual {v1, p1, v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$SpeedtestHandler;->onTestIDReceived(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUploadUpdate(DD)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$2;->val$callback:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$SpeedtestHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$SpeedtestHandler;->onUploadUpdate(DD)V

    return-void
.end method
