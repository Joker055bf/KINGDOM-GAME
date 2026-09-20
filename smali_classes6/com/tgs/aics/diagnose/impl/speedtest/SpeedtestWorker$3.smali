.class Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$3;
.super Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;
.source "SpeedtestWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->ulTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILcom/tgs/aics/diagnose/impl/speedtest/Logger;J)V
    .locals 11

    move-object v10, p0

    move-object v0, p1

    .line 137
    iput-object v0, v10, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$3;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    move-wide/from16 v0, p11

    iput-wide v0, v10, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$3;->val$start:J

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILcom/tgs/aics/diagnose/impl/speedtest/Logger;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 6

    .line 140
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$3;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->access$100(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;)Lcom/tgs/aics/diagnose/impl/speedtest/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Upload: FAILED (took "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$3;->val$start:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Logger;->l(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$3;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->abort()V

    .line 142
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$3;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->onCriticalFailure(Ljava/lang/String;)V

    return-void
.end method
