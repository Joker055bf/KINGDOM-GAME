.class Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$5;
.super Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;
.source "SpeedtestWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->sendTelemetry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;


# direct methods
.method constructor <init>(Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;Lcom/tgs/aics/diagnose/impl/speedtest/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v11, p0

    move-object v0, p1

    .line 230
    iput-object v0, v11, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$5;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lcom/tgs/aics/diagnose/impl/speedtest/Telemetry;-><init>(Lcom/tgs/aics/diagnose/impl/speedtest/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDataReceived(Ljava/lang/String;)V
    .locals 2

    const-string v0, "id"

    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker$5;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestWorker;->onTestIDReceived(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 240
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Telemetry error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
