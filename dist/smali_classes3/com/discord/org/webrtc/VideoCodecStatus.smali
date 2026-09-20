.class public final enum Lcom/discord/org/webrtc/VideoCodecStatus;
.super Ljava/lang/Enum;
.source "VideoCodecStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/discord/org/webrtc/VideoCodecStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discord/org/webrtc/VideoCodecStatus;

.field public static final enum ERROR:Lcom/discord/org/webrtc/VideoCodecStatus;

.field public static final enum ERR_PARAMETER:Lcom/discord/org/webrtc/VideoCodecStatus;

.field public static final enum ERR_REQUEST_SLI:Lcom/discord/org/webrtc/VideoCodecStatus;

.field public static final enum ERR_SIZE:Lcom/discord/org/webrtc/VideoCodecStatus;

.field public static final enum FALLBACK_SOFTWARE:Lcom/discord/org/webrtc/VideoCodecStatus;

.field public static final enum LEVEL_EXCEEDED:Lcom/discord/org/webrtc/VideoCodecStatus;

.field public static final enum MEMORY:Lcom/discord/org/webrtc/VideoCodecStatus;

.field public static final enum NO_OUTPUT:Lcom/discord/org/webrtc/VideoCodecStatus;

.field public static final enum OK:Lcom/discord/org/webrtc/VideoCodecStatus;

.field public static final enum REQUEST_SLI:Lcom/discord/org/webrtc/VideoCodecStatus;

.field public static final enum TARGET_BITRATE_OVERSHOOT:Lcom/discord/org/webrtc/VideoCodecStatus;

.field public static final enum TIMEOUT:Lcom/discord/org/webrtc/VideoCodecStatus;

.field public static final enum UNINITIALIZED:Lcom/discord/org/webrtc/VideoCodecStatus;


# instance fields
.field private final number:I


