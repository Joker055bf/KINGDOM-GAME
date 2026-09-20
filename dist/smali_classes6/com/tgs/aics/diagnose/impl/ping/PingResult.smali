.class Lcom/tgs/aics/diagnose/impl/ping/PingResult;
.super Ljava/lang/Object;
.source "PingResult.java"


# instance fields
.field public error:Ljava/lang/String;

.field public fullString:Ljava/lang/String;

.field public final ia:Ljava/net/InetAddress;

.field public isReachable:Z

.field public result:Ljava/lang/String;

.field public timeTaken:F


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->error:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->ia:Ljava/net/InetAddress;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->ia:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeTaken()F
    .locals 1

    .line 26
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->timeTaken:F

    return v0
.end method

.method public hasError()Z
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReachable()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->isReachable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PingResult{ia="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->ia:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isReachable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->isReachable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', timeTaken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->timeTaken:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fullString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->fullString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', result=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
