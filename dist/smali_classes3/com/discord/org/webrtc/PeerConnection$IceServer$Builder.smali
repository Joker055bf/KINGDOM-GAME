.class public Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;
.super Ljava/lang/Object;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/PeerConnection$IceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private hostname:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private tlsAlpnProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tlsCertPolicy:Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

.field private tlsEllipticCurves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private username:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 285
    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;->username:Ljava/lang/String;

    .line 286
    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;->password:Ljava/lang/String;

    .line 287
    sget-object v1, Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;->TLS_CERT_POLICY_SECURE:Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    iput-object v1, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;->tlsCertPolicy:Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    .line 288
    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;->hostname:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 293
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;->urls:Ljava/util/List;

    return-void

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "urls == null || urls.isEmpty(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public createIceServer()Lcom/discord/org/webrtc/PeerConnection$IceServer;
    .locals 11

    .line 330
    new-instance v10, Lcom/discord/org/webrtc/PeerConnection$IceServer;

    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;->urls:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;->urls:Ljava/util/List;

    iget-object v3, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;->username:Ljava/lang/String;

    iget-object v4, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;->password:Ljava/lang/String;

    iget-object v5, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;->tlsCertPolicy:Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    iget-object v6, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;->hostname:Ljava/lang/String;

    iget-object v7, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;->tlsAlpnProtocols:Ljava/util/List;

    iget-object v8, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;->tlsEllipticCurves:Ljava/util/List;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/discord/org/webrtc/PeerConnection$IceServer;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/discord/org/webrtc/PeerConnection$IceServer-IA;)V

    return-object v10
.end method

.method public setHostname(Ljava/lang/String;)Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;->hostname:Ljava/lang/String;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;->password:Ljava/lang/String;

    return-object p0
.end method

.method public setTlsAlpnProtocols(Ljava/util/List;)Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;"
        }
    .end annotation

    .line 320
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;->tlsAlpnProtocols:Ljava/util/List;

    return-object p0
.end method

.method public setTlsCertPolicy(Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;)Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;->tlsCertPolicy:Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    return-object p0
.end method

.method public setTlsEllipticCurves(Ljava/util/List;)Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;->tlsEllipticCurves:Ljava/util/List;

    return-object p0
.end method

.method public setUsername(Ljava/lang/String;)Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;->username:Ljava/lang/String;

    return-object p0
.end method
