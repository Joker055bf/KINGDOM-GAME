.class public Lcom/chartboost/sdk/impl/s2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/chartboost/sdk/impl/s5;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/chartboost/sdk/impl/s5;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/chartboost/sdk/impl/s5;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/chartboost/sdk/impl/s5;",
            ">;>;"
        }
    .end annotation
.end field

.field public static l:Lcom/chartboost/sdk/impl/r5;

.field public static m:Lcom/chartboost/sdk/impl/s2;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/chartboost/sdk/impl/r2;

.field public final c:Lcom/chartboost/sdk/impl/g1;

.field public final d:Lcom/chartboost/sdk/impl/u4;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public final f:Lcom/chartboost/sdk/impl/i4;

.field public final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/impl/n5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$X_W4jfxyE956et1MGmVCSL9GOWY(Lcom/chartboost/sdk/impl/s2;Lcom/chartboost/sdk/impl/r5;Lcom/chartboost/sdk/impl/s5;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/s2;->b(Lcom/chartboost/sdk/impl/r5;Lcom/chartboost/sdk/impl/s5;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/s2;->h:Ljava/util/HashMap;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/s2;->i:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/s2;->j:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/s2;->k:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/r2;Lcom/chartboost/sdk/impl/g1;Lcom/chartboost/sdk/impl/u4;Ljava/util/concurrent/ScheduledExecutorService;Lcom/chartboost/sdk/impl/r5;Lcom/chartboost/sdk/impl/i4;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/s2;->g:Ljava/util/HashMap;

    .line 16
    iput-object p1, p0, Lcom/chartboost/sdk/impl/s2;->a:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/chartboost/sdk/impl/s2;->b:Lcom/chartboost/sdk/impl/r2;

    .line 18
    iput-object p3, p0, Lcom/chartboost/sdk/impl/s2;->c:Lcom/chartboost/sdk/impl/g1;

    .line 19
    iput-object p4, p0, Lcom/chartboost/sdk/impl/s2;->d:Lcom/chartboost/sdk/impl/u4;

    .line 20
    iput-object p5, p0, Lcom/chartboost/sdk/impl/s2;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 21
    sput-object p6, Lcom/chartboost/sdk/impl/s2;->l:Lcom/chartboost/sdk/impl/r5;

    .line 22
    iput-object p7, p0, Lcom/chartboost/sdk/impl/s2;->f:Lcom/chartboost/sdk/impl/i4;

    .line 23
    sput-object p0, Lcom/chartboost/sdk/impl/s2;->m:Lcom/chartboost/sdk/impl/s2;

    return-void
.end method

.method public static a(Lcom/chartboost/sdk/impl/r5;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/chartboost/sdk/impl/s2;->l:Lcom/chartboost/sdk/impl/r5;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 35
    invoke-static {}, Lcom/chartboost/sdk/impl/s2;->b()Lcom/chartboost/sdk/impl/s2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0, p0, p1}, Lcom/chartboost/sdk/impl/s2;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "EventTracker"

    const-string p1, "EventTracker was not initialised when trying to clear."

    .line 39
    invoke-static {p0, p1}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static b()Lcom/chartboost/sdk/impl/s2;
    .locals 1

    .line 33
    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/s2;->m:Lcom/chartboost/sdk/impl/s2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(Lcom/chartboost/sdk/impl/n5;)V
    .locals 1

    .line 28
    invoke-static {}, Lcom/chartboost/sdk/impl/s2;->b()Lcom/chartboost/sdk/impl/s2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/s2;->a(Lcom/chartboost/sdk/impl/n5;)V

    goto :goto_0

    :cond_0
    const-string p0, "EventTracker"

    const-string v0, "EventTracker was not initialised when trying to trackAd."

    .line 32
    invoke-static {p0, v0}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic b(Lcom/chartboost/sdk/impl/r5;Lcom/chartboost/sdk/impl/s5;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/r5;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 26
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s2;->c:Lcom/chartboost/sdk/impl/g1;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s2;->c:Lcom/chartboost/sdk/impl/g1;

    new-instance v1, Lcom/chartboost/sdk/impl/t5;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/s2;->a()Lcom/chartboost/sdk/impl/p2;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/chartboost/sdk/impl/t5;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/s5;Lcom/chartboost/sdk/impl/p2;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/g1;->a(Lcom/chartboost/sdk/impl/c1;)V

    :cond_1
    return-void
.end method

.method public static d(Lcom/chartboost/sdk/impl/s5;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/impl/s2;->b()Lcom/chartboost/sdk/impl/s2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/s2;->e(Lcom/chartboost/sdk/impl/s5;)Lcom/chartboost/sdk/impl/s5;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventTracker was not initialised when trying to track. Event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/s5;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EventTracker"

    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/chartboost/sdk/impl/s5;)F
    .locals 5

    .line 4
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/s5;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/s5;->a()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/s5;->d()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/s2;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/s5;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/s5;->h()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/s5;->h()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v1, v3

    long-to-float p1, v1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    return p1

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a()Lcom/chartboost/sdk/impl/p2;
    .locals 7

    .line 29
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s2;->d:Lcom/chartboost/sdk/impl/u4;

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/u4;->a()Lcom/chartboost/sdk/impl/w4;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/chartboost/sdk/impl/s2;->a:Landroid/content/Context;

    .line 31
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/w4;->c()Lcom/chartboost/sdk/impl/e3;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/s2;->d:Lcom/chartboost/sdk/impl/u4;

    .line 32
    invoke-interface {v3}, Lcom/chartboost/sdk/impl/u4;->a()Lcom/chartboost/sdk/impl/w4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/w4;->h()Lcom/chartboost/sdk/impl/g5;

    move-result-object v3

    .line 33
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/w4;->g()Lcom/chartboost/sdk/impl/q4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chartboost/sdk/impl/q4;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/chartboost/sdk/impl/s2;->f:Lcom/chartboost/sdk/impl/i4;

    iget-object v6, v0, Lcom/chartboost/sdk/impl/w4;->h:Ljava/lang/String;

    .line 34
    invoke-static/range {v1 .. v6}, Lcom/chartboost/sdk/impl/p2;->a(Landroid/content/Context;Lcom/chartboost/sdk/impl/e3;Lcom/chartboost/sdk/impl/g5;Ljava/lang/String;Lcom/chartboost/sdk/impl/i4;Ljava/lang/String;)Lcom/chartboost/sdk/impl/p2;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/chartboost/sdk/impl/n5;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s2;->g:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/n5;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/n5;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/chartboost/sdk/impl/r5;Lcom/chartboost/sdk/impl/s5;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s2;->d:Lcom/chartboost/sdk/impl/u4;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/s2;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/s2;->e:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    new-instance v1, Lcom/chartboost/sdk/impl/s2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/chartboost/sdk/impl/s2$$ExternalSyntheticLambda0;-><init>(Lcom/chartboost/sdk/impl/s2;Lcom/chartboost/sdk/impl/r5;Lcom/chartboost/sdk/impl/s5;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/chartboost/sdk/impl/s5;",
            ">;)V"
        }
    .end annotation

    .line 16
    sget-object v0, Lcom/chartboost/sdk/impl/h3;->c:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    sget-object p1, Lcom/chartboost/sdk/impl/s2;->h:Ljava/util/HashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/h3;->d:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    sget-object p1, Lcom/chartboost/sdk/impl/s2;->i:Ljava/util/HashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 20
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/impl/h3;->e:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 21
    sget-object p1, Lcom/chartboost/sdk/impl/s2;->j:Ljava/util/HashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_2
    sget-object p1, Lcom/chartboost/sdk/impl/s2;->k:Ljava/util/HashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "cache_start"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "show_start"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final b(Lcom/chartboost/sdk/impl/s5;)V
    .locals 3

    .line 9
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/s2;->c(Lcom/chartboost/sdk/impl/s5;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s2;->g:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/s5;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/s5;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/n5;

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/s5;->a(Lcom/chartboost/sdk/impl/n5;)V

    .line 18
    :cond_1
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/s2;->a(Lcom/chartboost/sdk/impl/s5;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/s5;->a(F)V

    .line 19
    sget-object v0, Lcom/chartboost/sdk/impl/s2;->l:Lcom/chartboost/sdk/impl/r5;

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/s2;->a(Lcom/chartboost/sdk/impl/r5;Lcom/chartboost/sdk/impl/s5;)V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EventTracker"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/chartboost/sdk/impl/h3;->c:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/chartboost/sdk/impl/s2;->h:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/h3;->d:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p1, Lcom/chartboost/sdk/impl/s2;->i:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/impl/h3;->e:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    sget-object p1, Lcom/chartboost/sdk/impl/s2;->j:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_2
    sget-object p1, Lcom/chartboost/sdk/impl/s2;->k:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Lcom/chartboost/sdk/impl/s5;",
            ">;"
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/chartboost/sdk/impl/h3;->c:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    sget-object p1, Lcom/chartboost/sdk/impl/s2;->h:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    return-object p1

    .line 12
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/h3;->d:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    sget-object p1, Lcom/chartboost/sdk/impl/s2;->i:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    return-object p1

    .line 14
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/impl/h3;->e:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    sget-object p1, Lcom/chartboost/sdk/impl/s2;->j:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    return-object p1

    .line 17
    :cond_2
    sget-object p1, Lcom/chartboost/sdk/impl/s2;->k:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    return-object p1
.end method

.method public final c(Lcom/chartboost/sdk/impl/s5;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/s5;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/s2;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/s5;->a()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/s5;->d()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/s2;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v2

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 8
    :cond_0
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0, v0, v1, v2}, Lcom/chartboost/sdk/impl/s2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedList;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public e(Lcom/chartboost/sdk/impl/s5;)Lcom/chartboost/sdk/impl/s5;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/s2;->l:Lcom/chartboost/sdk/impl/r5;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/r5;->d()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s2;->b:Lcom/chartboost/sdk/impl/r2;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/r2;->b(Lcom/chartboost/sdk/impl/s5;)Lcom/chartboost/sdk/impl/s5;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s2;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/s2;->b(Lcom/chartboost/sdk/impl/s5;)V

    :cond_2
    return-object p1
.end method
