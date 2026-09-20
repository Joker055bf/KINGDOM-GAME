.class final enum Lcom/discord/org/webrtc/Camera1Session$SessionState;
.super Ljava/lang/Enum;
.source "Camera1Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/Camera1Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SessionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/discord/org/webrtc/Camera1Session$SessionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discord/org/webrtc/Camera1Session$SessionState;

.field public static final enum RUNNING:Lcom/discord/org/webrtc/Camera1Session$SessionState;

.field public static final enum STOPPED:Lcom/discord/org/webrtc/Camera1Session$SessionState;


# direct methods
.method private static synthetic $values()[Lcom/discord/org/webrtc/Camera1Session$SessionState;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/discord/org/webrtc/Camera1Session$SessionState;

    const/4 v1, 0x0

    .line 35
    sget-object v2, Lcom/discord/org/webrtc/Camera1Session$SessionState;->RUNNING:Lcom/discord/org/webrtc/Camera1Session$SessionState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/discord/org/webrtc/Camera1Session$SessionState;->STOPPED:Lcom/discord/org/webrtc/Camera1Session$SessionState;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lcom/discord/org/webrtc/Camera1Session$SessionState;

    const-string v1, "RUNNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/Camera1Session$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/Camera1Session$SessionState;->RUNNING:Lcom/discord/org/webrtc/Camera1Session$SessionState;

    new-instance v0, Lcom/discord/org/webrtc/Camera1Session$SessionState;

    const-string v1, "STOPPED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/Camera1Session$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/Camera1Session$SessionState;->STOPPED:Lcom/discord/org/webrtc/Camera1Session$SessionState;

    invoke-static {}, Lcom/discord/org/webrtc/Camera1Session$SessionState;->$values()[Lcom/discord/org/webrtc/Camera1Session$SessionState;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/Camera1Session$SessionState;->$VALUES:[Lcom/discord/org/webrtc/Camera1Session$SessionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discord/org/webrtc/Camera1Session$SessionState;
    .locals 1

    .line 35
    const-class v0, Lcom/discord/org/webrtc/Camera1Session$SessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/discord/org/webrtc/Camera1Session$SessionState;

    return-object p0
.end method

.method public static values()[Lcom/discord/org/webrtc/Camera1Session$SessionState;
    .locals 1

    .line 35
    sget-object v0, Lcom/discord/org/webrtc/Camera1Session$SessionState;->$VALUES:[Lcom/discord/org/webrtc/Camera1Session$SessionState;

    invoke-virtual {v0}, [Lcom/discord/org/webrtc/Camera1Session$SessionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/Camera1Session$SessionState;

    return-object v0
.end method
