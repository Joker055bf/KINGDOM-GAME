.class public final enum Lcom/discord/org/webrtc/PeerConnection$SignalingState;
.super Ljava/lang/Enum;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignalingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/discord/org/webrtc/PeerConnection$SignalingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discord/org/webrtc/PeerConnection$SignalingState;

.field public static final enum CLOSED:Lcom/discord/org/webrtc/PeerConnection$SignalingState;

.field public static final enum HAVE_LOCAL_OFFER:Lcom/discord/org/webrtc/PeerConnection$SignalingState;

.field public static final enum HAVE_LOCAL_PRANSWER:Lcom/discord/org/webrtc/PeerConnection$SignalingState;

.field public static final enum HAVE_REMOTE_OFFER:Lcom/discord/org/webrtc/PeerConnection$SignalingState;

.field public static final enum HAVE_REMOTE_PRANSWER:Lcom/discord/org/webrtc/PeerConnection$SignalingState;

.field public static final enum STABLE:Lcom/discord/org/webrtc/PeerConnection$SignalingState;


# direct methods
.method private static synthetic $values()[Lcom/discord/org/webrtc/PeerConnection$SignalingState;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    const/4 v1, 0x0

    .line 85
    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$SignalingState;->STABLE:Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$SignalingState;->HAVE_LOCAL_OFFER:Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$SignalingState;->HAVE_LOCAL_PRANSWER:Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$SignalingState;->HAVE_REMOTE_OFFER:Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$SignalingState;->HAVE_REMOTE_PRANSWER:Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$SignalingState;->CLOSED:Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 86
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    const-string v1, "STABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/PeerConnection$SignalingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$SignalingState;->STABLE:Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    .line 87
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    const-string v1, "HAVE_LOCAL_OFFER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/PeerConnection$SignalingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$SignalingState;->HAVE_LOCAL_OFFER:Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    .line 88
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    const-string v1, "HAVE_LOCAL_PRANSWER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/PeerConnection$SignalingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$SignalingState;->HAVE_LOCAL_PRANSWER:Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    .line 89
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    const-string v1, "HAVE_REMOTE_OFFER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/PeerConnection$SignalingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$SignalingState;->HAVE_REMOTE_OFFER:Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    .line 90
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    const-string v1, "HAVE_REMOTE_PRANSWER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/PeerConnection$SignalingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$SignalingState;->HAVE_REMOTE_PRANSWER:Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    .line 91
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    const-string v1, "CLOSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/PeerConnection$SignalingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$SignalingState;->CLOSED:Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    .line 85
    invoke-static {}, Lcom/discord/org/webrtc/PeerConnection$SignalingState;->$values()[Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$SignalingState;->$VALUES:[Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static fromNativeIndex(I)Lcom/discord/org/webrtc/PeerConnection$SignalingState;
    .locals 1

    .line 95
    invoke-static {}, Lcom/discord/org/webrtc/PeerConnection$SignalingState;->values()[Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discord/org/webrtc/PeerConnection$SignalingState;
    .locals 1

    .line 85
    const-class v0, Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    return-object p0
.end method

.method public static values()[Lcom/discord/org/webrtc/PeerConnection$SignalingState;
    .locals 1

    .line 85
    sget-object v0, Lcom/discord/org/webrtc/PeerConnection$SignalingState;->$VALUES:[Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    invoke-virtual {v0}, [Lcom/discord/org/webrtc/PeerConnection$SignalingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/PeerConnection$SignalingState;

    return-object v0
.end method
