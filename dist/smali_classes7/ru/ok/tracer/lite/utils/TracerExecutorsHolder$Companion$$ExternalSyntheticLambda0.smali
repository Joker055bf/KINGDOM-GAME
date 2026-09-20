.class public final synthetic Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    iget-object v0, p0, Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lru/ok/tracer/lite/utils/TracerExecutorsHolder$Companion;->$r8$lambda$0rYXcgTlWco-7GhTrYGZ7VKlNxA(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
