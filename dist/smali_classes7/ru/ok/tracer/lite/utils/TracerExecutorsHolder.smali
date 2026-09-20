.class public final Lru/ok/tracer/lite/utils/TracerExecutorsHolder;
.super Ljava/lang/Object;
.source "TracerExecutorsHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0019\u0008\u0000\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lru/ok/tracer/lite/utils/TracerExecutorsHolder;",
        "",
        "configIoExecutor",
        "Ljava/util/concurrent/Executor;",
        "libraryPackageName",
        "",
        "(Ljava/util/concurrent/Executor;Ljava/lang/String;)V",
        "ioExecutor",
        "getIoExecutor",
        "()Ljava/util/concurrent/Executor;",
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
.field public static final Companion:Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion;


# instance fields
.field private final ioExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/ok/tracer/lite/utils/TracerExecutorsHolder;->Companion:Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 1

    const-string v0, "libraryPackageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 12
    sget-object p1, Lru/ok/tracer/lite/utils/TracerExecutorsHolder;->Companion:Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion;

    invoke-static {p1, p2}, Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion;->access$createIoExecutor(Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion;Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lru/ok/tracer/lite/utils/TracerExecutorsHolder;->ioExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final getIoExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/ok/tracer/lite/utils/TracerExecutorsHolder;->ioExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method
