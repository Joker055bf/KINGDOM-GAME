.class public final enum Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;
.super Ljava/lang/Enum;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SdpSemantics"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;

.field public static final enum PLAN_B:Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum UNIFIED_PLAN:Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;


# direct methods
.method private static synthetic $values()[Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;

    const/4 v1, 0x0

    .line 456
    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;->PLAN_B:Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;->UNIFIED_PLAN:Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 458
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;

    const-string v1, "PLAN_B"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;->PLAN_B:Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;

    .line 459
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;

    const-string v1, "UNIFIED_PLAN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;->UNIFIED_PLAN:Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;

    .line 456
    invoke-static {}, Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;->$values()[Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;->$VALUES:[Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 456
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;
    .locals 1

    .line 456
    const-class v0, Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;

    return-object p0
.end method

.method public static values()[Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;
    .locals 1

    .line 456
    sget-object v0, Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;->$VALUES:[Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;

    invoke-virtual {v0}, [Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/PeerConnection$SdpSemantics;

    return-object v0
.end method
