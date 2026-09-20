.class public Lcom/chartboost/sdk/impl/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/chartboost/sdk/impl/p0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/chartboost/sdk/impl/k5;

.field public final b:Lcom/chartboost/sdk/impl/h4;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/impl/l0;",
            ">;"
        }
    .end annotation
.end field

.field public final i:J

.field public final j:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/k5;Lcom/chartboost/sdk/impl/h4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;JLjava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/k5;",
            "Lcom/chartboost/sdk/impl/h4;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/impl/l0;",
            ">;J",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p0;->a:Lcom/chartboost/sdk/impl/k5;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/p0;->b:Lcom/chartboost/sdk/impl/h4;

    .line 4
    iput-object p3, p0, Lcom/chartboost/sdk/impl/p0;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/chartboost/sdk/impl/p0;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/chartboost/sdk/impl/p0;->e:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/chartboost/sdk/impl/p0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    iput-object p7, p0, Lcom/chartboost/sdk/impl/p0;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    iput-wide p8, p0, Lcom/chartboost/sdk/impl/p0;->i:J

    .line 10
    iput-object p10, p0, Lcom/chartboost/sdk/impl/p0;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    iput-object p11, p0, Lcom/chartboost/sdk/impl/p0;->f:Ljava/lang/String;

    .line 12
    invoke-virtual {p6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/p0;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->b:Lcom/chartboost/sdk/impl/h4;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/h4;->b()I

    move-result v0

    iget-object p1, p1, Lcom/chartboost/sdk/impl/p0;->b:Lcom/chartboost/sdk/impl/h4;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/h4;->b()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public a(Ljava/util/concurrent/Executor;Z)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p0;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/l0;

    if-eqz v0, :cond_1

    .line 5
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p0;->a:Lcom/chartboost/sdk/impl/k5;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/k5;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/chartboost/sdk/impl/p0;->i:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v1, v1

    .line 6
    new-instance v2, Lcom/chartboost/sdk/impl/m0;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/p0;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v2, v0, p2, v1, v3}, Lcom/chartboost/sdk/impl/m0;-><init>(Lcom/chartboost/sdk/impl/l0;ZII)V

    .line 10
    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/chartboost/sdk/impl/p0;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/p0;->a(Lcom/chartboost/sdk/impl/p0;)I

    move-result p1

    return p1
.end method
