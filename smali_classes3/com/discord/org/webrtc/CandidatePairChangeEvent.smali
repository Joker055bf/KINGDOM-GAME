.class public final Lcom/discord/org/webrtc/CandidatePairChangeEvent;
.super Ljava/lang/Object;
.source "CandidatePairChangeEvent.java"


# instance fields
.field public final estimatedDisconnectedTimeMs:I

.field public final lastDataReceivedMs:I

.field public final local:Lcom/discord/org/webrtc/IceCandidate;

.field public final reason:Ljava/lang/String;

.field public final remote:Lcom/discord/org/webrtc/IceCandidate;


# direct methods
.method constructor <init>(Lcom/discord/org/webrtc/IceCandidate;Lcom/discord/org/webrtc/IceCandidate;ILjava/lang/String;I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/discord/org/webrtc/CandidatePairChangeEvent;->local:Lcom/discord/org/webrtc/IceCandidate;

    .line 34
    iput-object p2, p0, Lcom/discord/org/webrtc/CandidatePairChangeEvent;->remote:Lcom/discord/org/webrtc/IceCandidate;

    .line 35
    iput p3, p0, Lcom/discord/org/webrtc/CandidatePairChangeEvent;->lastDataReceivedMs:I

    .line 36
    iput-object p4, p0, Lcom/discord/org/webrtc/CandidatePairChangeEvent;->reason:Ljava/lang/String;

    .line 37
    iput p5, p0, Lcom/discord/org/webrtc/CandidatePairChangeEvent;->estimatedDisconnectedTimeMs:I

    return-void
.end method
