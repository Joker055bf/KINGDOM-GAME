.class public final Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLiteKt;
.super Ljava/lang/Object;
.source "CrashUploaderLite.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0004\u001a\u00020\u0001*\u00020\u0005H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "API_TYPE_NON_FATAL",
        "",
        "FORMAT_JVM_STACKTRACE",
        "SEVERITY_NON_FATAL",
        "toApiString",
        "Lru/ok/tracer/lite/Severity;",
        "tracer-lite-crash-report_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final API_TYPE_NON_FATAL:Ljava/lang/String; = "NON_FATAL"

.field private static final FORMAT_JVM_STACKTRACE:Ljava/lang/String; = "JVM_STACKTRACE"

.field public static final SEVERITY_NON_FATAL:Ljava/lang/String; = "NON_FATAL"


# direct methods
.method public static final toApiString(Lru/ok/tracer/lite/Severity;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lru/ok/tracer/lite/Severity;->FATAL:Lru/ok/tracer/lite/Severity;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "FATAL"

    goto :goto_0

    .line 158
    :cond_0
    sget-object v0, Lru/ok/tracer/lite/Severity;->ERROR:Lru/ok/tracer/lite/Severity;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "ERROR"

    goto :goto_0

    .line 159
    :cond_1
    sget-object v0, Lru/ok/tracer/lite/Severity;->WARNING:Lru/ok/tracer/lite/Severity;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "WARNING"

    goto :goto_0

    .line 160
    :cond_2
    sget-object v0, Lru/ok/tracer/lite/Severity;->NOTICE:Lru/ok/tracer/lite/Severity;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "NOTICE"

    goto :goto_0

    .line 161
    :cond_3
    sget-object v0, Lru/ok/tracer/lite/Severity;->INFO:Lru/ok/tracer/lite/Severity;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "INFO"

    goto :goto_0

    .line 162
    :cond_4
    sget-object v0, Lru/ok/tracer/lite/Severity;->DEBUG:Lru/ok/tracer/lite/Severity;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string p0, "DEBUG"

    :goto_0
    return-object p0
.end method
