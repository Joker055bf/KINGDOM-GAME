.class public Lcom/game/sdk/comon/utils/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NetworkUtils"

.field public static TYPE_MOBILE:I = 0x2

.field public static TYPE_NOT_CONNECTED:I = 0x0

.field public static TYPE_WIFI:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNetwork(Landroid/app/Activity;)Z
    .locals 2

    .line 74
    invoke-static {p0}, Lcom/game/sdk/comon/utils/NetworkUtils;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v1, Lcom/game/sdk/comon/utils/NetworkUtils$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/comon/utils/NetworkUtils$1;-><init>(Landroid/app/Activity;)V

    :cond_0
    return v0
.end method

.method public static getConnectivityStatus(Landroid/content/Context;)I
    .locals 2

    const-string v0, "connectivity"

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 32
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 34
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 35
    sget-object p0, Lcom/game/sdk/comon/utils/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v0, "activeNetwork TYPE_WIFI"

    invoke-static {p0, v0}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget p0, Lcom/game/sdk/comon/utils/NetworkUtils;->TYPE_WIFI:I

    return p0

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_1

    .line 40
    sget-object p0, Lcom/game/sdk/comon/utils/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v0, "activeNetwork TYPE_MOBILE"

    invoke-static {p0, v0}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget p0, Lcom/game/sdk/comon/utils/NetworkUtils;->TYPE_MOBILE:I

    return p0

    .line 44
    :cond_1
    sget p0, Lcom/game/sdk/comon/utils/NetworkUtils;->TYPE_NOT_CONNECTED:I

    return p0
.end method

.method public static isConnect(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
