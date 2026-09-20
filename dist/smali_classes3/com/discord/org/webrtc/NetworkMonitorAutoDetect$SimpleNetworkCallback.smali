.class Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimpleNetworkCallback"
.end annotation


# instance fields
.field final availableNetworks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/Network;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;


# direct methods
.method constructor <init>(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/Network;",
            ">;)V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->this$0:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->availableNetworks:Ljava/util/Set;

    return-void
.end method

.method private onNetworkChanged(Landroid/net/Network;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->this$0:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;

    invoke-static {v0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->-$$Nest$fgetconnectivityManagerDelegate(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;)Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->-$$Nest$mnetworkToInfo(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->this$0:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;

    invoke-static {v0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->-$$Nest$fgetobserver(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;)Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;->onNetworkConnect(Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 6

    const-string v0, "NetworkMonitorAutoDetect"

    .line 109
    invoke-static {p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->-$$Nest$smnetworkToNetId(Landroid/net/Network;)J

    move-result-wide v1

    .line 110
    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Network handle: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " becomes available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->availableNetworks:Ljava/util/Set;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->availableNetworks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->onNetworkChanged(Landroid/net/Network;)V

    return-void

    :catchall_0
    move-exception p1

    .line 114
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 4

    .line 123
    invoke-static {p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->-$$Nest$smnetworkToNetId(Landroid/net/Network;)J

    move-result-wide v0

    .line 124
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handle: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " capabilities changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NetworkMonitorAutoDetect"

    .line 122
    invoke-static {v0, p2}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->onNetworkChanged(Landroid/net/Network;)V

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 3

    .line 135
    invoke-static {p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->-$$Nest$smnetworkToNetId(Landroid/net/Network;)J

    move-result-wide v0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "handle: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " link properties changed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NetworkMonitorAutoDetect"

    invoke-static {v0, p2}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->onNetworkChanged(Landroid/net/Network;)V

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 4

    .line 145
    invoke-static {p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->-$$Nest$smnetworkToNetId(Landroid/net/Network;)J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Network handle: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is about to lose in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetworkMonitorAutoDetect"

    .line 143
    invoke-static {p2, p1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 6

    const-string v0, "NetworkMonitorAutoDetect"

    .line 153
    invoke-static {p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->-$$Nest$smnetworkToNetId(Landroid/net/Network;)J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Network handle: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->availableNetworks:Ljava/util/Set;

    monitor-enter v0

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->availableNetworks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 158
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->this$0:Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;

    invoke-static {v0}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->-$$Nest$fgetobserver(Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;)Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;

    move-result-object v0

    invoke-static {p1}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;->-$$Nest$smnetworkToNetId(Landroid/net/Network;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;->onNetworkDisconnect(J)V

    return-void

    :catchall_0
    move-exception p1

    .line 158
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
