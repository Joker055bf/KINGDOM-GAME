.class public Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;
.super Ljava/lang/Object;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RTCConfiguration"
.end annotation


# instance fields
.field public activeResetSrtpParams:Z

.field public audioJitterBufferFastAccelerate:Z

.field public audioJitterBufferMaxPackets:I

.field public bundlePolicy:Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;

.field public candidateNetworkPolicy:Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;

.field public certificate:Lcom/discord/org/webrtc/RtcCertificatePem;

.field public continualGatheringPolicy:Lcom/discord/org/webrtc/PeerConnection$ContinualGatheringPolicy;

.field public cryptoOptions:Lcom/discord/org/webrtc/CryptoOptions;

.field public disableIPv6OnWifi:Z

.field public enableCpuOveruseDetection:Z

.field public enableDscp:Z

.field public enableImplicitRollback:Z

.field public iceBackupCandidatePairPingInterval:I

.field public iceCandidatePoolSize:I

.field public iceCheckIntervalStrongConnectivityMs:Ljava/lang/Integer;

.field public iceCheckIntervalWeakConnectivityMs:Ljava/lang/Integer;

.field public iceCheckMinInterval:Ljava/lang/Integer;

.field public iceConnectionReceivingTimeout:I

.field public iceServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/PeerConnection$IceServer;",
            ">;"
        }
    .end annotation
.end field

.field public iceTransportsType:Lcom/discord/org/webrtc/PeerConnection$IceTransportsType;

.field public iceUnwritableMinChecks:Ljava/lang/Integer;

.field public iceUnwritableTimeMs:Ljava/lang/Integer;

.field public keyType:Lcom/discord/org/webrtc/PeerConnection$KeyType;

.field public maxIPv6Networks:I

.field public networkPreference:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

.field public offerExtmapAllowMixed:Z

.field public portAllocatorFlags:I

.field public presumeWritableWhenFullyRelayed:Z

.field public pruneTurnPorts:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public rtcpMuxPolicy:Lcom/discord/org/webrtc/PeerConnection$RtcpMuxPolicy;

.field public screencastMinBitrate:Ljava/lang/Integer;

.field public sdpSemantics:Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;

.field public stableWritableConnectionPingIntervalMs:Ljava/lang/Integer;

.field public stunCandidateKeepaliveIntervalMs:Ljava/lang/Integer;

.field public surfaceIceCandidatesOnIceTransportTypeChanged:Z

.field public suspendBelowMinBitrate:Z

.field public tcpCandidatePolicy:Lcom/discord/org/webrtc/PeerConnection$TcpCandidatePolicy;

.field public turnCustomizer:Lcom/discord/org/webrtc/TurnCustomizer;

.field public turnLoggingId:Ljava/lang/String;

