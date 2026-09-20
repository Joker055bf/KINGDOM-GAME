.class Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;
.super Ljava/lang/Object;
.source "PingInfo.java"


# instance fields
.field private firstLine:Ljava/lang/String;

.field private geo:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstLine()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;->firstLine:Ljava/lang/String;

    return-object v0
.end method

.method public getGeo()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;->geo:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;->time:Ljava/lang/String;

    return-object v0
.end method

.method public loadGeoByIP()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;->ip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 58
    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;->geo:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setFirstLine(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;->firstLine:Ljava/lang/String;

    return-void
.end method

.method public setGeo(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;->geo:Ljava/lang/String;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;->ip:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;->time:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PingInfo{ip=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', time=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', geo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;->geo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
