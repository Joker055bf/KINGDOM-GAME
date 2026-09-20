.class public Lcom/t4f/utils/TgsNetworkUtil;
.super Ljava/lang/Object;
.source "TgsNetworkUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "sdktgs.NetworkUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isVPNConnected(Landroid/content/Context;)Z
    .locals 9

    const/4 v0, 0x0

    const-string v1, "sdktgs.NetworkUtil"

    if-nez p0, :cond_0

    const-string p0, "Context is null"

    .line 17
    invoke-static {v1, p0}, Lcom/t4f/debug/Debug;->W(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    :try_start_0
    const-string v2, "connectivity"

    .line 22
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_1

    const-string p0, "ConnectivityManager is null"

    .line 25
    invoke-static {v1, p0}, Lcom/t4f/debug/Debug;->W(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 33
    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 34
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "VPN is connected on active network"

    .line 35
    invoke-static {v1, p0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 42
    :cond_2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 43
    array-length v5, v2

    if-nez v5, :cond_3

    goto :goto_1

    .line 48
    :cond_3
    array-length v5, v2

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_5

    aget-object v7, v2, v6

    .line 49
    invoke-virtual {p0, v7}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 50
    invoke-virtual {v8, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPN is connected on network: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    const-string p0, "No VPN connection found"

    .line 56
    invoke-static {v1, p0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_6
    :goto_1
    const-string p0, "No networks available"

    .line 44
    invoke-static {v1, p0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected error while checking VPN status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/t4f/debug/Debug;->E(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_1
    move-exception p0

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Security exception while checking VPN status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/t4f/debug/Debug;->E(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
