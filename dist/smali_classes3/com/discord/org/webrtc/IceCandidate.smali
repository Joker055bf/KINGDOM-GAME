.class public Lcom/discord/org/webrtc/IceCandidate;
.super Ljava/lang/Object;
.source "IceCandidate.java"


# instance fields
.field public final adapterType:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

.field public final sdp:Ljava/lang/String;

.field public final sdpMLineIndex:I

.field public final sdpMid:Ljava/lang/String;

.field public final serverUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/discord/org/webrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    .line 30
    iput p2, p0, Lcom/discord/org/webrtc/IceCandidate;->sdpMLineIndex:I

    .line 31
    iput-object p3, p0, Lcom/discord/org/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    const-string p1, ""

    .line 32
    iput-object p1, p0, Lcom/discord/org/webrtc/IceCandidate;->serverUrl:Ljava/lang/String;

    .line 33
    sget-object p1, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->UNKNOWN:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    iput-object p1, p0, Lcom/discord/org/webrtc/IceCandidate;->adapterType:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/discord/org/webrtc/PeerConnection$AdapterType;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/discord/org/webrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcom/discord/org/webrtc/IceCandidate;->sdpMLineIndex:I

    .line 41
    iput-object p3, p0, Lcom/discord/org/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/discord/org/webrtc/IceCandidate;->serverUrl:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/discord/org/webrtc/IceCandidate;->adapterType:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    return-void
.end method

.method private static objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 84
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 65
    instance-of v0, p1, Lcom/discord/org/webrtc/IceCandidate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 69
    :cond_0
    check-cast p1, Lcom/discord/org/webrtc/IceCandidate;

    .line 70
    iget-object v0, p0, Lcom/discord/org/webrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    iget-object v2, p1, Lcom/discord/org/webrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/discord/org/webrtc/IceCandidate;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/discord/org/webrtc/IceCandidate;->sdpMLineIndex:I

    iget v2, p1, Lcom/discord/org/webrtc/IceCandidate;->sdpMLineIndex:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/discord/org/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    iget-object p1, p1, Lcom/discord/org/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    .line 71
    invoke-static {v0, p1}, Lcom/discord/org/webrtc/IceCandidate;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method getSdp()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/discord/org/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    return-object v0
.end method

.method getSdpMid()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/discord/org/webrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 76
    iget-object v2, p0, Lcom/discord/org/webrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/discord/org/webrtc/IceCandidate;->sdpMLineIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/discord/org/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 77
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 48
    iget-object v0, p0, Lcom/discord/org/webrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    iget v1, p0, Lcom/discord/org/webrtc/IceCandidate;->sdpMLineIndex:I

    iget-object v2, p0, Lcom/discord/org/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    iget-object v3, p0, Lcom/discord/org/webrtc/IceCandidate;->serverUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/discord/org/webrtc/IceCandidate;->adapterType:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    .line 49
    invoke-virtual {v4}, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
