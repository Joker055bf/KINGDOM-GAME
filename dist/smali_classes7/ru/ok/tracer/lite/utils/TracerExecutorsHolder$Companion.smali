.class public final Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion;
.super Ljava/lang/Object;
.source "TracerExecutorsHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/ok/tracer/lite/utils/TracerExecutorsHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion;",
        "",
        "()V",
        "createIoExecutor",
        "Ljava/util/concurrent/Executor;",
        "libraryPackageName",
        "",
        "get",
        "Lru/ok/tracer/lite/utils/TracerExecutorsHolder;",
        "tracer",
        "Lru/ok/tracer/lite/TracerLite;",
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


# direct methods
.method public static synthetic $r8$lambda$0rYXcgTlWco-7GhTrYGZ7VKlNxA(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0, p1, p2}, Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion;->createIoExecutor$lambda$0(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$createIoExecutor(Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion;Ljava/lang/String;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion;->createIoExecutor(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method private final createIoExecutor(Ljava/lang/String;)Ljava/util/concurrent/Executor;
    .locals 2

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 19
    new-instance v1, Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string v0, "newCachedThreadPool {\n  \u2026Name-$tid\")\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/concurrent/Executor;

    return-object p1
.end method

.method private static final createIoExecutor$lambda$0(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    const-string v0, "$atomicTid"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$libraryPackageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    .line 21
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tracer-io-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0x2d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final get(Lru/ok/tracer/lite/TracerLite;)Lru/ok/tracer/lite/utils/TracerExecutorsHolder;
    .locals 1

    const-string v0, "tracer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lru/ok/tracer/lite/TracerLite;->getExecutorHolder$tracer_lite_commons_release()Lru/ok/tracer/lite/utils/TracerExecutorsHolder;

    move-result-object p1

    return-object p1
.end method
