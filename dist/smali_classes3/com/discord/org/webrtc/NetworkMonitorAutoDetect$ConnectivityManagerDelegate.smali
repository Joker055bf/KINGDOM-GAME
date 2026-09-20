.class Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;
.super Ljava/lang/Object;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectivityManagerDelegate"
.end annotation


# instance fields
.field private final availableNetworks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/Network;",
            ">;"
        }
    .end annotation
.end field

.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private final getAllNetworksFromCache:Z

.field private final includeOtherUidNetworks:Z

.field private final requestVPN:Z


# direct methods
.method static bridge synthetic -$$Nest$mnetworkToInfo(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;
    .locals 0

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->networkToInfo(Landroid/net/Network;)Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Landroid/net/Network;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "connectivity"

    .line 191
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-direct {p0, p1, p2, p3}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;-><init>(Landroid/net/ConnectivityManager;Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/net/ConnectivityManager;Ljava/util/Set;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/ConnectivityManager;",
            "Ljava/util/Set<",
            "Landroid/net/Network;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 199
    iput-object p2, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->availableNetworks:Ljava/util/Set;

    const-string p1, "getAllNetworksFromCache"

    const/4 p2, 0x1

    .line 201
    invoke-static {p3, p1, p2}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->checkFieldTrial(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getAllNetworksFromCache:Z

    const-string p1, "requestVPN"

    .line 202
    invoke-static {p3, p1, p2}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->checkFieldTrial(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->requestVPN:Z

    const-string p1, "includeOtherUidNetworks"

    const/4 p2, 0x0

    .line 204
    invoke-static {p3, p1, p2}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->checkFieldTrial(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->includeOtherUidNetworks:Z

    return-void
.end method

.method private static checkFieldTrial(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":false"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return p2
.end method

.method private getNetworkState(Landroid/net/NetworkInfo;)Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;
    .locals 13

    if-eqz p1, :cond_1

    .line 307
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    new-instance v0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;-><init>(ZIIII)V

    return-object v0

    .line 308
    :cond_1
    :goto_0
    new-instance p1, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;-><init>(ZIIII)V

    return-object p1
.end method

.method private networkToInfo(Landroid/net/Network;)Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 392
    iget-object v1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 395
    :cond_0
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    const-string v2, "NetworkMonitorAutoDetect"

    if-nez v1, :cond_1

    .line 398
    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Detected unknown network: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 401
    :cond_1
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 402
    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Null interface name for network "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 406
    :cond_2
    invoke-virtual {p0, p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/Network;)Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v3

    .line 407
    invoke-static {v3}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->getConnectionType(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    move-result-object v6

    .line 408
    sget-object v4, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_NONE:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    const-string v5, "Network "

    if-ne v6, v4, :cond_3

    .line 411
    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is disconnected"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 417
    :cond_3
    sget-object v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_UNKNOWN:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    if-eq v6, v0, :cond_4

    sget-object v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_UNKNOWN_CELLULAR:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    if-ne v6, v0, :cond_5

    .line 419
    :cond_4
    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-virtual {v3}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;->getNetworkType()I

    move-result v4

    .line 421
    invoke-virtual {v3}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;->getNetworkSubType()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " connection type is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " because it has type "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " and subtype "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-static {v2, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_5
    invoke-static {v3}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->-$$Nest$smgetUnderlyingConnectionTypeForVpn(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    move-result-object v7

    .line 429
    new-instance v0, Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;

    .line 430
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    .line 431
    invoke-static {p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->-$$Nest$smnetworkToNetId(Landroid/net/Network;)J

    move-result-wide v8

    invoke-virtual {p0, v1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getIPAddresses(Landroid/net/LinkProperties;)[Lcom/discord/org/webrtc/NetworkChangeDetector$IPAddress;

    move-result-object v10

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;-><init>(Ljava/lang/String;Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;J[Lcom/discord/org/webrtc/NetworkChangeDetector$IPAddress;)V

    :cond_6
    :goto_0
    return-object v0
.end method


# virtual methods
.method createNetworkRequest()Landroid/net/NetworkRequest;
    .locals 3

    .line 453
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 454
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 456
    iget-boolean v1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->requestVPN:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    .line 457
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 459
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->includeOtherUidNetworks:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 460
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setIncludeOtherUidNetworks(Z)Landroid/net/NetworkRequest$Builder;

    .line 462
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    return-object v0
.end method

.method getActiveNetworkList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;",
            ">;"
        }
    .end annotation

    .line 334
    invoke-virtual {p0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 337
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    invoke-virtual {p0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 339
    invoke-direct {p0, v4}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->networkToInfo(Landroid/net/Network;)Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 341
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method getAllNetworks()[Landroid/net/Network;
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Landroid/net/Network;

    return-object v0

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getAllNetworksFromCache:Z

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->availableNetworks:Ljava/util/Set;

    monitor-enter v0

    .line 325
    :try_start_0
    iget-object v2, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->availableNetworks:Ljava/util/Set;

    new-array v1, v1, [Landroid/net/Network;

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Network;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 326
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method getDefaultNetId()J
    .locals 11

    .line 354
    invoke-virtual {p0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v1

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getAllNetworks()[Landroid/net/Network;

    move-result-object v3

    .line 367
    array-length v4, v3

    const/4 v5, 0x0

    move-wide v6, v1

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v8, v3, v5

    .line 368
    invoke-virtual {p0, v8}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->hasInternetCapability(Landroid/net/Network;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    .line 371
    :cond_2
    iget-object v9, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v9, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 372
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    if-ne v9, v10, :cond_4

    cmp-long v6, v6, v1

    if-nez v6, :cond_3

    .line 384
    invoke-static {v8}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->-$$Nest$smnetworkToNetId(Landroid/net/Network;)J

    move-result-wide v6

    goto :goto_1

    .line 381
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Multiple connected networks of same type are not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-wide v6
.end method

.method getIPAddresses(Landroid/net/LinkProperties;)[Lcom/discord/org/webrtc/NetworkChangeDetector$IPAddress;
    .locals 4

    .line 482
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/discord/org/webrtc/NetworkChangeDetector$IPAddress;

    .line 484
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 485
    new-instance v3, Lcom/discord/org/webrtc/NetworkChangeDetector$IPAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/discord/org/webrtc/NetworkChangeDetector$IPAddress;-><init>([B)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getNetworkState()Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;
    .locals 7

    .line 222
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;-><init>(ZIIII)V

    return-object v0

    .line 225
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/NetworkInfo;)Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    return-object v0
.end method

.method getNetworkState(Landroid/net/Network;)Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_7

    .line 234
    iget-object v2, v0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 237
    :cond_0
    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t retrieve information from network "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkMonitorAutoDetect"

    invoke-static {v2, v1}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v1, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;-><init>(ZIIII)V

    return-object v1

    .line 258
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/16 v4, 0x11

    if-eq v3, v4, :cond_4

    .line 260
    iget-object v3, v0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 261
    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v3, 0x4

    .line 263
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 269
    :cond_2
    new-instance v1, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    const/16 v5, 0x11

    const/4 v6, -0x1

    .line 270
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v8

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;-><init>(ZIIII)V

    return-object v1

    .line 264
    :cond_3
    :goto_0
    invoke-direct {v0, v2}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/NetworkInfo;)Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v1

    return-object v1

    .line 280
    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v4, :cond_6

    .line 281
    iget-object v3, v0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 282
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 286
    iget-object v1, v0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 289
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v4, :cond_5

    .line 290
    new-instance v3, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    const/16 v7, 0x11

    const/4 v8, -0x1

    .line 291
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v10

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;-><init>(ZIIII)V

    return-object v3

    .line 294
    :cond_5
    new-instance v1, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;

    .line 295
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    const/16 v13, 0x11

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;-><init>(ZIIII)V

    return-object v1

    .line 298
    :cond_6
    invoke-direct {v0, v2}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/NetworkInfo;)Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v1

    return-object v1

    .line 235
    :cond_7
    :goto_1
    new-instance v1, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;-><init>(ZIIII)V

    return-object v1
.end method

.method hasInternetCapability(Landroid/net/Network;)Z
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 444
    :cond_0
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0xc

    .line 446
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public registerNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->createNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 2

    .line 493
    invoke-virtual {p0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NetworkMonitorAutoDetect"

    const-string v1, "Unregister network callback"

    .line 494
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method public requestMobileNetwork(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 3

    .line 474
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 475
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 476
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 477
    iget-object v1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public supportNetworkCallback()Z
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
