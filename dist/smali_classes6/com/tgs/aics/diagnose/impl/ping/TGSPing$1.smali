.class Lcom/tgs/aics/diagnose/impl/ping/TGSPing$1;
.super Ljava/lang/Object;
.source "TGSPing.java"

# interfaces
.implements Lcom/tgs/aics/diagnose/impl/ping/Ping$PingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/diagnose/impl/ping/TGSPing;->pingDomain(Ljava/lang/String;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$builder:Ljava/lang/StringBuilder;

.field final synthetic val$ipAddress:Ljava/lang/String;

.field final synthetic val$onUpdate:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

.field final synthetic val$result:Lcom/tgs/aics/diagnose/Result;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;Lcom/tgs/aics/diagnose/Result;Ljava/lang/String;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/ping/TGSPing$1;->val$builder:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/tgs/aics/diagnose/impl/ping/TGSPing$1;->val$result:Lcom/tgs/aics/diagnose/Result;

    iput-object p3, p0, Lcom/tgs/aics/diagnose/impl/ping/TGSPing$1;->val$ipAddress:Ljava/lang/String;

    iput-object p4, p0, Lcom/tgs/aics/diagnose/impl/ping/TGSPing$1;->val$onUpdate:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/ping/TGSPing$1;->val$onUpdate:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/ping/TGSPing$1;->val$result:Lcom/tgs/aics/diagnose/Result;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tgs/aics/diagnose/Result;->setEndTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error ping.e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {v1, p1}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/ping/TGSPing$1;->val$builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tgs/aics/diagnose/Result;->setData(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    .line 59
    invoke-interface {v0, p1}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    return-void
.end method

.method public onFinished(Lcom/tgs/aics/diagnose/impl/ping/PingStats;)V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 45
    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->getNoPings()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->getPacketsLost()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Pings: %d, Packets lost: %d"

    .line 44
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/ping/TGSPing$1;->val$builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    .line 48
    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->getMinTimeTaken()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->getAverageTimeTaken()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->getMaxTimeTaken()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v0

    const-string v5, "Min/Avg/Max Time: %.2f/%.2f/%.2f ms"

    .line 47
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 49
    iget-object v5, p0, Lcom/tgs/aics/diagnose/impl/ping/TGSPing$1;->val$builder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/ping/TGSPing$1;->val$result:Lcom/tgs/aics/diagnose/Result;

    iget-object v5, p0, Lcom/tgs/aics/diagnose/impl/ping/TGSPing$1;->val$ipAddress:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    .line 51
    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->getMinTimeTaken()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->getAverageTimeTaken()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->getMaxTimeTaken()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Mi/Av/Ma %.2f/%.2f/%.2f ms"

    .line 50
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/tgs/aics/diagnose/Result;->putUiData(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 52
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/ping/TGSPing$1;->val$onUpdate:Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/ping/TGSPing$1;->val$result:Lcom/tgs/aics/diagnose/Result;

    invoke-virtual {v1, v4}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tgs/aics/diagnose/Result;->setEndTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " averageTimeTakenMillis="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/impl/ping/PingStats;->getAverageTimeTakenMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/ping/TGSPing$1;->val$builder:Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tgs/aics/diagnose/Result;->setData(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    .line 52
    invoke-interface {v0, p1}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    return-void
.end method

.method public onResult(Lcom/tgs/aics/diagnose/impl/ping/PingResult;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 35
    iget-boolean v0, p1, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->isReachable:Z

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/ping/TGSPing$1;->val$builder:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->getTimeTaken()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "\n%.2f ms"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/ping/TGSPing$1;->val$builder:Ljava/lang/StringBuilder;

    const-string v0, "\n\u8d85\u65f6"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method
