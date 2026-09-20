.class public final Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;
.super Ljava/lang/Object;
.source "TracerCrashReportLite.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;,
        Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u0000 \u00102\u00020\u0001:\u0002\u000f\u0010B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;",
        "",
        "builder",
        "Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;",
        "(Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;)V",
        "maxLogsLength",
        "",
        "getMaxLogsLength$tracer_lite_crash_report_release",
        "()I",
        "nonFatalRateLimitEnabled",
        "",
        "getNonFatalRateLimitEnabled$tracer_lite_crash_report_release",
        "()Z",
        "obfuscatedNonFatalsEnabled",
        "getObfuscatedNonFatalsEnabled$tracer_lite_crash_report_release",
        "Builder",
        "Companion",
        "tracer-lite-crash-report_release"
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
.field public static final Companion:Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Companion;


# instance fields
.field private final maxLogsLength:I

.field private final nonFatalRateLimitEnabled:Z

.field private final obfuscatedNonFatalsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;->Companion:Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Companion;

    return-void
.end method

.method private constructor <init>(Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;)V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-virtual {p1}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;->getObfuscatedNonFatalsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;->obfuscatedNonFatalsEnabled:Z

    .line 131
    invoke-virtual {p1}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;->getExperimentalMaxLogLength()I

    move-result v0

    iput v0, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;->maxLogsLength:I

    .line 132
    invoke-virtual {p1}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;->getExperimentalNonFatalRateLimitEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;->nonFatalRateLimitEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;-><init>(Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;)V

    return-void
.end method


# virtual methods
.method public final getMaxLogsLength$tracer_lite_crash_report_release()I
    .locals 1

    .line 131
    iget v0, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;->maxLogsLength:I

    return v0
.end method

.method public final getNonFatalRateLimitEnabled$tracer_lite_crash_report_release()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;->nonFatalRateLimitEnabled:Z

    return v0
.end method

.method public final getObfuscatedNonFatalsEnabled$tracer_lite_crash_report_release()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;->obfuscatedNonFatalsEnabled:Z

    return v0
.end method
