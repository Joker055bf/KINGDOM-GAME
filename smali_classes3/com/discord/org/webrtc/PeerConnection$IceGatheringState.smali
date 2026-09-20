.class public final enum Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;
.super Ljava/lang/Enum;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IceGatheringState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;

.field public static final enum COMPLETE:Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;

.field public static final enum GATHERING:Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;

.field public static final enum NEW:Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;


# direct methods
.method private static synthetic $values()[Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;

    const/4 v1, 0x0

    .line 36
    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;->NEW:Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;->GATHERING:Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;->COMPLETE:Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;

    const-string v1, "NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;->NEW:Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;

    .line 38
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;

    const-string v1, "GATHERING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;->GATHERING:Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;

    .line 39
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;

    const-string v1, "COMPLETE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;->COMPLETE:Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;

    .line 36
    invoke-static {}, Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;->$values()[Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;->$VALUES:[Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static fromNativeIndex(I)Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;
    .locals 1

    .line 43
    invoke-static {}, Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;->values()[Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;
    .locals 1

    .line 36
    const-class v0, Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;

    return-object p0
.end method

.method public static values()[Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;
    .locals 1

    .line 36
    sget-object v0, Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;->$VALUES:[Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;

    invoke-virtual {v0}, [Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/PeerConnection$IceGatheringState;

    return-object v0
.end method
