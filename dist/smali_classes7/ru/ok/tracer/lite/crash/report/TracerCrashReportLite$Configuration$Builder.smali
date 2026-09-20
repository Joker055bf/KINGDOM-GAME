.class public final Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;
.super Ljava/lang/Object;
.source "TracerCrashReportLite.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0012\u001a\u00020\u0013R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000e\u00a8\u0006\u0014"
    }
    d2 = {
        "Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;",
        "",
        "()V",
        "experimentalMaxLogLength",
        "",
        "getExperimentalMaxLogLength",
        "()I",
        "setExperimentalMaxLogLength",
        "(I)V",
        "experimentalNonFatalRateLimitEnabled",
        "",
        "getExperimentalNonFatalRateLimitEnabled",
        "()Z",
        "setExperimentalNonFatalRateLimitEnabled",
        "(Z)V",
        "obfuscatedNonFatalsEnabled",
        "getObfuscatedNonFatalsEnabled",
        "setObfuscatedNonFatalsEnabled",
        "build",
        "Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;",
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


# instance fields
.field private experimentalMaxLogLength:I

.field private experimentalNonFatalRateLimitEnabled:Z

.field private obfuscatedNonFatalsEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x10000

    .line 137
    iput v0, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;->experimentalMaxLogLength:I

    return-void
.end method


# virtual methods
.method public final build()Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;
    .locals 2

    .line 140
    new-instance v0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;-><init>(Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getExperimentalMaxLogLength()I
    .locals 1

    .line 137
    iget v0, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;->experimentalMaxLogLength:I

    return v0
.end method

.method public final getExperimentalNonFatalRateLimitEnabled()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;->experimentalNonFatalRateLimitEnabled:Z

    return v0
.end method

.method public final getObfuscatedNonFatalsEnabled()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;->obfuscatedNonFatalsEnabled:Z

    return v0
.end method

.method public final setExperimentalMaxLogLength(I)V
    .locals 0

    .line 137
    iput p1, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;->experimentalMaxLogLength:I

    return-void
.end method

.method public final setExperimentalNonFatalRateLimitEnabled(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;->experimentalNonFatalRateLimitEnabled:Z

    return-void
.end method

.method public final setObfuscatedNonFatalsEnabled(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;->obfuscatedNonFatalsEnabled:Z

    return-void
.end method
