.class public final Lcom/applovin/impl/adview/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/adview/j$a;,
        Lcom/applovin/impl/adview/j$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/y;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/adview/j$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/applovin/impl/sdk/p;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/adview/j;->c:Ljava/util/Set;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/adview/j;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 38
    iput-object p1, p0, Lcom/applovin/impl/adview/j;->b:Landroid/os/Handler;

    .line 39
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/adview/j;->a:Lcom/applovin/impl/sdk/y;

    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No handler specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/adview/j;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/applovin/impl/adview/j;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private a(Lcom/applovin/impl/adview/j$b;I)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/applovin/impl/adview/j;->b:Landroid/os/Handler;

    new-instance v1, Lcom/applovin/impl/adview/j$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/impl/adview/j$1;-><init>(Lcom/applovin/impl/adview/j;Lcom/applovin/impl/adview/j$b;I)V

    .line 135
    invoke-static {p1}, Lcom/applovin/impl/adview/j$b;->c(Lcom/applovin/impl/adview/j$b;)J

    move-result-wide p1

    .line 100
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/j;Lcom/applovin/impl/adview/j$b;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/adview/j;->a(Lcom/applovin/impl/adview/j$b;I)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/adview/j;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/applovin/impl/adview/j;->a:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 47
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/applovin/impl/adview/j;->c:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 49
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    const-string v2, "CountdownManager"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/adview/j;->a:Lcom/applovin/impl/sdk/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Starting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " countdowns..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/adview/j;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 53
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/impl/adview/j$b;

    .line 55
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/applovin/impl/adview/j;->a:Lcom/applovin/impl/sdk/y;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Starting countdown: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/applovin/impl/adview/j$b;->a(Lcom/applovin/impl/adview/j$b;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for generation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_1
    invoke-direct {p0, v3, v1}, Lcom/applovin/impl/adview/j;->a(Lcom/applovin/impl/adview/j$b;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;JLcom/applovin/impl/adview/j$a;)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/applovin/impl/adview/j;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 92
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/j;->a:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding countdown: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CountdownManager"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    new-instance v0, Lcom/applovin/impl/adview/j$b;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/applovin/impl/adview/j$b;-><init>(Ljava/lang/String;JLcom/applovin/impl/adview/j$a;Lcom/applovin/impl/adview/j$1;)V

    .line 95
    iget-object p1, p0, Lcom/applovin/impl/adview/j;->c:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 90
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No handler specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid step specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 3

    .line 65
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/j;->a:Lcom/applovin/impl/sdk/y;

    const-string v1, "CountdownManager"

    const-string v2, "Removing all countdowns..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/adview/j;->c()V

    .line 68
    iget-object v0, p0, Lcom/applovin/impl/adview/j;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public c()V
    .locals 3

    .line 76
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/j;->a:Lcom/applovin/impl/sdk/y;

    const-string v1, "CountdownManager"

    const-string v2, "Stopping countdowns..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/j;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 81
    iget-object v0, p0, Lcom/applovin/impl/adview/j;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
