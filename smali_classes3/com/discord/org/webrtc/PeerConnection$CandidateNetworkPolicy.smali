.class public final enum Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;
.super Ljava/lang/Enum;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CandidateNetworkPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;

.field public static final enum ALL:Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;

.field public static final enum LOW_COST:Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;


# direct methods
.method private static synthetic $values()[Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;

    const/4 v1, 0x0

    .line 388
    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;->ALL:Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;->LOW_COST:Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 388
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;->ALL:Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;

    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;

    const-string v1, "LOW_COST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;->LOW_COST:Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;

    invoke-static {}, Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;->$values()[Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;->$VALUES:[Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 388
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;
    .locals 1

    .line 388
    const-class v0, Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;

    return-object p0
.end method

.method public static values()[Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;
    .locals 1

    .line 388
    sget-object v0, Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;->$VALUES:[Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;

    invoke-virtual {v0}, [Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/PeerConnection$CandidateNetworkPolicy;

    return-object v0
.end method