.field public turnPortPrunePolicy:Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/PeerConnection$IceServer;",
            ">;)V"
        }
    .end annotation

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    sget-object v0, Lcom/discord/org/webrtc/PeerConnection$IceTransportsType;->ALL:Lcom/discord/org/webrtc/PeerConnection$IceTransportsType;

    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->iceTransportsType:Lcom/discord/org/webrtc/PeerConnection$IceTransportsType;

    .line 590
    sget-object v0, Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;->BALANCED:Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;

    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->bundlePolicy:Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;

    .line 591
    sget-object v0, Lcom/discord/org/webrtc/PeerConnection$RtcpMuxPolicy;->REQUIRE:Lcom/discord/org/webrtc/PeerConnection$RtcpMuxPolicy;

    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->rtcpMuxPolicy:Lcom/discord/org/webrtc/PeerConnection$RtcpMuxPolicy;

    .line 592
    sget-object v0, Lcom/discord/org/webrtc/PeerConnection$TcpCandidatePolicy;->ENABLED:Lcom/discord/org/webrtc/PeerConnection$TcpCandidatePolicy;

    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->tcpCandidatePolicy:Lcom/discord/org/webrtc/PeerConnection$TcpCandidatePolicy;

    .line 593
    sget-object v0, Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;->ALL:Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;

    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->candidateNetworkPolicy:Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;

    .line 594
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->iceServers:Ljava/util/List;

    const/16 p1, 0xc8

    .line 595
    iput p1, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->audioJitterBufferMaxPackets:I

    const/4 p1, 0x0

    .line 596
    iput-boolean p1, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->audioJitterBufferFastAccelerate:Z

    const/4 v0, -0x1

    .line 597
    iput v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->iceConnectionReceivingTimeout:I

    .line 598
    iput v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->iceBackupCandidatePairPingInterval:I

    .line 599
    sget-object v0, Lcom/discord/org/webrtc/PeerConnection$KeyType;->ECDSA:Lcom/discord/org/webrtc/PeerConnection$KeyType;

    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->keyType:Lcom/discord/org/webrtc/PeerConnection$KeyType;

    .line 600
    sget-object v0, Lcom/discord/org/webrtc/PeerConnection$ContinualGatheringPolicy;->GATHER_ONCE:Lcom/discord/org/webrtc/PeerConnection$ContinualGatheringPolicy;

    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->continualGatheringPolicy:Lcom/discord/org/webrtc/PeerConnection$ContinualGatheringPolicy;

    .line 601
    iput p1, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->iceCandidatePoolSize:I

    .line 602
    iput-boolean p1, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->pruneTurnPorts:Z

    .line 603
    sget-object v0, Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;->NO_PRUNE:Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;

    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->turnPortPrunePolicy:Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;

    .line 604
    iput-boolean p1, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->presumeWritableWhenFullyRelayed:Z

    .line 605
    iput-boolean p1, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->surfaceIceCandidatesOnIceTransportTypeChanged:Z

    const/4 v0, 0x0

    .line 606
    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->iceCheckIntervalStrongConnectivityMs:Ljava/lang/Integer;

    .line 607
    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->iceCheckIntervalWeakConnectivityMs:Ljava/lang/Integer;

    .line 608
    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->iceCheckMinInterval:Ljava/lang/Integer;

    .line 609
    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->iceUnwritableTimeMs:Ljava/lang/Integer;

    .line 610
    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->iceUnwritableMinChecks:Ljava/lang/Integer;

    .line 611
    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->stunCandidateKeepaliveIntervalMs:Ljava/lang/Integer;

    .line 612
    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->stableWritableConnectionPingIntervalMs:Ljava/lang/Integer;

    .line 613
    iput-boolean p1, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->disableIPv6OnWifi:Z

    const/4 v1, 0x5

    .line 614
    iput v1, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->maxIPv6Networks:I

    .line 615
    iput-boolean p1, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->enableDscp:Z

    const/4 v1, 0x1

    .line 616
    iput-boolean v1, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->enableCpuOveruseDetection:Z

    .line 617
    iput-boolean p1, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->suspendBelowMinBitrate:Z

    .line 618
    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->screencastMinBitrate:Ljava/lang/Integer;

    .line 619
    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->UNKNOWN:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    iput-object v2, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->networkPreference:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    .line 620
    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;->UNIFIED_PLAN:Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;

    iput-object v2, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->sdpSemantics:Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;

    .line 621
    iput-boolean p1, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->activeResetSrtpParams:Z

    .line 622
    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->cryptoOptions:Lcom/discord/org/webrtc/CryptoOptions;

    .line 623
    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->turnLoggingId:Ljava/lang/String;

    .line 624
    iput-boolean p1, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->enableImplicitRollback:Z

    .line 625
    iput-boolean v1, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->offerExtmapAllowMixed:Z

    .line 626
    iput p1, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->portAllocatorFlags:I

    return-void
.end method


# virtual methods
.method getActiveResetSrtpParams()Z
    .locals 1

    .line 811
    iget-boolean v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->activeResetSrtpParams:Z

    return v0
.end method

.method getAudioJitterBufferFastAccelerate()Z
    .locals 1

    .line 677
    iget-boolean v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->audioJitterBufferFastAccelerate:Z

    return v0
.end method

.method getAudioJitterBufferMaxPackets()I
    .locals 1

    .line 672
    iget v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->audioJitterBufferMaxPackets:I

    return v0
.end method

.method getBundlePolicy()Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->bundlePolicy:Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;

    return-object v0
.end method

.method getCandidateNetworkPolicy()Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->candidateNetworkPolicy:Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;

    return-object v0
.end method

.method getCertificate()Lcom/discord/org/webrtc/RtcCertificatePem;
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->certificate:Lcom/discord/org/webrtc/RtcCertificatePem;

    return-object v0
.end method

.method getContinualGatheringPolicy()Lcom/discord/org/webrtc/PeerConnection$ContinualGatheringPolicy;
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->continualGatheringPolicy:Lcom/discord/org/webrtc/PeerConnection$ContinualGatheringPolicy;

    return-object v0
.end method

.method getCryptoOptions()Lcom/discord/org/webrtc/CryptoOptions;
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->cryptoOptions:Lcom/discord/org/webrtc/CryptoOptions;

    return-object v0
.end method

.method getDisableIPv6OnWifi()Z
    .locals 1

    .line 764
    iget-boolean v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->disableIPv6OnWifi:Z

    return v0
.end method

.method getEnableCpuOveruseDetection()Z
    .locals 1

    .line 785
    iget-boolean v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->enableCpuOveruseDetection:Z

    return v0
.end method

.method getEnableDscp()Z
    .locals 1

    .line 780
    iget-boolean v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->enableDscp:Z

    return v0
.end method

.method getEnableImplicitRollback()Z
    .locals 1

    .line 828
    iget-boolean v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->enableImplicitRollback:Z

    return v0
.end method

.method getIceBackupCandidatePairPingInterval()I
    .locals 1

    .line 687
    iget v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->iceBackupCandidatePairPingInterval:I

    return v0
