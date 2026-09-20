.class public Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;
.super Ljava/lang/Object;
.source "NetworkChangeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/NetworkChangeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkInformation"
.end annotation


# instance fields
.field public final handle:J

.field public final ipAddresses:[Lcom/discord/org/webrtc/NetworkChangeDetector$IPAddress;

.field public final name:Ljava/lang/String;

.field public final type:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

.field public final underlyingTypeForVpn:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;J[Lcom/discord/org/webrtc/NetworkChangeDetector$IPAddress;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;->name:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;->type:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    .line 59
    iput-object p3, p0, Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;->underlyingTypeForVpn:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    .line 60
    iput-wide p4, p0, Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;->handle:J

    .line 61
    iput-object p6, p0, Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;->ipAddresses:[Lcom/discord/org/webrtc/NetworkChangeDetector$IPAddress;

    return-void
.end method

.method private getConnectionType()Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;->type:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    return-object v0
.end method

.method private getHandle()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;->handle:J

    return-wide v0
.end method

.method private getIpAddresses()[Lcom/discord/org/webrtc/NetworkChangeDetector$IPAddress;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;->ipAddresses:[Lcom/discord/org/webrtc/NetworkChangeDetector$IPAddress;

    return-object v0
.end method

.method private getName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;->name:Ljava/lang/String;

    return-object v0
.end method

.method private getUnderlyingConnectionTypeForVpn()Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;->underlyingTypeForVpn:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    return-object v0
.end method
