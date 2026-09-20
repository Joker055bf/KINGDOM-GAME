.class public final enum Lcom/discord/org/webrtc/RendererCommon$ScalingType;
.super Ljava/lang/Enum;
.source "RendererCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/RendererCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScalingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/discord/org/webrtc/RendererCommon$ScalingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discord/org/webrtc/RendererCommon$ScalingType;

.field public static final enum SCALE_ASPECT_BALANCED:Lcom/discord/org/webrtc/RendererCommon$ScalingType;

.field public static final enum SCALE_ASPECT_FILL:Lcom/discord/org/webrtc/RendererCommon$ScalingType;

.field public static final enum SCALE_ASPECT_FIT:Lcom/discord/org/webrtc/RendererCommon$ScalingType;


# direct methods
.method private static synthetic $values()[Lcom/discord/org/webrtc/RendererCommon$ScalingType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/discord/org/webrtc/RendererCommon$ScalingType;

    const/4 v1, 0x0

    .line 127
    sget-object v2, Lcom/discord/org/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FIT:Lcom/discord/org/webrtc/RendererCommon$ScalingType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/discord/org/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FILL:Lcom/discord/org/webrtc/RendererCommon$ScalingType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/discord/org/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_BALANCED:Lcom/discord/org/webrtc/RendererCommon$ScalingType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 127
    new-instance v0, Lcom/discord/org/webrtc/RendererCommon$ScalingType;

    const-string v1, "SCALE_ASPECT_FIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/RendererCommon$ScalingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FIT:Lcom/discord/org/webrtc/RendererCommon$ScalingType;

    new-instance v0, Lcom/discord/org/webrtc/RendererCommon$ScalingType;

    const-string v1, "SCALE_ASPECT_FILL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/RendererCommon$ScalingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FILL:Lcom/discord/org/webrtc/RendererCommon$ScalingType;

    new-instance v0, Lcom/discord/org/webrtc/RendererCommon$ScalingType;

    const-string v1, "SCALE_ASPECT_BALANCED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/RendererCommon$ScalingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_BALANCED:Lcom/discord/org/webrtc/RendererCommon$ScalingType;

    invoke-static {}, Lcom/discord/org/webrtc/RendererCommon$ScalingType;->$values()[Lcom/discord/org/webrtc/RendererCommon$ScalingType;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/RendererCommon$ScalingType;->$VALUES:[Lcom/discord/org/webrtc/RendererCommon$ScalingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discord/org/webrtc/RendererCommon$ScalingType;
    .locals 1

    .line 127
    const-class v0, Lcom/discord/org/webrtc/RendererCommon$ScalingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/discord/org/webrtc/RendererCommon$ScalingType;

    return-object p0
.end method

.method public static values()[Lcom/discord/org/webrtc/RendererCommon$ScalingType;
    .locals 1

    .line 127
    sget-object v0, Lcom/discord/org/webrtc/RendererCommon$ScalingType;->$VALUES:[Lcom/discord/org/webrtc/RendererCommon$ScalingType;

    invoke-virtual {v0}, [Lcom/discord/org/webrtc/RendererCommon$ScalingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/RendererCommon$ScalingType;

    return-object v0
.end method