.end method

.method getIceCandidatePoolSize()I
    .locals 1

    .line 702
    iget v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->iceCandidatePoolSize:I

    return v0
.end method

.method getIceCheckIntervalStrongConnectivity()Ljava/lang/Integer;
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->iceCheckIntervalStrongConnectivityMs:Ljava/lang/Integer;

    return-object v0
.end method

.method getIceCheckIntervalWeakConnectivity()Ljava/lang/Integer;
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->iceCheckIntervalWeakConnectivityMs:Ljava/lang/Integer;

    return-object v0
.end method

.method getIceCheckMinInterval()Ljava/lang/Integer;
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->iceCheckMinInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method getIceConnectionReceivingTimeout()I
    .locals 1

    .line 682
    iget v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->iceConnectionReceivingTimeout:I

    return v0
.end method

.method getIceServers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/PeerConnection$IceServer;",
            ">;"
        }
    .end annotation

    .line 636
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->iceServers:Ljava/util/List;

    return-object v0
.end method

.method getIceTransportsType()Lcom/discord/org/webrtc/PeerConnection$IceTransportsType;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->iceTransportsType:Lcom/discord/org/webrtc/PeerConnection$IceTransportsType;

    return-object v0
.end method

.method getIceUnwritableMinChecks()Ljava/lang/Integer;
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->iceUnwritableMinChecks:Ljava/lang/Integer;

    return-object v0
.end method

.method getIceUnwritableTimeout()Ljava/lang/Integer;
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->iceUnwritableTimeMs:Ljava/lang/Integer;

    return-object v0
.end method

.method getKeyType()Lcom/discord/org/webrtc/PeerConnection$KeyType;
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->keyType:Lcom/discord/org/webrtc/PeerConnection$KeyType;

    return-object v0
.end method

.method getMaxIPv6Networks()I
    .locals 1

    .line 769
    iget v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->maxIPv6Networks:I

    return v0
.end method

.method getNetworkPreference()Lcom/discord/org/webrtc/PeerConnection$AdapterType;
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->networkPreference:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    return-object v0
.end method

.method getOfferExtmapAllowMixed()Z
    .locals 1

    .line 833
    iget-boolean v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->offerExtmapAllowMixed:Z

    return v0
.end method

.method getPortAllocatorFlags()I
    .locals 1

    .line 839
    iget v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->portAllocatorFlags:I

    return v0
.end method

.method getPresumeWritableWhenFullyRelayed()Z
    .locals 1

    .line 712
    iget-boolean v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->presumeWritableWhenFullyRelayed:Z

    return v0
.end method

.method getPruneTurnPorts()Z
    .locals 1

    .line 707
    iget-boolean v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->pruneTurnPorts:Z

    return v0
.end method

.method getRtcpMuxPolicy()Lcom/discord/org/webrtc/PeerConnection$RtcpMuxPolicy;
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->rtcpMuxPolicy:Lcom/discord/org/webrtc/PeerConnection$RtcpMuxPolicy;

    return-object v0
.end method

.method getScreencastMinBitrate()Ljava/lang/Integer;
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->screencastMinBitrate:Ljava/lang/Integer;

    return-object v0
.end method

.method getSdpSemantics()Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->sdpSemantics:Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;

    return-object v0
.end method

.method getStableWritableConnectionPingIntervalMs()Ljava/lang/Integer;
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->stableWritableConnectionPingIntervalMs:Ljava/lang/Integer;

    return-object v0
.end method

.method getStunCandidateKeepaliveInterval()Ljava/lang/Integer;
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->stunCandidateKeepaliveIntervalMs:Ljava/lang/Integer;

    return-object v0
.end method

.method getSurfaceIceCandidatesOnIceTransportTypeChanged()Z
    .locals 1

    .line 717
    iget-boolean v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->surfaceIceCandidatesOnIceTransportTypeChanged:Z

    return v0
.end method

.method getSuspendBelowMinBitrate()Z
    .locals 1

    .line 790
    iget-boolean v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->suspendBelowMinBitrate:Z

    return v0
.end method

.method getTcpCandidatePolicy()Lcom/discord/org/webrtc/PeerConnection$TcpCandidatePolicy;
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->tcpCandidatePolicy:Lcom/discord/org/webrtc/PeerConnection$TcpCandidatePolicy;

    return-object v0
.end method

.method getTurnCustomizer()Lcom/discord/org/webrtc/TurnCustomizer;
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->turnCustomizer:Lcom/discord/org/webrtc/TurnCustomizer;

    return-object v0
.end method

.method getTurnLoggingId()Ljava/lang/String;
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->turnLoggingId:Ljava/lang/String;

    return-object v0
.end method

.method getTurnPortPrunePolicy()Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$RTCConfiguration;->turnPortPrunePolicy:Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;

    return-object v0
.end method
