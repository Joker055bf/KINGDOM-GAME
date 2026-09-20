.class public Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitorAutoDetect.java"

# interfaces
.implements Lcom/discord/org/webrtc/NetworkChangeDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;,
        Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;,
        Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;,
        Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;,
        Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;
    }
.end annotation


# static fields
.field private static final INVALID_NET_ID:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "NetworkMonitorAutoDetect"

.field private static includeWifiDirect:Z


# instance fields
.field private final allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field final availableNetworks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/Network;",
            ">;"
        }
    .end annotation
.end field

.field private connectionType:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

.field private connectivityManagerDelegate:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

.field private final context:Landroid/content/Context;

.field private final intentFilter:Landroid/content/IntentFilter;

.field private isRegistered:Z

.field private final mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final observer:Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;

.field private wifiDirectManagerDelegate:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

.field private wifiManagerDelegate:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;

.field private wifiSSID:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetconnectivityManagerDelegate(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;)Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetobserver(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;)Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->observer:Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetUnderlyingConnectionTypeForVpn(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;
    .locals 0

    invoke-static {p0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->getUnderlyingConnectionTypeForVpn(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smnetworkToNetId(Landroid/net/Network;)J
    .locals 2

    invoke-static {p0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->networkToNetId(Landroid/net/Network;)J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>(Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;Landroid/content/Context;)V
    .locals 3

    .line 651
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 643
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->availableNetworks:Ljava/util/Set;

    .line 652
    iput-object p1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->observer:Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;

    .line 653
    iput-object p2, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->context:Landroid/content/Context;

    .line 654
    invoke-virtual {p1}, Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;->getFieldTrialsString()Ljava/lang/String;

    move-result-object v1

    .line 655
    new-instance v2, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-direct {v2, p2, v0, v1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;-><init>(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .line 657
    new-instance v0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;

    invoke-direct {v0, p2}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->wifiManagerDelegate:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;

    .line 659
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState()Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    .line 660
    invoke-static {v0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->getConnectionType(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    move-result-object v1

    iput-object v1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->connectionType:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    .line 661
    invoke-direct {p0, v0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->getWifiSSID(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->wifiSSID:Ljava/lang/String;

    .line 662
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->intentFilter:Landroid/content/IntentFilter;

    .line 664
    sget-boolean v0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->includeWifiDirect:Z

    if-eqz v0, :cond_0

    .line 665
    new-instance v0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    invoke-direct {v0, p1, p2}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;-><init>(Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->wifiDirectManagerDelegate:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    .line 668
    :cond_0
    invoke-direct {p0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->registerReceiver()V

    .line 669
    iget-object p1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 672
    new-instance p1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p1}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 674
    :try_start_0
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0, p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->requestMobileNetwork(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p1

    goto :goto_0

    :catch_0
    const-string p1, "NetworkMonitorAutoDetect"

    const-string v0, "Unable to obtain permission to request a cellular network."

    .line 676
    invoke-static {p1, v0}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :goto_0
    iput-object p2, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 680
    new-instance p1, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;

    iget-object p2, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->availableNetworks:Ljava/util/Set;

    invoke-direct {p1, p0, p2}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;-><init>(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;Ljava/util/Set;)V

    iput-object p1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 681
    iget-object p2, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {p2, p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->registerNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_1

    .line 683
    :cond_1
    iput-object p2, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 684
    iput-object p2, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :goto_1
    return-void
.end method

.method private connectionTypeChanged(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;)V
    .locals 2

    .line 875
    invoke-static {p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->getConnectionType(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    move-result-object v0

    .line 876
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->getWifiSSID(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;)Ljava/lang/String;

    move-result-object p1

    .line 877
    iget-object v1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->connectionType:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->wifiSSID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 880
    :cond_0
    iput-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->connectionType:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    .line 881
    iput-object p1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->wifiSSID:Ljava/lang/String;

    .line 882
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Network connectivity changed, type is: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NetworkMonitorAutoDetect"

    invoke-static {v1, p1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iget-object p1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->observer:Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;

    invoke-virtual {p1, v0}, Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;->onConnectionTypeChanged(Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;)V

    return-void
.end method

.method public static getConnectionType(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;
    .locals 2

    .line 840
    invoke-virtual {p0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;->isConnected()Z

    move-result v0

    invoke-virtual {p0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;->getNetworkType()I

    move-result v1

    .line 841
    invoke-virtual {p0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;->getNetworkSubType()I

    move-result p0

    .line 840
    invoke-static {v0, v1, p0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->getConnectionType(ZII)Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    move-result-object p0

    return-object p0
.end method

.method private static getConnectionType(ZII)Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;
    .locals 0

    if-nez p0, :cond_0

    .line 789
    sget-object p0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_NONE:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    :cond_0
    if-eqz p1, :cond_6

    const/4 p0, 0x1

    if-eq p1, p0, :cond_5

    const/4 p0, 0x4

    if-eq p1, p0, :cond_6

    const/4 p0, 0x5

    if-eq p1, p0, :cond_6

    const/4 p0, 0x6

    if-eq p1, p0, :cond_4

    const/4 p0, 0x7

    if-eq p1, p0, :cond_3

    const/16 p0, 0x9

    if-eq p1, p0, :cond_2

    const/16 p0, 0x11

    if-eq p1, p0, :cond_1

    .line 835
    sget-object p0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_UNKNOWN:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    .line 833
    :cond_1
    sget-object p0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_VPN:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    .line 794
    :cond_2
    sget-object p0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_ETHERNET:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    .line 800
    :cond_3
    sget-object p0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_BLUETOOTH:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    .line 798
    :cond_4
    sget-object p0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_4G:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    .line 796
    :cond_5
    sget-object p0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_WIFI:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    :cond_6
    packed-switch p2, :pswitch_data_0

    .line 830
    :pswitch_0
    sget-object p0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_UNKNOWN_CELLULAR:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    .line 828
    :pswitch_1
    sget-object p0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_5G:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    .line 826
    :pswitch_2
    sget-object p0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_4G:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    .line 823
    :pswitch_3
    sget-object p0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_3G:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    .line 812
    :pswitch_4
    sget-object p0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_2G:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getUnderlyingConnectionTypeForVpn(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;
    .locals 2

    .line 851
    invoke-virtual {p0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;->getNetworkType()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    .line 852
    sget-object p0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_NONE:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0

    .line 854
    :cond_0
    invoke-virtual {p0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;->isConnected()Z

    move-result v0

    .line 855
    invoke-virtual {p0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;->getUnderlyingNetworkTypeForVpn()I

    move-result v1

    .line 856
    invoke-virtual {p0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;->getUnderlyingNetworkSubtypeForVpn()I

    move-result p0

    .line 854
    invoke-static {v0, v1, p0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->getConnectionType(ZII)Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    move-result-object p0

    return-object p0
.end method

.method private getWifiSSID(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;)Ljava/lang/String;
    .locals 1

    .line 860
    invoke-static {p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->getConnectionType(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    move-result-object p1

    sget-object v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_WIFI:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 862
    :cond_0
    iget-object p1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->wifiManagerDelegate:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;

    invoke-virtual {p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;->getWifiSSID()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static networkToNetId(Landroid/net/Network;)J
    .locals 2

    .line 894
    invoke-virtual {p0}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v0

    return-wide v0
.end method

.method private registerReceiver()V
    .locals 2

    .line 754
    iget-boolean v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->isRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 757
    iput-boolean v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->isRegistered:Z

    .line 758
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static setIncludeWifiDirect(Z)V
    .locals 0

    .line 690
    sput-boolean p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->includeWifiDirect:Z

    return-void
.end method

.method private unregisterReceiver()V
    .locals 1

    .line 765
    iget-boolean v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->isRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 768
    iput-boolean v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->isRegistered:Z

    .line 769
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 738
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 739
    iget-object v1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v1, v0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    .line 742
    iget-object v1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v1, v0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->wifiDirectManagerDelegate:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    if-eqz v0, :cond_2

    .line 745
    invoke-virtual {v0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->release()V

    .line 747
    :cond_2
    invoke-direct {p0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->unregisterReceiver()V

    return-void
.end method

.method public getActiveNetworkList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;",
            ">;"
        }
    .end annotation

    .line 723
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .line 724
    invoke-virtual {v0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getActiveNetworkList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 728
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 730
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->wifiDirectManagerDelegate:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    if-eqz v0, :cond_1

    .line 731
    invoke-virtual {v0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->getActiveNetworkList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v1
.end method

.method public getCurrentConnectionType()Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;
    .locals 1

    .line 846
    invoke-virtual {p0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->getCurrentNetworkState()Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    invoke-static {v0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->getConnectionType(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentNetworkState()Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState()Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultNetId()J
    .locals 2

    .line 783
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getDefaultNetId()J

    move-result-wide v0

    return-wide v0
.end method

.method isReceiverRegisteredForTesting()Z
    .locals 1

    .line 717
    iget-boolean v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->isRegistered:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 868
    invoke-virtual {p0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->getCurrentNetworkState()Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object p1

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 869
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 870
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->connectionTypeChanged(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;)V

    :cond_0
    return-void
.end method

.method setConnectivityManagerDelegateForTests(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;)V
    .locals 0

    .line 702
    iput-object p1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    return-void
.end method

.method setWifiManagerDelegateForTests(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;)V
    .locals 0

    .line 709
    iput-object p1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->wifiManagerDelegate:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;

    return-void
.end method

.method public supportNetworkCallback()Z
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    move-result v0

    return v0
.end method
