.class public Lcom/discord/org/webrtc/PeerConnectionDependencies$Builder;
.super Ljava/lang/Object;
.source "PeerConnectionDependencies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/PeerConnectionDependencies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private observer:Lcom/discord/org/webrtc/PeerConnection$Observer;

.field private sslCertificateVerifier:Lcom/discord/org/webrtc/SSLCertificateVerifier;


# direct methods
.method private constructor <init>(Lcom/discord/org/webrtc/PeerConnection$Observer;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnectionDependencies$Builder;->observer:Lcom/discord/org/webrtc/PeerConnection$Observer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/discord/org/webrtc/PeerConnection$Observer;Lcom/discord/org/webrtc/PeerConnectionDependencies$Builder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/PeerConnectionDependencies$Builder;-><init>(Lcom/discord/org/webrtc/PeerConnection$Observer;)V

    return-void
.end method


# virtual methods
.method public createPeerConnectionDependencies()Lcom/discord/org/webrtc/PeerConnectionDependencies;
    .locals 4

    .line 43
    new-instance v0, Lcom/discord/org/webrtc/PeerConnectionDependencies;

    iget-object v1, p0, Lcom/discord/org/webrtc/PeerConnectionDependencies$Builder;->observer:Lcom/discord/org/webrtc/PeerConnection$Observer;

    iget-object v2, p0, Lcom/discord/org/webrtc/PeerConnectionDependencies$Builder;->sslCertificateVerifier:Lcom/discord/org/webrtc/SSLCertificateVerifier;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/discord/org/webrtc/PeerConnectionDependencies;-><init>(Lcom/discord/org/webrtc/PeerConnection$Observer;Lcom/discord/org/webrtc/SSLCertificateVerifier;Lcom/discord/org/webrtc/PeerConnectionDependencies-IA;)V

    return-object v0
.end method

.method public setSSLCertificateVerifier(Lcom/discord/org/webrtc/SSLCertificateVerifier;)Lcom/discord/org/webrtc/PeerConnectionDependencies$Builder;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnectionDependencies$Builder;->sslCertificateVerifier:Lcom/discord/org/webrtc/SSLCertificateVerifier;

    return-object p0
.end method
