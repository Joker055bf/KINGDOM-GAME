.class public final Lcom/discord/org/webrtc/PeerConnectionDependencies;
.super Ljava/lang/Object;
.source "PeerConnectionDependencies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/PeerConnectionDependencies$Builder;
    }
.end annotation


# instance fields
.field private final observer:Lcom/discord/org/webrtc/PeerConnection$Observer;

.field private final sslCertificateVerifier:Lcom/discord/org/webrtc/SSLCertificateVerifier;


# direct methods
.method private constructor <init>(Lcom/discord/org/webrtc/PeerConnection$Observer;Lcom/discord/org/webrtc/SSLCertificateVerifier;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnectionDependencies;->observer:Lcom/discord/org/webrtc/PeerConnection$Observer;

    .line 63
    iput-object p2, p0, Lcom/discord/org/webrtc/PeerConnectionDependencies;->sslCertificateVerifier:Lcom/discord/org/webrtc/SSLCertificateVerifier;

    return-void
.end method

.method synthetic constructor <init>(Lcom/discord/org/webrtc/PeerConnection$Observer;Lcom/discord/org/webrtc/SSLCertificateVerifier;Lcom/discord/org/webrtc/PeerConnectionDependencies-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/discord/org/webrtc/PeerConnectionDependencies;-><init>(Lcom/discord/org/webrtc/PeerConnection$Observer;Lcom/discord/org/webrtc/SSLCertificateVerifier;)V

    return-void
.end method

.method public static builder(Lcom/discord/org/webrtc/PeerConnection$Observer;)Lcom/discord/org/webrtc/PeerConnectionDependencies$Builder;
    .locals 2

    .line 48
    new-instance v0, Lcom/discord/org/webrtc/PeerConnectionDependencies$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/discord/org/webrtc/PeerConnectionDependencies$Builder;-><init>(Lcom/discord/org/webrtc/PeerConnection$Observer;Lcom/discord/org/webrtc/PeerConnectionDependencies$Builder-IA;)V

    return-object v0
.end method


# virtual methods
.method getObserver()Lcom/discord/org/webrtc/PeerConnection$Observer;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionDependencies;->observer:Lcom/discord/org/webrtc/PeerConnection$Observer;

    return-object v0
.end method

.method getSSLCertificateVerifier()Lcom/discord/org/webrtc/SSLCertificateVerifier;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionDependencies;->sslCertificateVerifier:Lcom/discord/org/webrtc/SSLCertificateVerifier;

    return-object v0
.end method
