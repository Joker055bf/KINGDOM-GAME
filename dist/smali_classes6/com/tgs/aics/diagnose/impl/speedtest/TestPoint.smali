.class Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;
.super Ljava/lang/Object;
.source "TestPoint.java"


# instance fields
.field private final dlURL:Ljava/lang/String;

.field private final getIpURL:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field protected ping:F

.field private final pingURL:Ljava/lang/String;

.field private final server:Ljava/lang/String;

.field private final ulURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 8
    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->ping:F

    .line 11
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->name:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->server:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->dlURL:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->ulURL:Ljava/lang/String;

    .line 15
    iput-object p5, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->pingURL:Ljava/lang/String;

    .line 16
    iput-object p6, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->getIpURL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 8
    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->ping:F

    :try_start_0
    const-string v0, "name"

    .line 21
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->name:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "server"

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->server:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "dlURL"

    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->dlURL:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "ulURL"

    .line 27
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->ulURL:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "pingURL"

    .line 29
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->pingURL:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "getIpURL"

    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->getIpURL:Ljava/lang/String;

    if-eqz p1, :cond_0

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing getIpURL field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing pingURL field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing ulURL field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing dlURL field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing server field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing name field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid JSON"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDlURL()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->dlURL:Ljava/lang/String;

    return-object v0
.end method

.method public getGetIpURL()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->getIpURL:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPing()F
    .locals 1

    .line 63
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->ping:F

    return v0
.end method

.method public getPingURL()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->pingURL:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->server:Ljava/lang/String;

    return-object v0
.end method

.method public getUlURL()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->ulURL:Ljava/lang/String;

    return-object v0
.end method
