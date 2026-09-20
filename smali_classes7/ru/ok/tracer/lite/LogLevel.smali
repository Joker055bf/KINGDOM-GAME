.class public final Lru/ok/tracer/lite/LogLevel;
.super Ljava/lang/Object;
.source "LogLevel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/ok/tracer/lite/LogLevel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "Replace with Severity"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lru/ok/tracer/lite/LogLevel;",
        "",
        "severity",
        "Lru/ok/tracer/lite/Severity;",
        "(Lru/ok/tracer/lite/Severity;)V",
        "hashCode",
        "",
        "toSeverity",
        "toString",
        "",
        "Companion",
        "tracer-lite-commons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lru/ok/tracer/lite/LogLevel$Companion;

.field public static final DEBUG:Lru/ok/tracer/lite/LogLevel;

.field public static final ERROR:Lru/ok/tracer/lite/LogLevel;

.field public static final FATAL:Lru/ok/tracer/lite/LogLevel;

.field public static final INFO:Lru/ok/tracer/lite/LogLevel;

.field public static final NOTICE:Lru/ok/tracer/lite/LogLevel;

.field public static final WARNING:Lru/ok/tracer/lite/LogLevel;


# instance fields
.field private final severity:Lru/ok/tracer/lite/Severity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/ok/tracer/lite/LogLevel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/LogLevel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/ok/tracer/lite/LogLevel;->Companion:Lru/ok/tracer/lite/LogLevel$Companion;

    .line 18
    new-instance v0, Lru/ok/tracer/lite/LogLevel;

    sget-object v1, Lru/ok/tracer/lite/Severity;->FATAL:Lru/ok/tracer/lite/Severity;

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/LogLevel;-><init>(Lru/ok/tracer/lite/Severity;)V

    sput-object v0, Lru/ok/tracer/lite/LogLevel;->FATAL:Lru/ok/tracer/lite/LogLevel;

    .line 21
    new-instance v0, Lru/ok/tracer/lite/LogLevel;

    sget-object v1, Lru/ok/tracer/lite/Severity;->ERROR:Lru/ok/tracer/lite/Severity;

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/LogLevel;-><init>(Lru/ok/tracer/lite/Severity;)V

    sput-object v0, Lru/ok/tracer/lite/LogLevel;->ERROR:Lru/ok/tracer/lite/LogLevel;

    .line 24
    new-instance v0, Lru/ok/tracer/lite/LogLevel;

    sget-object v1, Lru/ok/tracer/lite/Severity;->WARNING:Lru/ok/tracer/lite/Severity;

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/LogLevel;-><init>(Lru/ok/tracer/lite/Severity;)V

    sput-object v0, Lru/ok/tracer/lite/LogLevel;->WARNING:Lru/ok/tracer/lite/LogLevel;

    .line 27
    new-instance v0, Lru/ok/tracer/lite/LogLevel;

    sget-object v1, Lru/ok/tracer/lite/Severity;->NOTICE:Lru/ok/tracer/lite/Severity;

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/LogLevel;-><init>(Lru/ok/tracer/lite/Severity;)V

    sput-object v0, Lru/ok/tracer/lite/LogLevel;->NOTICE:Lru/ok/tracer/lite/LogLevel;

    .line 30
    new-instance v0, Lru/ok/tracer/lite/LogLevel;

    sget-object v1, Lru/ok/tracer/lite/Severity;->INFO:Lru/ok/tracer/lite/Severity;

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/LogLevel;-><init>(Lru/ok/tracer/lite/Severity;)V

    sput-object v0, Lru/ok/tracer/lite/LogLevel;->INFO:Lru/ok/tracer/lite/LogLevel;

    .line 33
    new-instance v0, Lru/ok/tracer/lite/LogLevel;

    sget-object v1, Lru/ok/tracer/lite/Severity;->DEBUG:Lru/ok/tracer/lite/Severity;

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/LogLevel;-><init>(Lru/ok/tracer/lite/Severity;)V

    sput-object v0, Lru/ok/tracer/lite/LogLevel;->DEBUG:Lru/ok/tracer/lite/LogLevel;

    return-void
.end method

.method private constructor <init>(Lru/ok/tracer/lite/Severity;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lru/ok/tracer/lite/LogLevel;->severity:Lru/ok/tracer/lite/Severity;

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .line 9
    iget-object v0, p0, Lru/ok/tracer/lite/LogLevel;->severity:Lru/ok/tracer/lite/Severity;

    invoke-virtual {v0}, Lru/ok/tracer/lite/Severity;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toSeverity()Lru/ok/tracer/lite/Severity;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Will be removed"
    .end annotation

    .line 14
    iget-object v0, p0, Lru/ok/tracer/lite/LogLevel;->severity:Lru/ok/tracer/lite/Severity;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/ok/tracer/lite/LogLevel;->severity:Lru/ok/tracer/lite/Severity;

    invoke-virtual {v0}, Lru/ok/tracer/lite/Severity;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
