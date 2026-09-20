.class public final enum Lcom/discord/org/webrtc/Logging$TraceLevel;
.super Ljava/lang/Enum;
.source "Logging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/Logging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TraceLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/discord/org/webrtc/Logging$TraceLevel;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discord/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_ALL:Lcom/discord/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_APICALL:Lcom/discord/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_CRITICAL:Lcom/discord/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_DEBUG:Lcom/discord/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_DEFAULT:Lcom/discord/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_ERROR:Lcom/discord/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_INFO:Lcom/discord/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_MEMORY:Lcom/discord/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_MODULECALL:Lcom/discord/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_NONE:Lcom/discord/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_STATEINFO:Lcom/discord/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_STREAM:Lcom/discord/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_TERSEINFO:Lcom/discord/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_TIMER:Lcom/discord/org/webrtc/Logging$TraceLevel;

.field public static final enum TRACE_WARNING:Lcom/discord/org/webrtc/Logging$TraceLevel;


# instance fields
.field public final level:I


# direct methods
.method private static synthetic $values()[Lcom/discord/org/webrtc/Logging$TraceLevel;
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/discord/org/webrtc/Logging$TraceLevel;

    const/4 v1, 0x0

    .line 66
    sget-object v2, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_NONE:Lcom/discord/org/webrtc/Logging$TraceLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_STATEINFO:Lcom/discord/org/webrtc/Logging$TraceLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_WARNING:Lcom/discord/org/webrtc/Logging$TraceLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_ERROR:Lcom/discord/org/webrtc/Logging$TraceLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_CRITICAL:Lcom/discord/org/webrtc/Logging$TraceLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_APICALL:Lcom/discord/org/webrtc/Logging$TraceLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_DEFAULT:Lcom/discord/org/webrtc/Logging$TraceLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_MODULECALL:Lcom/discord/org/webrtc/Logging$TraceLevel;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_MEMORY:Lcom/discord/org/webrtc/Logging$TraceLevel;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_TIMER:Lcom/discord/org/webrtc/Logging$TraceLevel;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_STREAM:Lcom/discord/org/webrtc/Logging$TraceLevel;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_DEBUG:Lcom/discord/org/webrtc/Logging$TraceLevel;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_INFO:Lcom/discord/org/webrtc/Logging$TraceLevel;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_TERSEINFO:Lcom/discord/org/webrtc/Logging$TraceLevel;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_ALL:Lcom/discord/org/webrtc/Logging$TraceLevel;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 68
    new-instance v0, Lcom/discord/org/webrtc/Logging$TraceLevel;

    const-string v1, "TRACE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/discord/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_NONE:Lcom/discord/org/webrtc/Logging$TraceLevel;

    .line 69
    new-instance v0, Lcom/discord/org/webrtc/Logging$TraceLevel;

    const-string v1, "TRACE_STATEINFO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/discord/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_STATEINFO:Lcom/discord/org/webrtc/Logging$TraceLevel;

    .line 70
    new-instance v0, Lcom/discord/org/webrtc/Logging$TraceLevel;

    const-string v1, "TRACE_WARNING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/discord/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_WARNING:Lcom/discord/org/webrtc/Logging$TraceLevel;

    .line 71
    new-instance v0, Lcom/discord/org/webrtc/Logging$TraceLevel;

    const-string v1, "TRACE_ERROR"

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/discord/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_ERROR:Lcom/discord/org/webrtc/Logging$TraceLevel;

    .line 72
    new-instance v0, Lcom/discord/org/webrtc/Logging$TraceLevel;

    const-string v1, "TRACE_CRITICAL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/discord/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_CRITICAL:Lcom/discord/org/webrtc/Logging$TraceLevel;

    .line 73
    new-instance v0, Lcom/discord/org/webrtc/Logging$TraceLevel;

    const/4 v1, 0x5

    const/16 v3, 0x10

    const-string v4, "TRACE_APICALL"

    invoke-direct {v0, v4, v1, v3}, Lcom/discord/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_APICALL:Lcom/discord/org/webrtc/Logging$TraceLevel;

    .line 74
    new-instance v0, Lcom/discord/org/webrtc/Logging$TraceLevel;

    const/4 v1, 0x6

    const/16 v3, 0xff

    const-string v4, "TRACE_DEFAULT"

    invoke-direct {v0, v4, v1, v3}, Lcom/discord/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_DEFAULT:Lcom/discord/org/webrtc/Logging$TraceLevel;

    .line 75
    new-instance v0, Lcom/discord/org/webrtc/Logging$TraceLevel;

    const/4 v1, 0x7

    const/16 v3, 0x20

    const-string v4, "TRACE_MODULECALL"

    invoke-direct {v0, v4, v1, v3}, Lcom/discord/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_MODULECALL:Lcom/discord/org/webrtc/Logging$TraceLevel;

    .line 76
    new-instance v0, Lcom/discord/org/webrtc/Logging$TraceLevel;

    const-string v1, "TRACE_MEMORY"

    const/16 v3, 0x100

    invoke-direct {v0, v1, v2, v3}, Lcom/discord/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_MEMORY:Lcom/discord/org/webrtc/Logging$TraceLevel;

    .line 77
    new-instance v0, Lcom/discord/org/webrtc/Logging$TraceLevel;

    const/16 v1, 0x9

    const/16 v2, 0x200

    const-string v3, "TRACE_TIMER"

    invoke-direct {v0, v3, v1, v2}, Lcom/discord/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_TIMER:Lcom/discord/org/webrtc/Logging$TraceLevel;

    .line 78
    new-instance v0, Lcom/discord/org/webrtc/Logging$TraceLevel;

    const/16 v1, 0xa

    const/16 v2, 0x400

    const-string v3, "TRACE_STREAM"

    invoke-direct {v0, v3, v1, v2}, Lcom/discord/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_STREAM:Lcom/discord/org/webrtc/Logging$TraceLevel;

    .line 79
    new-instance v0, Lcom/discord/org/webrtc/Logging$TraceLevel;

    const/16 v1, 0xb

    const/16 v2, 0x800

    const-string v3, "TRACE_DEBUG"

    invoke-direct {v0, v3, v1, v2}, Lcom/discord/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_DEBUG:Lcom/discord/org/webrtc/Logging$TraceLevel;

    .line 80
    new-instance v0, Lcom/discord/org/webrtc/Logging$TraceLevel;

    const/16 v1, 0xc

    const/16 v2, 0x1000

    const-string v3, "TRACE_INFO"

    invoke-direct {v0, v3, v1, v2}, Lcom/discord/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_INFO:Lcom/discord/org/webrtc/Logging$TraceLevel;

    .line 81
    new-instance v0, Lcom/discord/org/webrtc/Logging$TraceLevel;

    const/16 v1, 0xd

    const/16 v2, 0x2000

    const-string v3, "TRACE_TERSEINFO"

    invoke-direct {v0, v3, v1, v2}, Lcom/discord/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_TERSEINFO:Lcom/discord/org/webrtc/Logging$TraceLevel;

    .line 82
    new-instance v0, Lcom/discord/org/webrtc/Logging$TraceLevel;

    const/16 v1, 0xe

    const v2, 0xffff

    const-string v3, "TRACE_ALL"

    invoke-direct {v0, v3, v1, v2}, Lcom/discord/org/webrtc/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/discord/org/webrtc/Logging$TraceLevel;->TRACE_ALL:Lcom/discord/org/webrtc/Logging$TraceLevel;

    .line 66
    invoke-static {}, Lcom/discord/org/webrtc/Logging$TraceLevel;->$values()[Lcom/discord/org/webrtc/Logging$TraceLevel;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/Logging$TraceLevel;->$VALUES:[Lcom/discord/org/webrtc/Logging$TraceLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p3, p0, Lcom/discord/org/webrtc/Logging$TraceLevel;->level:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discord/org/webrtc/Logging$TraceLevel;
    .locals 1

    .line 66
    const-class v0, Lcom/discord/org/webrtc/Logging$TraceLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/discord/org/webrtc/Logging$TraceLevel;

    return-object p0
.end method

.method public static values()[Lcom/discord/org/webrtc/Logging$TraceLevel;
    .locals 1

    .line 66
    sget-object v0, Lcom/discord/org/webrtc/Logging$TraceLevel;->$VALUES:[Lcom/discord/org/webrtc/Logging$TraceLevel;

    invoke-virtual {v0}, [Lcom/discord/org/webrtc/Logging$TraceLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/Logging$TraceLevel;

    return-object v0
.end method
