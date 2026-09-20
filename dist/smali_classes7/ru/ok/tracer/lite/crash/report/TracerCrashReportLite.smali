.class public final Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;
.super Ljava/lang/Object;
.source "TracerCrashReportLite.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Companion;,
        Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTracerCrashReportLite.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TracerCrashReportLite.kt\nru/ok/tracer/lite/crash/report/TracerCrashReportLite\n+ 2 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,148:1\n73#2,2:149\n1#3:151\n1#3:152\n*S KotlinDebug\n*F\n+ 1 TracerCrashReportLite.kt\nru/ok/tracer/lite/crash/report/TracerCrashReportLite\n*L\n40#1:149,2\n40#1:151\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 12\u00020\u0001:\u000212B\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'J\u001c\u0010(\u001a\u00020%2\u0006\u0010)\u001a\u00020*2\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\'H\u0007J$\u0010(\u001a\u00020%2\u0006\u0010,\u001a\u00020-2\u0006\u0010)\u001a\u00020*2\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\'H\u0007J$\u0010(\u001a\u00020%2\u0006\u0010.\u001a\u00020/2\u0006\u0010)\u001a\u00020*2\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\'H\u0007J\"\u00100\u001a\u00020%2\u0006\u0010.\u001a\u00020\'2\u0006\u0010)\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010\'H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0017\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\u001e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;",
        "",
        "tracer",
        "Lru/ok/tracer/lite/TracerLite;",
        "configuration",
        "Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;",
        "(Lru/ok/tracer/lite/TracerLite;Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;)V",
        "dropManager",
        "Lru/ok/tracer/base/drop/DropManager;",
        "getDropManager",
        "()Lru/ok/tracer/base/drop/DropManager;",
        "ioExecutor",
        "Ljava/util/concurrent/Executor;",
        "getIoExecutor",
        "()Ljava/util/concurrent/Executor;",
        "limits",
        "Lru/ok/tracer/lite/limits/TracerLiteLimits;",
        "logStorage",
        "Lru/ok/tracer/lite/crash/report/LogStorageLite;",
        "nonFatalBucket",
        "Lru/ok/tracer/base/limits/TokenBucket;",
        "nonFatalDropCount",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "nonFatalsEnabled",
        "",
        "getNonFatalsEnabled",
        "()Z",
        "nonFatalsEnabled$delegate",
        "Lkotlin/Lazy;",
        "tagsStorage",
        "Lru/ok/tracer/lite/TagsStorageLite;",
        "getTagsStorage",
        "()Lru/ok/tracer/lite/TagsStorageLite;",
        "tracerIsDisabled",
        "uploader",
        "Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;",
        "log",
        "",
        "msg",
        "",
        "report",
        "e",
        "",
        "issueKey",
        "logLevel",
        "Lru/ok/tracer/lite/LogLevel;",
        "severity",
        "Lru/ok/tracer/lite/Severity;",
        "reportException",
        "Companion",
        "Configuration",
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
.field private static final Companion:Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Companion;

.field private static final nonFatalBuckets:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lru/ok/tracer/base/limits/TokenBucket;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final configuration:Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;

.field private final limits:Lru/ok/tracer/lite/limits/TracerLiteLimits;

.field private final logStorage:Lru/ok/tracer/lite/crash/report/LogStorageLite;

.field private final nonFatalBucket:Lru/ok/tracer/base/limits/TokenBucket;

.field private final nonFatalDropCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final nonFatalsEnabled$delegate:Lkotlin/Lazy;

.field private final tracer:Lru/ok/tracer/lite/TracerLite;

.field private volatile tracerIsDisabled:Z

.field private final uploader:Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;


