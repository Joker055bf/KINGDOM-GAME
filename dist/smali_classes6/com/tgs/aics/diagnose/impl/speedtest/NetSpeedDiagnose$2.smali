.class Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;
.super Lcom/tgs/aics/diagnose/impl/speedtest/CustomSpeedtestHandler;
.source "NetSpeedDiagnose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;->launchTest(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;Ljava/util/List;Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;

.field final synthetic val$onUpdate:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

.field final synthetic val$result:Lcom/tgs/aics/diagnose/Result;

.field final synthetic val$speedtest:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;


# direct methods
.method constructor <init>(Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;

    iput-object p2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->val$speedtest:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    iput-object p3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->val$result:Lcom/tgs/aics/diagnose/Result;

    iput-object p4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->val$onUpdate:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    invoke-direct {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/CustomSpeedtestHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onCriticalFailure(Ljava/lang/String;)V
    .locals 4

    .line 142
    invoke-super {p0, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/CustomSpeedtestHandler;->onCriticalFailure(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;->access$100(Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;)Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->val$speedtest:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    if-ne v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;->access$102(Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;)Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->val$onUpdate:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->val$result:Lcom/tgs/aics/diagnose/Result;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Critical failure.err="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-virtual {v1, p1}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->getAsJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tgs/aics/diagnose/Result;->setData(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    .line 147
    invoke-interface {v0, p1}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    return-void
.end method

.method public onEnd()V
    .locals 10

    .line 125
    invoke-super {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/CustomSpeedtestHandler;->onEnd()V

    .line 126
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;->access$100(Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;)Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->val$speedtest:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;->access$102(Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose;Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;)Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->val$result:Lcom/tgs/aics/diagnose/Result;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->mDownloadSpeed:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "%.2f"

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Mbps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "DownloadSpeed"

    invoke-virtual {v0, v4, v1}, Lcom/tgs/aics/diagnose/Result;->putUiData(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 132
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->val$result:Lcom/tgs/aics/diagnose/Result;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v7, v3, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->mUploadSpeed:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UploadSpeed"

    invoke-virtual {v0, v2, v1}, Lcom/tgs/aics/diagnose/Result;->putUiData(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 133
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->val$result:Lcom/tgs/aics/diagnose/Result;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->mPing:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Ping"

    invoke-virtual {v0, v4, v1}, Lcom/tgs/aics/diagnose/Result;->putUiData(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 134
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->val$result:Lcom/tgs/aics/diagnose/Result;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->mJitter:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Jitter"

    invoke-virtual {v0, v2, v1}, Lcom/tgs/aics/diagnose/Result;->putUiData(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 135
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->val$result:Lcom/tgs/aics/diagnose/Result;

    const-string v1, "Info"

    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->mIpInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/diagnose/Result;->putUiData(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 137
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->val$onUpdate:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->val$result:Lcom/tgs/aics/diagnose/Result;

    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/NetSpeedDiagnose$2;->getAsJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tgs/aics/diagnose/Result;->setData(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/Result;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    return-void
.end method
