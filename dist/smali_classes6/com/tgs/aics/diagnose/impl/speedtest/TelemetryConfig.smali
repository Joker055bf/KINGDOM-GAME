.class Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;
.super Ljava/lang/Object;
.source "TelemetryConfig.java"


# static fields
.field public static final LEVEL_BASIC:Ljava/lang/String; = "basic"

.field public static final LEVEL_DISABLED:Ljava/lang/String; = "disabled"

.field public static final LEVEL_FULL:Ljava/lang/String; = "full"


# instance fields
.field private path:Ljava/lang/String;

.field private server:Ljava/lang/String;

.field private shareURL:Ljava/lang/String;

.field private telemetryLevel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "disabled"

    .line 7
    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->telemetryLevel:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->server:Ljava/lang/String;

    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->shareURL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->telemetryLevel:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->server:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->path:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->shareURL:Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->check()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "shareURL"

    const-string v1, "path"

    const-string v2, "server"

    const-string v3, "telemetryLevel"

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v4, "disabled"

    .line 7
    iput-object v4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->telemetryLevel:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->server:Ljava/lang/String;

    iput-object v4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->path:Ljava/lang/String;

    iput-object v4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->shareURL:Ljava/lang/String;

    .line 26
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->telemetryLevel:Ljava/lang/String;

    .line 27
    :cond_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->server:Ljava/lang/String;

    .line 28
    :cond_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->path:Ljava/lang/String;

    .line 29
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->shareURL:Ljava/lang/String;

    .line 30
    :cond_3
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->check()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid JSON ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private check()V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->telemetryLevel:Ljava/lang/String;

    const-string v1, "disabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->telemetryLevel:Ljava/lang/String;

    const-string v1, "basic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->telemetryLevel:Ljava/lang/String;

    const-string v1, "full"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Telemetry level must be disabled, basic or full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;
    .locals 5

    .line 53
    new-instance v0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->telemetryLevel:Ljava/lang/String;

    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->server:Ljava/lang/String;

    iget-object v3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->shareURL:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->clone()Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->server:Ljava/lang/String;

    return-object v0
.end method

.method public getShareURL()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->shareURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTelemetryLevel()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TelemetryConfig;->telemetryLevel:Ljava/lang/String;

    return-object v0
.end method
