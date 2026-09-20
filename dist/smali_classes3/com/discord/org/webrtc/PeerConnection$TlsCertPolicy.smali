.class public final enum Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;
.super Ljava/lang/Enum;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TlsCertPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

.field public static final enum TLS_CERT_POLICY_INSECURE_NO_CHECK:Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

.field public static final enum TLS_CERT_POLICY_SECURE:Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;


# direct methods
.method private static synthetic $values()[Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    const/4 v1, 0x0

    .line 79
    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;->TLS_CERT_POLICY_SECURE:Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;->TLS_CERT_POLICY_INSECURE_NO_CHECK:Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 80
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    const-string v1, "TLS_CERT_POLICY_SECURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;->TLS_CERT_POLICY_SECURE:Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    .line 81
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    const-string v1, "TLS_CERT_POLICY_INSECURE_NO_CHECK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;->TLS_CERT_POLICY_INSECURE_NO_CHECK:Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    .line 79
    invoke-static {}, Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;->$values()[Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;->$VALUES:[Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;
    .locals 1

    .line 79
    const-class v0, Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    return-object p0
.end method

.method public static values()[Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;
    .locals 1

    .line 79
    sget-object v0, Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;->$VALUES:[Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    invoke-virtual {v0}, [Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/PeerConnection$TlsCertPolicy;

    return-object v0
.end method
