.class public Lcom/discord/org/webrtc/StatsReport;
.super Ljava/lang/Object;
.source "StatsReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/StatsReport$Value;
    }
.end annotation


# instance fields
.field public final id:Ljava/lang/String;

.field public final timestamp:D

.field public final type:Ljava/lang/String;

.field public final values:[Lcom/discord/org/webrtc/StatsReport$Value;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;D[Lcom/discord/org/webrtc/StatsReport$Value;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/discord/org/webrtc/StatsReport;->id:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/discord/org/webrtc/StatsReport;->type:Ljava/lang/String;

    .line 44
    iput-wide p3, p0, Lcom/discord/org/webrtc/StatsReport;->timestamp:D

    .line 45
    iput-object p5, p0, Lcom/discord/org/webrtc/StatsReport;->values:[Lcom/discord/org/webrtc/StatsReport$Value;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/discord/org/webrtc/StatsReport;->id:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type: "

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/discord/org/webrtc/StatsReport;->type:Ljava/lang/String;

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timestamp: "

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/discord/org/webrtc/StatsReport;->timestamp:D

    .line 56
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", values: "

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 58
    :goto_0
    iget-object v2, p0, Lcom/discord/org/webrtc/StatsReport;->values:[Lcom/discord/org/webrtc/StatsReport$Value;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 59
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/discord/org/webrtc/StatsReport$Value;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
