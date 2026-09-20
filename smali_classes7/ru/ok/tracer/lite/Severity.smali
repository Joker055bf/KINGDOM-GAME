.class public final Lru/ok/tracer/lite/Severity;
.super Ljava/lang/Object;
.source "Severity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/ok/tracer/lite/Severity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lru/ok/tracer/lite/Severity;",
        "",
        "name",
        "",
        "(Ljava/lang/String;)V",
        "hashCode",
        "",
        "toString",
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
.field public static final Companion:Lru/ok/tracer/lite/Severity$Companion;

.field public static final DEBUG:Lru/ok/tracer/lite/Severity;

.field public static final ERROR:Lru/ok/tracer/lite/Severity;

.field public static final FATAL:Lru/ok/tracer/lite/Severity;

.field public static final INFO:Lru/ok/tracer/lite/Severity;

.field public static final NOTICE:Lru/ok/tracer/lite/Severity;

.field public static final WARNING:Lru/ok/tracer/lite/Severity;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/ok/tracer/lite/Severity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/Severity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/ok/tracer/lite/Severity;->Companion:Lru/ok/tracer/lite/Severity$Companion;

    .line 13
    new-instance v0, Lru/ok/tracer/lite/Severity;

    const-string v1, "FATAL"

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/Severity;-><init>(Ljava/lang/String;)V

    sput-object v0, Lru/ok/tracer/lite/Severity;->FATAL:Lru/ok/tracer/lite/Severity;

    .line 16
    new-instance v0, Lru/ok/tracer/lite/Severity;

    const-string v1, "ERROR"

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/Severity;-><init>(Ljava/lang/String;)V

    sput-object v0, Lru/ok/tracer/lite/Severity;->ERROR:Lru/ok/tracer/lite/Severity;

    .line 19
    new-instance v0, Lru/ok/tracer/lite/Severity;

    const-string v1, "WARNING"

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/Severity;-><init>(Ljava/lang/String;)V

    sput-object v0, Lru/ok/tracer/lite/Severity;->WARNING:Lru/ok/tracer/lite/Severity;

    .line 22
    new-instance v0, Lru/ok/tracer/lite/Severity;

    const-string v1, "NOTICE"

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/Severity;-><init>(Ljava/lang/String;)V

    sput-object v0, Lru/ok/tracer/lite/Severity;->NOTICE:Lru/ok/tracer/lite/Severity;

    .line 25
    new-instance v0, Lru/ok/tracer/lite/Severity;

    const-string v1, "INFO"

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/Severity;-><init>(Ljava/lang/String;)V

    sput-object v0, Lru/ok/tracer/lite/Severity;->INFO:Lru/ok/tracer/lite/Severity;

    .line 28
    new-instance v0, Lru/ok/tracer/lite/Severity;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/Severity;-><init>(Ljava/lang/String;)V

    sput-object v0, Lru/ok/tracer/lite/Severity;->DEBUG:Lru/ok/tracer/lite/Severity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lru/ok/tracer/lite/Severity;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .line 7
    iget-object v0, p0, Lru/ok/tracer/lite/Severity;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/ok/tracer/lite/Severity;->name:Ljava/lang/String;

    return-object v0
.end method
