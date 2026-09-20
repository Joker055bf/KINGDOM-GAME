.class Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;
.super Ljava/lang/Object;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkState"
.end annotation


# instance fields
.field private final connected:Z

.field private final subtype:I

.field private final type:I

.field private final underlyingNetworkSubtypeForVpn:I

.field private final underlyingNetworkTypeForVpn:I


# direct methods
.method public constructor <init>(ZIIII)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean p1, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;->connected:Z

    .line 69
    iput p2, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;->type:I

    .line 70
    iput p3, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;->subtype:I

    .line 71
    iput p4, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;->underlyingNetworkTypeForVpn:I

    .line 72
    iput p5, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;->underlyingNetworkSubtypeForVpn:I

    return-void
.end method


# virtual methods
.method public getNetworkSubType()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;->subtype:I

    return v0
.end method

.method public getNetworkType()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;->type:I

    return v0
.end method

.method public getUnderlyingNetworkSubtypeForVpn()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;->underlyingNetworkSubtypeForVpn:I

    return v0
.end method

.method public getUnderlyingNetworkTypeForVpn()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;->underlyingNetworkTypeForVpn:I

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect$NetworkState;->connected:Z

    return v0
.end method