# direct methods
.method private static synthetic $values()[Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/discord/org/webrtc/VideoCodecStatus;

    const/4 v1, 0x0

    .line 17
    sget-object v2, Lcom/discord/org/webrtc/VideoCodecStatus;->TARGET_BITRATE_OVERSHOOT:Lcom/discord/org/webrtc/VideoCodecStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/discord/org/webrtc/VideoCodecStatus;->REQUEST_SLI:Lcom/discord/org/webrtc/VideoCodecStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/discord/org/webrtc/VideoCodecStatus;->NO_OUTPUT:Lcom/discord/org/webrtc/VideoCodecStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/discord/org/webrtc/VideoCodecStatus;->OK:Lcom/discord/org/webrtc/VideoCodecStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/discord/org/webrtc/VideoCodecStatus;->ERROR:Lcom/discord/org/webrtc/VideoCodecStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/discord/org/webrtc/VideoCodecStatus;->LEVEL_EXCEEDED:Lcom/discord/org/webrtc/VideoCodecStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/discord/org/webrtc/VideoCodecStatus;->MEMORY:Lcom/discord/org/webrtc/VideoCodecStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/discord/org/webrtc/VideoCodecStatus;->ERR_PARAMETER:Lcom/discord/org/webrtc/VideoCodecStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/discord/org/webrtc/VideoCodecStatus;->ERR_SIZE:Lcom/discord/org/webrtc/VideoCodecStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/discord/org/webrtc/VideoCodecStatus;->TIMEOUT:Lcom/discord/org/webrtc/VideoCodecStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/discord/org/webrtc/VideoCodecStatus;->UNINITIALIZED:Lcom/discord/org/webrtc/VideoCodecStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/discord/org/webrtc/VideoCodecStatus;->ERR_REQUEST_SLI:Lcom/discord/org/webrtc/VideoCodecStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/discord/org/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/discord/org/webrtc/VideoCodecStatus;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 18
    new-instance v0, Lcom/discord/org/webrtc/VideoCodecStatus;

    const-string v1, "TARGET_BITRATE_OVERSHOOT"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/discord/org/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->TARGET_BITRATE_OVERSHOOT:Lcom/discord/org/webrtc/VideoCodecStatus;

    .line 19
    new-instance v0, Lcom/discord/org/webrtc/VideoCodecStatus;

    const-string v1, "REQUEST_SLI"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v0, v1, v4, v5}, Lcom/discord/org/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->REQUEST_SLI:Lcom/discord/org/webrtc/VideoCodecStatus;

    .line 20
    new-instance v0, Lcom/discord/org/webrtc/VideoCodecStatus;

    const-string v1, "NO_OUTPUT"

    invoke-direct {v0, v1, v5, v4}, Lcom/discord/org/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->NO_OUTPUT:Lcom/discord/org/webrtc/VideoCodecStatus;

    .line 21
    new-instance v0, Lcom/discord/org/webrtc/VideoCodecStatus;

    const-string v1, "OK"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/discord/org/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->OK:Lcom/discord/org/webrtc/VideoCodecStatus;

    .line 22
    new-instance v0, Lcom/discord/org/webrtc/VideoCodecStatus;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const-string v4, "ERROR"

    invoke-direct {v0, v4, v1, v2}, Lcom/discord/org/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->ERROR:Lcom/discord/org/webrtc/VideoCodecStatus;

    .line 23
    new-instance v0, Lcom/discord/org/webrtc/VideoCodecStatus;

    const-string v1, "LEVEL_EXCEEDED"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/discord/org/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->LEVEL_EXCEEDED:Lcom/discord/org/webrtc/VideoCodecStatus;

    .line 24
    new-instance v0, Lcom/discord/org/webrtc/VideoCodecStatus;

    const/4 v1, 0x6

    const/4 v2, -0x3

    const-string v3, "MEMORY"

    invoke-direct {v0, v3, v1, v2}, Lcom/discord/org/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->MEMORY:Lcom/discord/org/webrtc/VideoCodecStatus;

    .line 25
    new-instance v0, Lcom/discord/org/webrtc/VideoCodecStatus;

    const/4 v1, 0x7

    const/4 v2, -0x4

    const-string v3, "ERR_PARAMETER"

    invoke-direct {v0, v3, v1, v2}, Lcom/discord/org/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->ERR_PARAMETER:Lcom/discord/org/webrtc/VideoCodecStatus;

    .line 26
    new-instance v0, Lcom/discord/org/webrtc/VideoCodecStatus;

    const/16 v1, 0x8

    const/4 v2, -0x5

    const-string v3, "ERR_SIZE"

    invoke-direct {v0, v3, v1, v2}, Lcom/discord/org/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->ERR_SIZE:Lcom/discord/org/webrtc/VideoCodecStatus;

    .line 27
    new-instance v0, Lcom/discord/org/webrtc/VideoCodecStatus;

    const/16 v1, 0x9

    const/4 v2, -0x6

    const-string v3, "TIMEOUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/discord/org/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->TIMEOUT:Lcom/discord/org/webrtc/VideoCodecStatus;

    .line 28
    new-instance v0, Lcom/discord/org/webrtc/VideoCodecStatus;

    const/16 v1, 0xa

    const/4 v2, -0x7

    const-string v3, "UNINITIALIZED"

    invoke-direct {v0, v3, v1, v2}, Lcom/discord/org/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->UNINITIALIZED:Lcom/discord/org/webrtc/VideoCodecStatus;

    .line 29
    new-instance v0, Lcom/discord/org/webrtc/VideoCodecStatus;

    const/16 v1, 0xb

    const/16 v2, -0xc

    const-string v3, "ERR_REQUEST_SLI"

    invoke-direct {v0, v3, v1, v2}, Lcom/discord/org/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->ERR_REQUEST_SLI:Lcom/discord/org/webrtc/VideoCodecStatus;

    .line 30
    new-instance v0, Lcom/discord/org/webrtc/VideoCodecStatus;

    const/16 v1, 0xc

    const/16 v2, -0xd

    const-string v3, "FALLBACK_SOFTWARE"

    invoke-direct {v0, v3, v1, v2}, Lcom/discord/org/webrtc/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/discord/org/webrtc/VideoCodecStatus;

    .line 17
    invoke-static {}, Lcom/discord/org/webrtc/VideoCodecStatus;->$values()[Lcom/discord/org/webrtc/VideoCodecStatus;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->$VALUES:[Lcom/discord/org/webrtc/VideoCodecStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/discord/org/webrtc/VideoCodecStatus;->number:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 1

    .line 17
    const-class v0, Lcom/discord/org/webrtc/VideoCodecStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p0
.end method

.method public static values()[Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 1

    .line 17
    sget-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->$VALUES:[Lcom/discord/org/webrtc/VideoCodecStatus;

    invoke-virtual {v0}, [Lcom/discord/org/webrtc/VideoCodecStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/discord/org/webrtc/VideoCodecStatus;->number:I

    return v0
.end method
