.class public abstract Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;
.super Ljava/lang/Object;
.source "NetworkChangeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/NetworkChangeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Observer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFieldTrialsString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public abstract onConnectionTypeChanged(Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;)V
.end method

.method public abstract onNetworkConnect(Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;)V
.end method

.method public abstract onNetworkDisconnect(J)V
.end method

.method public abstract onNetworkPreference(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;",
            ">;I)V"
        }
    .end annotation
.end method
