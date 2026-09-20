.class public Lcom/discord/org/webrtc/PeerConnection;
.super Ljava/lang/Object;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;,
        Lcom/discord/org/webrtc/PeerConnection$SignalingState;,
        Lcom/discord/org/webrtc/PeerConnection$IceConnectionState;,
        Lcom/discord/org/webrtc/PeerConnection$PeerConnectionState;,
        Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;,
        Lcom/discord/org/webrtc/PeerConnection$Observer;,
        Lcom/discord/org/webrtc/PeerConnection$PortAllocatorFlags;,
        Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;,
        Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;,
        Lcom/discord/org/webrtc/PeerConnection$ContinualGatheringPolicy;,
        Lcom/discord/org/webrtc/PeerConnection$KeyType;,
        Lcom/discord/org/webrtc/PeerConnection$AdapterType;,
        Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;,
        Lcom/discord/org/webrtc/PeerConnection$TcpCandidatePolicy;,
        Lcom/discord/org/webrtc/PeerConnection$RtcpMuxPolicy;,
        Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;,
        Lcom/discord/org/webrtc/PeerConnection$IceTransportsType;,
        Lcom/discord/org/webrtc/PeerConnection$IceServer;,
        Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;
    }
.end annotation


# static fields
.field public static final PORTALLOCATOR_ENABLE_ANY_ADDRESS_PORTS:I = 0x8000


# instance fields
.field private final localStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/MediaStream;",
            ">;"
        }
    .end annotation
.end field

.field private final nativePeerConnection:J

.field private receivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/RtpReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private senders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/RtpSender;",
            ">;"
        }
    .end annotation
.end field

.field private transceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/RtpTransceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(J)V
    .locals 1

    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 843
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection;->localStreams:Ljava/util/List;

    .line 845
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection;->senders:Ljava/util/List;

    .line 846
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection;->receivers:Ljava/util/List;

    .line 847
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection;->transceivers:Ljava/util/List;

    .line 858
    iput-wide p1, p0, Lcom/discord/org/webrtc/PeerConnection;->nativePeerConnection:J

    return-void
.end method

.method public constructor <init>(Lcom/discord/org/webrtc/NativePeerConnectionFactory;)V
    .locals 2

    .line 854
    invoke-interface {p1}, Lcom/discord/org/webrtc/NativePeerConnectionFactory;->createNativePeerConnection()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/discord/org/webrtc/PeerConnection;-><init>(J)V

    return-void
.end method

.method public static createNativePeerConnectionObserver(Lcom/discord/org/webrtc/PeerConnection$Observer;)J
    .locals 2

    .line 1290
    invoke-static {p0}, Lcom/discord/org/webrtc/PeerConnection;->nativeCreatePeerConnectionObserver(Lcom/discord/org/webrtc/PeerConnection$Observer;)J

    move-result-wide v0

    return-wide v0
.end method

.method private native nativeAddIceCandidate(Ljava/lang/String;ILjava/lang/String;)Z
.end method

.method private native nativeAddIceCandidateWithObserver(Ljava/lang/String;ILjava/lang/String;Lcom/discord/org/webrtc/AddIceObserver;)V
.end method

.method private native nativeAddLocalStream(J)Z
.end method

.method private native nativeAddTrack(JLjava/util/List;)Lcom/discord/org/webrtc/RtpSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/discord/org/webrtc/RtpSender;"
        }
    .end annotation
.end method

.method private native nativeAddTransceiverOfType(Lcom/discord/org/webrtc/MediaStreamTrack$MediaType;Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;)Lcom/discord/org/webrtc/RtpTransceiver;
.end method

.method private native nativeAddTransceiverWithTrack(JLcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;)Lcom/discord/org/webrtc/RtpTransceiver;
.end method

.method private native nativeClose()V
.end method

.method private native nativeConnectionState()Lcom/discord/org/webrtc/PeerConnection$PeerConnectionState;
.end method

.method private native nativeCreateAnswer(Lcom/discord/org/webrtc/SdpObserver;Lcom/discord/org/webrtc/MediaConstraints;)V
.end method

