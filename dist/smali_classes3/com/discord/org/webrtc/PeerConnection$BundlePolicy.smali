.class public final enum Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;
.super Ljava/lang/Enum;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BundlePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;

.field public static final enum BALANCED:Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;

.field public static final enum MAXBUNDLE:Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;

.field public static final enum MAXCOMPAT:Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;


# direct methods
.method private static synthetic $values()[Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;

    const/4 v1, 0x0

    .line 379
    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;->BALANCED:Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;->MAXBUNDLE:Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;->MAXCOMPAT:Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 379
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;

    const-string v1, "BALANCED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;->BALANCED:Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;

    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;

    const-string v1, "MAXBUNDLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;->MAXBUNDLE:Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;

    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;

    const-string v1, "MAXCOMPAT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;->MAXCOMPAT:Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;

    invoke-static {}, Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;->$values()[Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;->$VALUES:[Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 379
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;
    .locals 1

    .line 379
    const-class v0, Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;

    return-object p0
.end method

.method public static values()[Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;
    .locals 1

    .line 379
    sget-object v0, Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;->$VALUES:[Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;

    invoke-virtual {v0}, [Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/PeerConnection$BundlePolicy;

    return-object v0
.end method
