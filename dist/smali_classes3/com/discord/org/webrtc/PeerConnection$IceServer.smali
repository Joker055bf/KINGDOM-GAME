.class public Lcom/discord/org/webrtc/PeerConnection$IceServer;
.super Ljava/lang/Object;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IceServer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;
    }
.end annotation


# instance fields
.field public final hostname:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public final tlsAlpnProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final tlsCertPolicy:Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

.field public final tlsEllipticCurves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final uri:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    .line 194
    invoke-direct {p0, p1, v0, v0}, Lcom/discord/org/webrtc/PeerConnection$IceServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    sget-object v0, Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;->TLS_CERT_POLICY_SECURE:Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/discord/org/webrtc/PeerConnection$IceServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 204
    invoke-direct/range {v0 .. v5}, Lcom/discord/org/webrtc/PeerConnection$IceServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/discord/org/webrtc/PeerConnection$IceServer;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 217
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 220
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "urls element is null: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    if-eqz p6, :cond_2

    .line 234
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->uri:Ljava/lang/String;

    .line 235
    iput-object p2, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->urls:Ljava/util/List;

    .line 236
    iput-object p3, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->username:Ljava/lang/String;

    .line 237
    iput-object p4, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->password:Ljava/lang/String;

    .line 238
    iput-object p5, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->tlsCertPolicy:Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    .line 239
    iput-object p6, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->hostname:Ljava/lang/String;

    .line 240
    iput-object p7, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->tlsAlpnProtocols:Ljava/util/List;

    .line 241
    iput-object p8, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->tlsEllipticCurves:Ljava/util/List;

    return-void

    .line 232
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "hostname == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 229
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "password == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "username == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 218
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "uri == null || urls == null || urls.isEmpty()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/discord/org/webrtc/PeerConnection$IceServer-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/discord/org/webrtc/PeerConnection$IceServer;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static builder(Ljava/lang/String;)Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;
    .locals 2

    .line 276
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;-><init>(Ljava/util/List;Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder-IA;)V

    return-object v0
.end method

.method public static builder(Ljava/util/List;)Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;"
        }
    .end annotation

    .line 280
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder;-><init>(Ljava/util/List;Lcom/discord/org/webrtc/PeerConnection$IceServer$Builder-IA;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 258
    :cond_1
    instance-of v2, p1, Lcom/discord/org/webrtc/PeerConnection$IceServer;

    if-nez v2, :cond_2

    return v0

    .line 261
    :cond_2
    check-cast p1, Lcom/discord/org/webrtc/PeerConnection$IceServer;

    .line 262
    iget-object v2, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->uri:Ljava/lang/String;

    iget-object v3, p1, Lcom/discord/org/webrtc/PeerConnection$IceServer;->uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->urls:Ljava/util/List;

    iget-object v3, p1, Lcom/discord/org/webrtc/PeerConnection$IceServer;->urls:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->username:Ljava/lang/String;

    iget-object v3, p1, Lcom/discord/org/webrtc/PeerConnection$IceServer;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->password:Ljava/lang/String;

    iget-object v3, p1, Lcom/discord/org/webrtc/PeerConnection$IceServer;->password:Ljava/lang/String;

    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->tlsCertPolicy:Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    iget-object v3, p1, Lcom/discord/org/webrtc/PeerConnection$IceServer;->tlsCertPolicy:Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    invoke-virtual {v2, v3}, Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->hostname:Ljava/lang/String;

    iget-object v3, p1, Lcom/discord/org/webrtc/PeerConnection$IceServer;->hostname:Ljava/lang/String;

    .line 264
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->tlsAlpnProtocols:Ljava/util/List;

    iget-object v3, p1, Lcom/discord/org/webrtc/PeerConnection$IceServer;->tlsAlpnProtocols:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->tlsEllipticCurves:Ljava/util/List;

    iget-object p1, p1, Lcom/discord/org/webrtc/PeerConnection$IceServer;->tlsEllipticCurves:Ljava/util/List;

    .line 265
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method getHostname()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method getPassword()Ljava/lang/String;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->password:Ljava/lang/String;

    return-object v0
.end method

.method getTlsAlpnProtocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->tlsAlpnProtocols:Ljava/util/List;

    return-object v0
.end method

.method getTlsCertPolicy()Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->tlsCertPolicy:Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    return-object v0
.end method

.method getTlsEllipticCurves()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->tlsEllipticCurves:Ljava/util/List;

    return-object v0
.end method

.method getUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->urls:Ljava/util/List;

    return-object v0
.end method

.method getUsername()Ljava/lang/String;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 270
    iget-object v2, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->uri:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->urls:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->username:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->password:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->tlsCertPolicy:Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->hostname:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->tlsAlpnProtocols:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->tlsEllipticCurves:Ljava/util/List;

    aput-object v2, v0, v1

    .line 272
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 246
    iget-object v0, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->urls:Ljava/util/List;

    iget-object v1, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->tlsCertPolicy:Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    iget-object v4, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->hostname:Ljava/lang/String;

    iget-object v5, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->tlsAlpnProtocols:Ljava/util/List;

    iget-object v6, p0, Lcom/discord/org/webrtc/PeerConnection$IceServer;->tlsEllipticCurves:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " ["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