.method private native nativeCreateDataChannel(Ljava/lang/String;Lcom/discord/org/webrtc/DataChannel$Init;)Lcom/discord/org/webrtc/DataChannel;
.end method

.method private native nativeCreateOffer(Lcom/discord/org/webrtc/SdpObserver;Lcom/discord/org/webrtc/MediaConstraints;)V
.end method

.method private static native nativeCreatePeerConnectionObserver(Lcom/discord/org/webrtc/PeerConnection$Observer;)J
.end method

.method private native nativeCreateSender(Ljava/lang/String;Ljava/lang/String;)Lcom/discord/org/webrtc/RtpSender;
.end method

.method private static native nativeFreeOwnedPeerConnection(J)V
.end method

.method private native nativeGetCertificate()Lcom/discord/org/webrtc/RtcCertificatePem;
.end method

.method private native nativeGetLocalDescription()Lcom/discord/org/webrtc/SessionDescription;
.end method

.method private native nativeGetNativePeerConnection()J
.end method

.method private native nativeGetReceivers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/RtpReceiver;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetRemoteDescription()Lcom/discord/org/webrtc/SessionDescription;
.end method

.method private native nativeGetSenders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/RtpSender;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetTransceivers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/RtpTransceiver;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeIceConnectionState()Lcom/discord/org/webrtc/PeerConnection$IceConnectionState;
.end method

.method private native nativeIceGatheringState()Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;
.end method

.method private native nativeNewGetStats(Lcom/discord/org/webrtc/RTCStatsCollectorCallback;)V
.end method

.method private native nativeNewGetStatsReceiver(JLcom/discord/org/webrtc/RTCStatsCollectorCallback;)V
.end method

.method private native nativeNewGetStatsSender(JLcom/discord/org/webrtc/RTCStatsCollectorCallback;)V
.end method

.method private native nativeOldGetStats(Lcom/discord/org/webrtc/StatsObserver;J)Z
.end method

