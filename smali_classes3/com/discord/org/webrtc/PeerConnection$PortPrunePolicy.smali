.class public final enum Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;
.super Ljava/lang/Enum;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PortPrunePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;

.field public static final enum KEEP_FIRST_READY:Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;

.field public static final enum NO_PRUNE:Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;

.field public static final enum PRUNE_BASED_ON_PRIORITY:Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;


# direct methods
.method private static synthetic $values()[Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;

    const/4 v1, 0x0

    .line 429
    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;->NO_PRUNE:Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;->PRUNE_BASED_ON_PRIORITY:Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;->KEEP_FIRST_READY:Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 430
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;

    const-string v1, "NO_PRUNE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;->NO_PRUNE:Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;

    .line 431
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;

    const-string v1, "PRUNE_BASED_ON_PRIORITY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;->PRUNE_BASED_ON_PRIORITY:Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;

    .line 432
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;

    const-string v1, "KEEP_FIRST_READY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;->KEEP_FIRST_READY:Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;

    .line 429
    invoke-static {}, Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;->$values()[Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;->$VALUES:[Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 429
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;
    .locals 1

    .line 429
    const-class v0, Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;

    return-object p0
.end method

.method public static values()[Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;
    .locals 1

    .line 429
    sget-object v0, Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;->$VALUES:[Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;

    invoke-virtual {v0}, [Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/PeerConnection$PortPrunePolicy;

    return-object v0
.end method
