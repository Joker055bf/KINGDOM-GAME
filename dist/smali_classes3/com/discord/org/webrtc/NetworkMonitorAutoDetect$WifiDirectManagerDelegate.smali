.class Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WifiDirectManagerDelegate"
.end annotation


# static fields
.field private static final WIFI_P2P_NETWORK_HANDLE:I


# instance fields
.field private final context:Landroid/content/Context;

.field private final observer:Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;

.field private wifiP2pNetworkInfo:Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;


# direct methods
.method public static synthetic $r8$lambda$HDNqIT2_pO07r-VMVHHJjIGB2xQ(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->lambda$new$0(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method

.method constructor <init>(Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;Landroid/content/Context;)V
    .locals 2

    .line 544
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 545
    iput-object p2, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->context:Landroid/content/Context;

    .line 546
    iput-object p1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->observer:Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;

    .line 547
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    .line 548
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 549
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 551
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-le p1, v0, :cond_0

    const-string/jumbo p1, "wifip2p"

    .line 556
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 558
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p2

    .line 559
    new-instance v0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;)V

    invoke-virtual {p1, p2, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 0

    .line 559
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->onWifiP2pGroupChange(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method

.method private onWifiP2pGroupChange(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 9

    if-eqz p1, :cond_2

    .line 591
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 597
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 604
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v8, v1, [Lcom/discord/org/webrtc/NetworkChangeDetector$IPAddress;

    const/4 v1, 0x0

    .line 605
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 606
    new-instance v2, Lcom/discord/org/webrtc/NetworkChangeDetector$IPAddress;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/discord/org/webrtc/NetworkChangeDetector$IPAddress;-><init>([B)V

    aput-object v2, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 609
    :cond_1
    new-instance v0, Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_WIFI:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    sget-object v5, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_NONE:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    const-wide/16 v6, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;-><init>(Ljava/lang/String;Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;J[Lcom/discord/org/webrtc/NetworkChangeDetector$IPAddress;)V

    iput-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->wifiP2pNetworkInfo:Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;

    .line 613
    iget-object p1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->observer:Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;

    invoke-virtual {p1, v0}, Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;->onNetworkConnect(Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;)V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "NetworkMonitorAutoDetect"

    const-string v1, "Unable to get WifiP2p network interface"

    .line 599
    invoke-static {v0, v1, p1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private onWifiP2pStateChange(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 619
    iput-object p1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->wifiP2pNetworkInfo:Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;

    .line 620
    iget-object p1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->observer:Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;->onNetworkDisconnect(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getActiveNetworkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;",
            ">;"
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->wifiP2pNetworkInfo:Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;

    if-eqz v0, :cond_0

    .line 583
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 586
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 567
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "p2pGroupInfo"

    .line 568
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 569
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->onWifiP2pGroupChange(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    goto :goto_0

    :cond_0
    const-string p1, "android.net.wifi.p2p.STATE_CHANGED"

    .line 570
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "wifi_p2p_state"

    const/4 v0, 0x0

    .line 571
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 572
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->onWifiP2pStateChange(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