.method private native nativeRemoveIceCandidates([Lcom/discord/org/webrtc/IceCandidate;)Z
.end method

.method private native nativeRemoveLocalStream(J)V
.end method

.method private native nativeRemoveTrack(J)Z
.end method

.method private native nativeRestartIce()V
.end method

.method private native nativeSetAudioPlayout(Z)V
.end method

.method private native nativeSetAudioRecording(Z)V
.end method

.method private native nativeSetBitrate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z
.end method

.method private native nativeSetConfiguration(Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;)Z
.end method

.method private native nativeSetLocalDescription(Lcom/discord/org/webrtc/SdpObserver;Lcom/discord/org/webrtc/SessionDescription;)V
.end method

.method private native nativeSetLocalDescriptionAutomatically(Lcom/discord/org/webrtc/SdpObserver;)V
.end method

.method private native nativeSetRemoteDescription(Lcom/discord/org/webrtc/SdpObserver;Lcom/discord/org/webrtc/SessionDescription;)V
.end method

.method private native nativeSignalingState()Lcom/discord/org/webrtc/PeerConnection$SignalingState;
.end method

.method private native nativeStartRtcEventLog(II)Z
.end method

.method private native nativeStopRtcEventLog()V
.end method


# virtual methods
.method public addIceCandidate(Lcom/discord/org/webrtc/IceCandidate;Lcom/discord/org/webrtc/AddIceObserver;)V
    .locals 2

    .line 936
    iget-object v0, p1, Lcom/discord/org/webrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    iget v1, p1, Lcom/discord/org/webrtc/IceCandidate;->sdpMLineIndex:I

    iget-object p1, p1, Lcom/discord/org/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/discord/org/webrtc/PeerConnection;->nativeAddIceCandidateWithObserver(Ljava/lang/String;ILjava/lang/String;Lcom/discord/org/webrtc/AddIceObserver;)V

    return-void
.end method

.method public addIceCandidate(Lcom/discord/org/webrtc/IceCandidate;)Z
    .locals 2

    .line 932
    iget-object v0, p1, Lcom/discord/org/webrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    iget v1, p1, Lcom/discord/org/webrtc/IceCandidate;->sdpMLineIndex:I

    iget-object p1, p1, Lcom/discord/org/webrtc/IceCandidate;->sdp:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/discord/org/webrtc/PeerConnection;->nativeAddIceCandidate(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public addStream(Lcom/discord/org/webrtc/MediaStream;)Z
    .locals 2

    .line 950
    invoke-virtual {p1}, Lcom/discord/org/webrtc/MediaStream;->getNativeMediaStream()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/discord/org/webrtc/PeerConnection;->nativeAddLocalStream(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection;->localStreams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public addTrack(Lcom/discord/org/webrtc/MediaStreamTrack;)Lcom/discord/org/webrtc/RtpSender;
    .locals 1

    .line 1067
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/discord/org/webrtc/PeerConnection;->addTrack(Lcom/discord/org/webrtc/MediaStreamTrack;Ljava/util/List;)Lcom/discord/org/webrtc/RtpSender;

    move-result-object p1

    return-object p1
.end method

.method public addTrack(Lcom/discord/org/webrtc/MediaStreamTrack;Ljava/util/List;)Lcom/discord/org/webrtc/RtpSender;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/discord/org/webrtc/MediaStreamTrack;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/discord/org/webrtc/RtpSender;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1074
    invoke-virtual {p1}, Lcom/discord/org/webrtc/MediaStreamTrack;->getNativeMediaStreamTrack()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/discord/org/webrtc/PeerConnection;->nativeAddTrack(JLjava/util/List;)Lcom/discord/org/webrtc/RtpSender;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1078
    iget-object p2, p0, Lcom/discord/org/webrtc/PeerConnection;->senders:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 1076
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "C++ addTrack failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1072
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "No MediaStreamTrack specified in addTrack."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTransceiver(Lcom/discord/org/webrtc/MediaStreamTrack$MediaType;)Lcom/discord/org/webrtc/RtpTransceiver;
    .locals 1

    .line 1141
    new-instance v0, Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;

    invoke-direct {v0}, Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/discord/org/webrtc/PeerConnection;->addTransceiver(Lcom/discord/org/webrtc/MediaStreamTrack$MediaType;Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;)Lcom/discord/org/webrtc/RtpTransceiver;

    move-result-object p1

    return-object p1
.end method

.method public addTransceiver(Lcom/discord/org/webrtc/MediaStreamTrack$MediaType;Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;)Lcom/discord/org/webrtc/RtpTransceiver;
    .locals 0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    .line 1150
    new-instance p2, Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;

    invoke-direct {p2}, Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;-><init>()V

    .line 1152
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/discord/org/webrtc/PeerConnection;->nativeAddTransceiverOfType(Lcom/discord/org/webrtc/MediaStreamTrack$MediaType;Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;)Lcom/discord/org/webrtc/RtpTransceiver;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1156
    iget-object p2, p0, Lcom/discord/org/webrtc/PeerConnection;->transceivers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 1154
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "C++ addTransceiver failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1147
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "No MediaType specified for addTransceiver."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTransceiver(Lcom/discord/org/webrtc/MediaStreamTrack;)Lcom/discord/org/webrtc/RtpTransceiver;
    .locals 1

    .line 1120
    new-instance v0, Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;

    invoke-direct {v0}, Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/discord/org/webrtc/PeerConnection;->addTransceiver(Lcom/discord/org/webrtc/MediaStreamTrack;Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;)Lcom/discord/org/webrtc/RtpTransceiver;

    move-result-object p1

    return-object p1
.end method

.method public addTransceiver(Lcom/discord/org/webrtc/MediaStreamTrack;Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;)Lcom/discord/org/webrtc/RtpTransceiver;
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    .line 1129
    new-instance p2, Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;

    invoke-direct {p2}, Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;-><init>()V

    .line 1132
    :cond_0
    invoke-virtual {p1}, Lcom/discord/org/webrtc/MediaStreamTrack;->getNativeMediaStreamTrack()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/discord/org/webrtc/PeerConnection;->nativeAddTransceiverWithTrack(JLcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;)Lcom/discord/org/webrtc/RtpTransceiver;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1136
    iget-object p2, p0, Lcom/discord/org/webrtc/PeerConnection;->transceivers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 1134
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "C++ addTransceiver failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1126
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "No MediaStreamTrack specified for addTransceiver."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 0

    .line 1238
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnection;->nativeClose()V

    return-void
.end method

.method public connectionState()Lcom/discord/org/webrtc/PeerConnection$PeerConnectionState;
    .locals 1

    .line 1230
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnection;->nativeConnectionState()Lcom/discord/org/webrtc/PeerConnection$PeerConnectionState;

    move-result-object v0

    return-object v0
.end method

.method public createAnswer(Lcom/discord/org/webrtc/SdpObserver;Lcom/discord/org/webrtc/MediaConstraints;)V
    .locals 0

    .line 883
    invoke-direct {p0, p1, p2}, Lcom/discord/org/webrtc/PeerConnection;->nativeCreateAnswer(Lcom/discord/org/webrtc/SdpObserver;Lcom/discord/org/webrtc/MediaConstraints;)V

    return-void
.end method

.method public createDataChannel(Ljava/lang/String;Lcom/discord/org/webrtc/DataChannel$Init;)Lcom/discord/org/webrtc/DataChannel;
    .locals 0

    .line 875
    invoke-direct {p0, p1, p2}, Lcom/discord/org/webrtc/PeerConnection;->nativeCreateDataChannel(Ljava/lang/String;Lcom/discord/org/webrtc/DataChannel$Init;)Lcom/discord/org/webrtc/DataChannel;

    move-result-object p1

    return-object p1
.end method

.method public createOffer(Lcom/discord/org/webrtc/SdpObserver;Lcom/discord/org/webrtc/MediaConstraints;)V
    .locals 0

    .line 879
    invoke-direct {p0, p1, p2}, Lcom/discord/org/webrtc/PeerConnection;->nativeCreateOffer(Lcom/discord/org/webrtc/SdpObserver;Lcom/discord/org/webrtc/MediaConstraints;)V

    return-void
.end method

.method public createSender(Ljava/lang/String;Ljava/lang/String;)Lcom/discord/org/webrtc/RtpSender;
    .locals 0

    .line 1009
    invoke-direct {p0, p1, p2}, Lcom/discord/org/webrtc/PeerConnection;->nativeCreateSender(Ljava/lang/String;Ljava/lang/String;)Lcom/discord/org/webrtc/RtpSender;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1011
    iget-object p2, p0, Lcom/discord/org/webrtc/PeerConnection;->senders:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public dispose()V
    .locals 4

    .line 1258
    invoke-virtual {p0}, Lcom/discord/org/webrtc/PeerConnection;->close()V

    .line 1259
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection;->localStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/discord/org/webrtc/MediaStream;

    .line 1260
    invoke-virtual {v1}, Lcom/discord/org/webrtc/MediaStream;->getNativeMediaStream()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/discord/org/webrtc/PeerConnection;->nativeRemoveLocalStream(J)V

    .line 1261
    invoke-virtual {v1}, Lcom/discord/org/webrtc/MediaStream;->dispose()V

    goto :goto_0

    .line 1263
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection;->localStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1264
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection;->senders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/discord/org/webrtc/RtpSender;

    .line 1265
    invoke-virtual {v1}, Lcom/discord/org/webrtc/RtpSender;->dispose()V

    goto :goto_1

    .line 1267
    :cond_1
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection;->senders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1268
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/discord/org/webrtc/RtpReceiver;

    .line 1269
    invoke-virtual {v1}, Lcom/discord/org/webrtc/RtpReceiver;->dispose()V

    goto :goto_2

    .line 1271
    :cond_2
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection;->transceivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/discord/org/webrtc/RtpTransceiver;

    .line 1272
    invoke-virtual {v1}, Lcom/discord/org/webrtc/RtpTransceiver;->dispose()V

    goto :goto_3

    .line 1274
    :cond_3
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection;->transceivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1275
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1276
    iget-wide v0, p0, Lcom/discord/org/webrtc/PeerConnection;->nativePeerConnection:J

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/PeerConnection;->nativeFreeOwnedPeerConnection(J)V

    return-void
.end method

.method public getCertificate()Lcom/discord/org/webrtc/RtcCertificatePem;
    .locals 1

    .line 871
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnection;->nativeGetCertificate()Lcom/discord/org/webrtc/RtcCertificatePem;

    move-result-object v0

    return-object v0
.end method

.method public getLocalDescription()Lcom/discord/org/webrtc/SessionDescription;
    .locals 1

    .line 863
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnection;->nativeGetLocalDescription()Lcom/discord/org/webrtc/SessionDescription;

    move-result-object v0

    return-object v0
.end method

.method getNativeOwnedPeerConnection()J
    .locals 2

    .line 1286
    iget-wide v0, p0, Lcom/discord/org/webrtc/PeerConnection;->nativePeerConnection:J

    return-wide v0
.end method

.method public getNativePeerConnection()J
    .locals 2

    .line 1281
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnection;->nativeGetNativePeerConnection()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReceivers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/RtpReceiver;",
            ">;"
        }
    .end annotation

    .line 1035
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/discord/org/webrtc/RtpReceiver;

    .line 1036
    invoke-virtual {v1}, Lcom/discord/org/webrtc/RtpReceiver;->dispose()V

    goto :goto_0

    .line 1038
    :cond_0
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnection;->nativeGetReceivers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection;->receivers:Ljava/util/List;

    .line 1039
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteDescription()Lcom/discord/org/webrtc/SessionDescription;
    .locals 1

    .line 867
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnection;->nativeGetRemoteDescription()Lcom/discord/org/webrtc/SessionDescription;

    move-result-object v0

    return-object v0
.end method

.method public getSenders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/RtpSender;",
            ">;"
        }
    .end annotation

    .line 1022
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection;->senders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/discord/org/webrtc/RtpSender;

    .line 1023
    invoke-virtual {v1}, Lcom/discord/org/webrtc/RtpSender;->dispose()V

    goto :goto_0

    .line 1025
    :cond_0
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnection;->nativeGetSenders()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection;->senders:Ljava/util/List;

    .line 1026
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStats(Lcom/discord/org/webrtc/RTCStatsCollectorCallback;)V
    .locals 0

    .line 1171
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/PeerConnection;->nativeNewGetStats(Lcom/discord/org/webrtc/RTCStatsCollectorCallback;)V

    return-void
.end method

.method public getStats(Lcom/discord/org/webrtc/RtpReceiver;Lcom/discord/org/webrtc/RTCStatsCollectorCallback;)V
    .locals 2

    .line 1187
    invoke-virtual {p1}, Lcom/discord/org/webrtc/RtpReceiver;->getNativeRtpReceiver()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/discord/org/webrtc/PeerConnection;->nativeNewGetStatsReceiver(JLcom/discord/org/webrtc/RTCStatsCollectorCallback;)V

    return-void
.end method

.method public getStats(Lcom/discord/org/webrtc/RtpSender;Lcom/discord/org/webrtc/RTCStatsCollectorCallback;)V
    .locals 2

    .line 1179
    invoke-virtual {p1}, Lcom/discord/org/webrtc/RtpSender;->getNativeRtpSender()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/discord/org/webrtc/PeerConnection;->nativeNewGetStatsSender(JLcom/discord/org/webrtc/RTCStatsCollectorCallback;)V

    return-void
.end method

.method public getStats(Lcom/discord/org/webrtc/StatsObserver;Lcom/discord/org/webrtc/MediaStreamTrack;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1163
    :cond_0
    invoke-virtual {p2}, Lcom/discord/org/webrtc/MediaStreamTrack;->getNativeMediaStreamTrack()J

    move-result-wide v0

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/discord/org/webrtc/PeerConnection;->nativeOldGetStats(Lcom/discord/org/webrtc/StatsObserver;J)Z

    move-result p1

    return p1
.end method

.method public getTransceivers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/RtpTransceiver;",
            ">;"
        }
    .end annotation

    .line 1049
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection;->transceivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/discord/org/webrtc/RtpTransceiver;

    .line 1050
    invoke-virtual {v1}, Lcom/discord/org/webrtc/RtpTransceiver;->dispose()V

    goto :goto_0

    .line 1052
    :cond_0
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnection;->nativeGetTransceivers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection;->transceivers:Ljava/util/List;

    .line 1053
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public iceConnectionState()Lcom/discord/org/webrtc/PeerConnection$IceConnectionState;
    .locals 1

    .line 1226
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnection;->nativeIceConnectionState()Lcom/discord/org/webrtc/PeerConnection$IceConnectionState;

    move-result-object v0

    return-object v0
.end method

.method public iceGatheringState()Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;
    .locals 1

    .line 1234
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnection;->nativeIceGatheringState()Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;

    move-result-object v0

    return-object v0
.end method

.method public removeIceCandidates([Lcom/discord/org/webrtc/IceCandidate;)Z
    .locals 0

    .line 941
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/PeerConnection;->nativeRemoveIceCandidates([Lcom/discord/org/webrtc/IceCandidate;)Z

    move-result p1

    return p1
.end method

.method public removeStream(Lcom/discord/org/webrtc/MediaStream;)V
    .locals 2

    .line 964
    invoke-virtual {p1}, Lcom/discord/org/webrtc/MediaStream;->getNativeMediaStream()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/discord/org/webrtc/PeerConnection;->nativeRemoveLocalStream(J)V

    .line 965
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection;->localStreams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTrack(Lcom/discord/org/webrtc/RtpSender;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1091
    invoke-virtual {p1}, Lcom/discord/org/webrtc/RtpSender;->getNativeRtpSender()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/discord/org/webrtc/PeerConnection;->nativeRemoveTrack(J)Z

    move-result p1

    return p1

    .line 1089
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "No RtpSender specified for removeTrack."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public restartIce()V
    .locals 0

    .line 902
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnection;->nativeRestartIce()V

    return-void
.end method

.method public setAudioPlayout(Z)V
    .locals 0

    .line 913
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/PeerConnection;->nativeSetAudioPlayout(Z)V

    return-void
.end method

.method public setAudioRecording(Z)V
    .locals 0

    .line 924
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/PeerConnection;->nativeSetAudioRecording(Z)V

    return-void
.end method

.method public setBitrate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 0

    .line 1195
    invoke-direct {p0, p1, p2, p3}, Lcom/discord/org/webrtc/PeerConnection;->nativeSetBitrate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public setConfiguration(Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;)Z
    .locals 0

    .line 928
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/PeerConnection;->nativeSetConfiguration(Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;)Z

    move-result p1

    return p1
.end method

.method public setLocalDescription(Lcom/discord/org/webrtc/SdpObserver;)V
    .locals 0

    .line 887
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/PeerConnection;->nativeSetLocalDescriptionAutomatically(Lcom/discord/org/webrtc/SdpObserver;)V

    return-void
.end method

.method public setLocalDescription(Lcom/discord/org/webrtc/SdpObserver;Lcom/discord/org/webrtc/SessionDescription;)V
    .locals 0

    .line 891
    invoke-direct {p0, p1, p2}, Lcom/discord/org/webrtc/PeerConnection;->nativeSetLocalDescription(Lcom/discord/org/webrtc/SdpObserver;Lcom/discord/org/webrtc/SessionDescription;)V

    return-void
.end method

.method public setRemoteDescription(Lcom/discord/org/webrtc/SdpObserver;Lcom/discord/org/webrtc/SessionDescription;)V
    .locals 0

    .line 895
    invoke-direct {p0, p1, p2}, Lcom/discord/org/webrtc/PeerConnection;->nativeSetRemoteDescription(Lcom/discord/org/webrtc/SdpObserver;Lcom/discord/org/webrtc/SessionDescription;)V

    return-void
.end method

.method public signalingState()Lcom/discord/org/webrtc/PeerConnection$SignalingState;
    .locals 1

    .line 1222
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnection;->nativeSignalingState()Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    move-result-object v0

    return-object v0
.end method

.method public startRtcEventLog(II)Z
    .locals 0

    .line 1208
    invoke-direct {p0, p1, p2}, Lcom/discord/org/webrtc/PeerConnection;->nativeStartRtcEventLog(II)Z

    move-result p1

    return p1
.end method

.method public stopRtcEventLog()V
    .locals 0

    .line 1216
    invoke-direct {p0}, Lcom/discord/org/webrtc/PeerConnection;->nativeStopRtcEventLog()V

    return-void
.end method
