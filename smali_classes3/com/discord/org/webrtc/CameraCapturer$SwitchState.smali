.class final enum Lcom/discord/org/webrtc/CameraCapturer$SwitchState;
.super Ljava/lang/Enum;
.source "CameraCapturer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/CameraCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SwitchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/discord/org/webrtc/CameraCapturer$SwitchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

.field public static final enum IDLE:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

.field public static final enum IN_PROGRESS:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

.field public static final enum PENDING:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;


# direct methods
.method private static synthetic $values()[Lcom/discord/org/webrtc/CameraCapturer$SwitchState;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    const/4 v1, 0x0

    .line 22
    sget-object v2, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;->IDLE:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;->PENDING:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;->IN_PROGRESS:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;->IDLE:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    .line 24
    new-instance v0, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    const-string v1, "PENDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;->PENDING:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    .line 25
    new-instance v0, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    const-string v1, "IN_PROGRESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;->IN_PROGRESS:Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    .line 22
    invoke-static {}, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;->$values()[Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;->$VALUES:[Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discord/org/webrtc/CameraCapturer$SwitchState;
    .locals 1

    .line 22
    const-class v0, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    return-object p0
.end method

.method public static values()[Lcom/discord/org/webrtc/CameraCapturer$SwitchState;
    .locals 1

    .line 22
    sget-object v0, Lcom/discord/org/webrtc/CameraCapturer$SwitchState;->$VALUES:[Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    invoke-virtual {v0}, [Lcom/discord/org/webrtc/CameraCapturer$SwitchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/CameraCapturer$SwitchState;

    return-object v0
.end method
