.class public Lcom/applovin/impl/sdk/e/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/e/o$b;,
        Lcom/applovin/impl/sdk/e/o$c;,
        Lcom/applovin/impl/sdk/e/o$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final b:Lcom/applovin/impl/sdk/p;

.field private final c:Lcom/applovin/impl/sdk/y;

.field private final d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/e/o$c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Object;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 136
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/e/o;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/e/o;->f:Ljava/util/List;

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/e/o;->g:Ljava/lang/Object;

    .line 156
    iput-object p1, p0, Lcom/applovin/impl/sdk/e/o;->b:Lcom/applovin/impl/sdk/p;

    .line 157
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/e/o;->c:Lcom/applovin/impl/sdk/y;

    .line 159
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->cr:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "auxiliary_operations"

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/sdk/e/o;->a(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/e/o;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 160
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->as:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string/jumbo v0, "shared_thread_pool"

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/e/o;->a(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/o;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/e/o;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/applovin/impl/sdk/e/o;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p0
.end method

.method private a(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 2

    .line 354
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/applovin/impl/sdk/e/o$b;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/sdk/e/o$b;-><init>(Lcom/applovin/impl/sdk/e/o;Ljava/lang/String;)V

    invoke-direct {v0, p2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method private a(Ljava/lang/Runnable;JZ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    if-eqz p4, :cond_0

    .line 268
    iget-object p4, p0, Lcom/applovin/impl/sdk/e/o;->b:Lcom/applovin/impl/sdk/p;

    new-instance v0, Lcom/applovin/impl/sdk/e/o$1;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/sdk/e/o$1;-><init>(Lcom/applovin/impl/sdk/e/o;Ljava/lang/Runnable;)V

    invoke-static {p2, p3, p4, v0}, Lcom/applovin/impl/sdk/utils/f;->a(JLcom/applovin/impl/sdk/p;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/f;

    goto :goto_0

    .line 279
    :cond_0
    iget-object p4, p0, Lcom/applovin/impl/sdk/e/o;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, p1, p2, p3, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 284
    :cond_1
    iget-object p2, p0, Lcom/applovin/impl/sdk/e/o;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/e/o$c;)Z
    .locals 3

    .line 328
    invoke-static {p1}, Lcom/applovin/impl/sdk/e/o$c;->a(Lcom/applovin/impl/sdk/e/o$c;)Lcom/applovin/impl/sdk/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/e/a;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/o;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_0
    iget-boolean v2, p0, Lcom/applovin/impl/sdk/e/o;->h:Z

    if-eqz v2, :cond_1

    .line 339
    monitor-exit v0

    return v1

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/o;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 349
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/e/o;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/applovin/impl/sdk/e/o;->b:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/e/o;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/applovin/impl/sdk/e/o;->c:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/e/a;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 241
    :try_start_0
    invoke-static {}, Lcom/applovin/impl/sdk/utils/Utils;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/o;->b:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->fO:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/o;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/e/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 252
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/o;->c:Lcom/applovin/impl/sdk/y;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/e/a;->e()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Task failed execution"

    invoke-virtual {v1, p1, v2, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 257
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/o;->c:Lcom/applovin/impl/sdk/y;

    const-string v0, "TaskManager"

    const-string v1, "Attempted to execute null task immediately"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 179
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;J)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;J)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 191
    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;JZ)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;JZ)V
    .locals 2

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_2

    .line 200
    new-instance v0, Lcom/applovin/impl/sdk/e/o$c;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/o;->b:Lcom/applovin/impl/sdk/p;

    invoke-direct {v0, v1, p1, p2}, Lcom/applovin/impl/sdk/e/o$c;-><init>(Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V

    .line 204
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/o$c;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 209
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/applovin/impl/sdk/e/o;->a(Ljava/lang/Runnable;JZ)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/applovin/impl/sdk/e/o;->c:Lcom/applovin/impl/sdk/y;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/e/a;->e()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Task execution delayed until after init"

    invoke-virtual {p2, p1, p3}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    .line 198
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "Invalid delay (millis) specified: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 197
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No task specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/o;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/e/o;->h:Z

    return v0
.end method

.method public b()Ljava/util/concurrent/Executor;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/o;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public c()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 229
    sget-object v0, Lcom/applovin/impl/sdk/e/o;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public d()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/o;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 299
    :try_start_0
    iput-boolean v1, p0, Lcom/applovin/impl/sdk/e/o;->h:Z

    .line 300
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 4

    .line 310
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/o;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 312
    :try_start_0
    iput-boolean v1, p0, Lcom/applovin/impl/sdk/e/o;->h:Z

    .line 315
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/o;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/e/o$c;

    .line 317
    invoke-static {v2}, Lcom/applovin/impl/sdk/e/o$c;->a(Lcom/applovin/impl/sdk/e/o$c;)Lcom/applovin/impl/sdk/e/a;

    move-result-object v3

    invoke-static {v2}, Lcom/applovin/impl/sdk/e/o$c;->b(Lcom/applovin/impl/sdk/e/o$c;)Lcom/applovin/impl/sdk/e/o$a;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V

    goto :goto_0

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/o;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 322
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
