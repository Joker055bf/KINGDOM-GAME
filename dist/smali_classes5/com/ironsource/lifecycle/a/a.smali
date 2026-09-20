.class public Lcom/ironsource/lifecycle/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/lang/String; = "a"


# instance fields
.field public final a:Lcom/ironsource/lifecycle/d;

.field public final b:Lcom/ironsource/mediationsdk/server/b;

.field public final c:Lcom/ironsource/lifecycle/c;

.field private final e:Ljava/lang/Runnable;

.field private f:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lcom/ironsource/lifecycle/d;Lcom/ironsource/mediationsdk/server/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ironsource/lifecycle/a/a$1;

    invoke-direct {v0, p0}, Lcom/ironsource/lifecycle/a/a$1;-><init>(Lcom/ironsource/lifecycle/a/a;)V

    iput-object v0, p0, Lcom/ironsource/lifecycle/a/a;->c:Lcom/ironsource/lifecycle/c;

    iput-object p1, p0, Lcom/ironsource/lifecycle/a/a;->e:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/ironsource/lifecycle/a/a;->a:Lcom/ironsource/lifecycle/d;

    iput-object p3, p0, Lcom/ironsource/lifecycle/a/a;->b:Lcom/ironsource/mediationsdk/server/b;

    return-void
.end method

.method static synthetic a(Lcom/ironsource/lifecycle/a/a;)Lcom/ironsource/mediationsdk/server/b;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/lifecycle/a/a;->b:Lcom/ironsource/mediationsdk/server/b;

    return-object p0
.end method

.method static synthetic a(Lcom/ironsource/lifecycle/a/a;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ironsource/lifecycle/a/a;->b(J)V

    return-void
.end method

.method private b(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/ironsource/lifecycle/a/a;->a()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/lifecycle/a/a;->f:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/lifecycle/a/a$2;

    invoke-direct {v1, p0}, Lcom/ironsource/lifecycle/a/a$2;-><init>(Lcom/ironsource/lifecycle/a/a;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method static synthetic b(Lcom/ironsource/lifecycle/a/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ironsource/lifecycle/a/a;->a()V

    return-void
.end method

.method static synthetic c(Lcom/ironsource/lifecycle/a/a;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/lifecycle/a/a;->e:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/lifecycle/a/a;->f:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/lifecycle/a/a;->f:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    sget-object p1, Lcom/ironsource/lifecycle/a/a;->d:Ljava/lang/String;

    const-string p2, "cannot start timer with delay < 0"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ironsource/lifecycle/a/a;->a:Lcom/ironsource/lifecycle/d;

    iget-object v1, p0, Lcom/ironsource/lifecycle/a/a;->c:Lcom/ironsource/lifecycle/c;

    invoke-virtual {v0, v1}, Lcom/ironsource/lifecycle/d;->a(Lcom/ironsource/lifecycle/c;)V

    iget-object v0, p0, Lcom/ironsource/lifecycle/a/a;->b:Lcom/ironsource/mediationsdk/server/b;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/server/b;->a(J)V

    iget-object v0, p0, Lcom/ironsource/lifecycle/a/a;->a:Lcom/ironsource/lifecycle/d;

    invoke-virtual {v0}, Lcom/ironsource/lifecycle/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/ironsource/lifecycle/a/a;->b:Lcom/ironsource/mediationsdk/server/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/mediationsdk/server/b;->b(J)V

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/lifecycle/a/a;->b(J)V

    return-void
.end method