# direct methods
.method public static synthetic $r8$lambda$GWO1UhJY0DBgEFt51acsLTUU7Aw(Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->reportException$lambda$2(Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JwRCW6xEkNGekPL9PTuKmZr-WVg(Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;)V
    .locals 0

    invoke-static {p0}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->reportException$lambda$1(Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->Companion:Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Companion;

    .line 126
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->nonFatalBuckets:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lru/ok/tracer/lite/TracerLite;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "tracer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;-><init>(Lru/ok/tracer/lite/TracerLite;Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lru/ok/tracer/lite/TracerLite;Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;)V
    .locals 5
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "tracer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->tracer:Lru/ok/tracer/lite/TracerLite;

    .line 24
    iput-object p2, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->configuration:Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;

    .line 28
    new-instance v0, Lru/ok/tracer/lite/crash/report/LogStorageLite;

    invoke-virtual {p2}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;->getMaxLogsLength$tracer_lite_crash_report_release()I

    move-result v1

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/crash/report/LogStorageLite;-><init>(I)V

    iput-object v0, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->logStorage:Lru/ok/tracer/lite/crash/report/LogStorageLite;

    .line 29
    sget-object v0, Lru/ok/tracer/lite/limits/TracerLiteLimits;->Companion:Lru/ok/tracer/lite/limits/TracerLiteLimits$Companion;

    invoke-virtual {v0, p1}, Lru/ok/tracer/lite/limits/TracerLiteLimits$Companion;->get(Lru/ok/tracer/lite/TracerLite;)Lru/ok/tracer/lite/limits/TracerLiteLimits;

    move-result-object v0

    iput-object v0, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->limits:Lru/ok/tracer/lite/limits/TracerLiteLimits;

    .line 30
    new-instance v1, Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;

    invoke-direct {v1, p1, v0}, Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;-><init>(Lru/ok/tracer/lite/TracerLite;Lru/ok/tracer/lite/limits/TracerLiteLimits;)V

    iput-object v1, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->uploader:Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;

    .line 36
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$nonFatalsEnabled$2;

    invoke-direct {v1, p0}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$nonFatalsEnabled$2;-><init>(Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->nonFatalsEnabled$delegate:Lkotlin/Lazy;

    .line 40
    sget-object v0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->nonFatalBuckets:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lru/ok/tracer/lite/TracerLite;->getLibraryPackageName()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 42
    invoke-virtual {p2}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;->getNonFatalRateLimitEnabled$tracer_lite_crash_report_release()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lru/ok/tracer/base/limits/TokenBucket;

    const-wide/32 v1, 0x36ee80

    .line 44
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v4, 0xa

    .line 42
    invoke-direct {p2, v4, v1, v2, v3}, Lru/ok/tracer/base/limits/TokenBucket;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    goto :goto_0

    .line 46
    :cond_0
    sget-object p2, Lru/ok/tracer/base/limits/TokenBucket;->Companion:Lru/ok/tracer/base/limits/TokenBucket$Companion;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Lru/ok/tracer/base/limits/TokenBucket$Companion;->oneShot(I)Lru/ok/tracer/base/limits/TokenBucket;

    move-result-object p2

    .line 150
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    move-object v1, p2

    goto :goto_1

    :cond_1
    move-object v1, p1

    :cond_2
    :goto_1
    const-string p1, "nonFatalBuckets.getOrPut\u2026        )\n        }\n    }"

    .line 40
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lru/ok/tracer/base/limits/TokenBucket;

    iput-object v1, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->nonFatalBucket:Lru/ok/tracer/base/limits/TokenBucket;

    .line 51
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->nonFatalDropCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public synthetic constructor <init>(Lru/ok/tracer/lite/TracerLite;Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 24
    new-instance p2, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;

    invoke-direct {p2}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;-><init>()V

    invoke-virtual {p2}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration$Builder;->build()Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;

    move-result-object p2

    .line 22
    :cond_0
    invoke-direct {p0, p1, p2}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;-><init>(Lru/ok/tracer/lite/TracerLite;Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;)V

    return-void
.end method

.method public static final synthetic access$getConfiguration$p(Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;)Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;
    .locals 0

    .line 22
    iget-object p0, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->configuration:Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;

    return-object p0
.end method

.method private final getDropManager()Lru/ok/tracer/base/drop/DropManager;
    .locals 2

    .line 31
    sget-object v0, Lru/ok/tracer/lite/upload/TracerDropHolder;->Companion:Lru/ok/tracer/lite/upload/TracerDropHolder$Companion;

    iget-object v1, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->tracer:Lru/ok/tracer/lite/TracerLite;

    invoke-virtual {v0, v1}, Lru/ok/tracer/lite/upload/TracerDropHolder$Companion;->get(Lru/ok/tracer/lite/TracerLite;)Lru/ok/tracer/base/drop/DropManager;

    move-result-object v0

    return-object v0
.end method

.method private final getIoExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 27
    sget-object v0, Lru/ok/tracer/lite/utils/TracerExecutorsHolder;->Companion:Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion;

    iget-object v1, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->tracer:Lru/ok/tracer/lite/TracerLite;

    invoke-virtual {v0, v1}, Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion;->get(Lru/ok/tracer/lite/TracerLite;)Lru/ok/tracer/lite/utils/TracerExecutorsHolder;

    move-result-object v0

    invoke-virtual {v0}, Lru/ok/tracer/lite/utils/TracerExecutorsHolder;->getIoExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method private final getNonFatalsEnabled()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->nonFatalsEnabled$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final getTagsStorage()Lru/ok/tracer/lite/TagsStorageLite;
    .locals 2

    .line 26
    sget-object v0, Lru/ok/tracer/lite/TagsStorageLite;->Companion:Lru/ok/tracer/lite/TagsStorageLite$Companion;

    iget-object v1, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->tracer:Lru/ok/tracer/lite/TracerLite;

    invoke-virtual {v0, v1}, Lru/ok/tracer/lite/TagsStorageLite$Companion;->get(Lru/ok/tracer/lite/TracerLite;)Lru/ok/tracer/lite/TagsStorageLite;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic report$default(Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 54
    :cond_0
    invoke-virtual {p0, p1, p2}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->report(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic report$default(Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;Lru/ok/tracer/lite/LogLevel;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 67
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->report(Lru/ok/tracer/lite/LogLevel;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic report$default(Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;Lru/ok/tracer/lite/Severity;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 59
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->report(Lru/ok/tracer/lite/Severity;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private final reportException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 5

    .line 72
    iget-boolean v0, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->tracerIsDisabled:Z

    const-string v1, "Tracer"

    if-eqz v0, :cond_0

    const-string p1, "Tracer is disabled"

    .line 73
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 76
    :cond_0
    invoke-direct {p0}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->getNonFatalsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->limits:Lru/ok/tracer/lite/limits/TracerLiteLimits;

    const-string v2, "CRASH_REPORT"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lru/ok/tracer/lite/limits/TracerLiteLimits;->isLimited(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Feature CRASH_REPORT limited"

    .line 80
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 83
    :cond_2
    iget-object v0, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->nonFatalBucket:Lru/ok/tracer/base/limits/TokenBucket;

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v4, v3}, Lru/ok/tracer/base/limits/TokenBucket;->allow$default(Lru/ok/tracer/base/limits/TokenBucket;IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p1, "Can\'t handle non fatal exception. Max non fatal count is reached."

    .line 84
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object p1, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->nonFatalDropCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 87
    invoke-direct {p0}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->getIoExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$$ExternalSyntheticLambda0;-><init>(Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 97
    :cond_3
    invoke-direct {p0}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->getIoExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$$ExternalSyntheticLambda1;-><init>(Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final reportException$lambda$1(Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->nonFatalDropCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 90
    iget-object v1, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->configuration:Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;

    invoke-virtual {v1}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite$Configuration;->getNonFatalRateLimitEnabled$tracer_lite_crash_report_release()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "max_non_fatals_per_interval_reached"

    goto :goto_0

    :cond_0
    const-string v1, "max_non_fatals_per_session_reached"

    .line 93
    :goto_0
    invoke-direct {p0}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->getDropManager()Lru/ok/tracer/base/drop/DropManager;

    move-result-object p0

    const-string v2, "non_fatal"

    invoke-virtual {p0, v2, v1, v0}, Lru/ok/tracer/base/drop/DropManager;->drop(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static final reportException$lambda$2(Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$severity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->tracer:Lru/ok/tracer/lite/TracerLite;

    invoke-virtual {v0}, Lru/ok/tracer/lite/TracerLite;->isDisabled()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Tracer"

    if-eqz v0, :cond_0

    const-string p1, "Tracer is disabled"

    .line 99
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput-boolean v1, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->tracerIsDisabled:Z

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->limits:Lru/ok/tracer/lite/limits/TracerLiteLimits;

    const-string v3, "CRASH_REPORT"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lru/ok/tracer/lite/limits/TracerLiteLimits;->isLimited(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Feature CRASH_REPORT limited"

    .line 104
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 107
    :cond_1
    iget-object v3, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->uploader:Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;

    if-eqz p3, :cond_4

    .line 110
    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    move-object v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object p3, v4

    :goto_1
    if-eqz p3, :cond_4

    const/16 v0, 0x20

    invoke-static {p3, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :cond_4
    move-object v6, v4

    .line 111
    iget-object p3, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->logStorage:Lru/ok/tracer/lite/crash/report/LogStorageLite;

    invoke-virtual {p3}, Lru/ok/tracer/lite/crash/report/LogStorageLite;->getLogs$tracer_lite_crash_report_release()Ljava/util/List;

    move-result-object v7

    .line 112
    invoke-direct {p0}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->getTagsStorage()Lru/ok/tracer/lite/TagsStorageLite;

    move-result-object p0

    invoke-virtual {p0}, Lru/ok/tracer/lite/TagsStorageLite;->getTags()Ljava/util/List;

    move-result-object v8

    move-object v4, p1

    move-object v5, p2

    .line 107
    invoke-virtual/range {v3 .. v8}, Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;->upload(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-boolean v0, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->tracerIsDisabled:Z

    if-eqz v0, :cond_0

    const-string p1, "Tracer"

    const-string v0, "Tracer is disabled"

    .line 119
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->logStorage:Lru/ok/tracer/lite/crash/report/LogStorageLite;

    invoke-virtual {v0, p1}, Lru/ok/tracer/lite/crash/report/LogStorageLite;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final report(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->report$default(Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final report(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "NON_FATAL"

    .line 55
    invoke-direct {p0, v0, p1, p2}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->reportException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final report(Lru/ok/tracer/lite/LogLevel;Ljava/lang/Throwable;)V
    .locals 7
    .annotation runtime Lkotlin/Deprecated;
        message = "Use Severity instead"
    .end annotation

    const-string v0, "logLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->report$default(Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;Lru/ok/tracer/lite/LogLevel;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final report(Lru/ok/tracer/lite/LogLevel;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use Severity instead"
    .end annotation

    const-string v0, "logLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lru/ok/tracer/lite/LogLevel;->toSeverity()Lru/ok/tracer/lite/Severity;

    move-result-object p1

    invoke-static {p1}, Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLiteKt;->toApiString(Lru/ok/tracer/lite/Severity;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->reportException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final report(Lru/ok/tracer/lite/Severity;Ljava/lang/Throwable;)V
    .locals 7

    const-string v0, "severity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->report$default(Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;Lru/ok/tracer/lite/Severity;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final report(Lru/ok/tracer/lite/Severity;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const-string v0, "severity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLiteKt;->toApiString(Lru/ok/tracer/lite/Severity;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lru/ok/tracer/lite/crash/report/TracerCrashReportLite;->reportException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
