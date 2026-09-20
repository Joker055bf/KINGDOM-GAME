.class public final Lcom/openmediation/sdk/a/i;
.super Lcom/crosspromotion/sdk/core/a;


# instance fields
.field private k:I

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final m:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/crosspromotion/sdk/bean/AdBean;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/crosspromotion/sdk/bean/AdBean;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final p:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final q:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/crosspromotion/sdk/core/a;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/openmediation/sdk/a/i;->k:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/openmediation/sdk/a/i;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/openmediation/sdk/a/i;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/openmediation/sdk/a/i;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/openmediation/sdk/a/i;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/openmediation/sdk/a/i;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/openmediation/sdk/a/i;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object p1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacement(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Placement;->getCs()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/a/i;->a(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/openmediation/sdk/a/i;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method private a(I)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/openmediation/sdk/a/i;->k:I

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/crosspromotion/sdk/bean/AdBean;Lcom/crosspromotion/sdk/promotion/PromotionAdRect;)V
    .locals 8

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->j:Ljava/util/Map;

    invoke-static {v0, v1, p2}, Lcom/crosspromotion/sdk/utils/ResponseUtil;->setInstanceRevenue(Ljava/lang/String;Ljava/util/Map;Lcom/crosspromotion/sdk/bean/AdBean;)V

    iput-object p2, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    new-instance v7, Lcom/openmediation/sdk/a/i$b;

    invoke-direct {v7, p0}, Lcom/openmediation/sdk/a/i$b;-><init>(Lcom/openmediation/sdk/a/i;)V

    invoke-static {}, Lcom/openmediation/sdk/a/j;->c()Lcom/openmediation/sdk/a/j;

    move-result-object v2

    iget-object v5, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p3

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/openmediation/sdk/a/j;->a(Landroid/app/Activity;Lcom/crosspromotion/sdk/promotion/PromotionAdRect;Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;Lcom/openmediation/sdk/a/j$c;)V

    return-void
.end method

.method static synthetic a(Lcom/openmediation/sdk/a/i;Lcom/crosspromotion/sdk/utils/error/Error;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/a;->d(Lcom/crosspromotion/sdk/utils/error/Error;)V

    return-void
.end method

.method static synthetic b(Lcom/openmediation/sdk/a/i;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method private b(Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/a/i;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/openmediation/sdk/a/i;->k:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PromotionAd updateStock: Stock size is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AdBeanQueue size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/a/i;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\nSuccessCount is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/a/i;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", FailedCount is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/a/i;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PendingCount is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/a/i;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/openmediation/sdk/a/i;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "PromotionAd updateStock resource downloading, return"

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/openmediation/sdk/a/i;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/openmediation/sdk/a/i;->t()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/a/i;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-super {p0, p1}, Lcom/crosspromotion/sdk/core/a;->a(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/openmediation/sdk/a/i;)V
    .locals 0

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->m()V

    return-void
.end method

.method static synthetic d(Lcom/openmediation/sdk/a/i;)V
    .locals 0

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->m()V

    return-void
.end method

.method private q()V
    .locals 1

    invoke-direct {p0}, Lcom/openmediation/sdk/a/i;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/openmediation/sdk/a/i;->v()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PromotionAd afterCallback: called internalPreLoad()"

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/openmediation/sdk/a/i;->t()V

    :cond_0
    return-void
.end method

.method private r()Z
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/a/i;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/openmediation/sdk/a/i;->k:I

    if-lt v0, v1, :cond_0

    const-string v0, "PromotionAd updateStock, StockQueue is full"

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/a/i;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PromotionAd updateStock, canPreload: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    return v0
.end method

.method private t()V
    .locals 4

    const-string v0, "PromotionAd download resource internalPreLoad"

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/i;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/openmediation/sdk/a/i;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/openmediation/sdk/a/i;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/openmediation/sdk/a/i;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    iget-object v1, p0, Lcom/openmediation/sdk/a/i;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/openmediation/sdk/a/i;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/crosspromotion/sdk/bean/AdBean;

    iget-object v2, p0, Lcom/openmediation/sdk/a/i;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PromotionAd download resource mPendingCount.get()  = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/openmediation/sdk/a/i;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/crosspromotion/sdk/core/a;->b(Lcom/crosspromotion/sdk/bean/AdBean;)V

    iget-object v1, p0, Lcom/openmediation/sdk/a/i;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/openmediation/sdk/a/i;->k:I

    sub-int/2addr v2, v0

    if-lt v1, v2, :cond_0

    :cond_1
    return-void
.end method

.method private u()Z
    .locals 4

    iget-object v0, p0, Lcom/openmediation/sdk/a/i;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/a/i;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {v2}, Lcom/crosspromotion/sdk/bean/AdBean;->isExpired()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/openmediation/sdk/a/i;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private v()Z
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/a/i;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/openmediation/sdk/a/i;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/openmediation/sdk/a/i;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/crosspromotion/sdk/promotion/PromotionAdRect;)V
    .locals 2

    const/16 v0, 0x134

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;->getWidth()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/promotion/PromotionAdRect;->getHeight()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/openmediation/sdk/a/d;->a(Ljava/lang/String;Lcom/crosspromotion/sdk/core/a;)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/i;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x131

    invoke-static {p1}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/a;->d(Lcom/crosspromotion/sdk/utils/error/Error;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/a/i;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-direct {p0, p1, v0, p2}, Lcom/openmediation/sdk/a/i;->a(Landroid/app/Activity;Lcom/crosspromotion/sdk/bean/AdBean;Lcom/crosspromotion/sdk/promotion/PromotionAdRect;)V

    return-void

    :cond_3
    :goto_0
    new-instance p1, Lcom/crosspromotion/sdk/utils/error/Error;

    const-string p2, "Show failed: Invalid Argument, PromotionAd width or height must be positive"

    invoke-direct {p1, v0, p2}, Lcom/crosspromotion/sdk/utils/error/Error;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/a;->d(Lcom/crosspromotion/sdk/utils/error/Error;)V

    return-void

    :cond_4
    :goto_1
    new-instance p1, Lcom/crosspromotion/sdk/utils/error/Error;

    const-string p2, "Show failed: Invalid Argument, activity is isDestroyed"

    invoke-direct {p1, v0, p2}, Lcom/crosspromotion/sdk/utils/error/Error;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/a;->d(Lcom/crosspromotion/sdk/utils/error/Error;)V

    return-void
.end method

.method protected a(Lcom/crosspromotion/sdk/bean/AdBean;)V
    .locals 2

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->j:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/crosspromotion/sdk/utils/ResponseUtil;->setInstanceRevenue(Ljava/lang/String;Ljava/util/Map;Lcom/crosspromotion/sdk/bean/AdBean;)V

    invoke-static {}, Lcom/openmediation/sdk/a/j;->c()Lcom/openmediation/sdk/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/a/j;->e()V

    iget-object v0, p0, Lcom/openmediation/sdk/a/i;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/openmediation/sdk/a/i;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/openmediation/sdk/a/i;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/crosspromotion/sdk/core/a;->a(Lcom/crosspromotion/sdk/bean/AdBean;)V

    iget-object p1, p0, Lcom/openmediation/sdk/a/i;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "PromotionAd onAdsLoadSuccess: PlacementId: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", Stock size is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/openmediation/sdk/a/i;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", AdBeanQueue size is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/openmediation/sdk/a/i;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",\nSuccessCount is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/openmediation/sdk/a/i;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", FailedCount is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/openmediation/sdk/a/i;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", PendingCount is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/openmediation/sdk/a/i;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/crosspromotion/sdk/promotion/PromotionAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->d:Lcom/openmediation/sdk/a/g;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/a/g;->a(Lcom/crosspromotion/sdk/promotion/PromotionAdListener;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/crosspromotion/sdk/bean/AdBean;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crosspromotion/sdk/bean/AdBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/bean/AdBean;->getResources()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/bean/AdBean;->getResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/openmediation/sdk/a/i;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/openmediation/sdk/a/i;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xd0

    invoke-static {p1}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/a/i;->c(Lcom/crosspromotion/sdk/utils/error/Error;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/openmediation/sdk/a/i;->t()V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Lcom/openmediation/sdk/a/i;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->c()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/a/i;->b(Ljava/util/Map;)V

    return-void
.end method

.method protected c(Lcom/crosspromotion/sdk/utils/error/Error;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, ", "

    const-string v2, "PromotionAd onAdsLoadFailed: "

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/utils/error/Error;->getCode()I

    move-result v3

    const/16 v4, 0xd5

    if-eq v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/a/i;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Lcom/crosspromotion/sdk/core/a;->c(Lcom/crosspromotion/sdk/utils/error/Error;)V

    iget-object p1, p0, Lcom/openmediation/sdk/a/i;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/openmediation/sdk/a/i;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PromotionAd onAdsLoadFailed: Stock size is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/openmediation/sdk/a/i;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", AdBeanQueue size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/a/i;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\nSuccessCount is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/a/i;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", FailedCount is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/a/i;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PendingCount is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/a/i;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/a/i;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/openmediation/sdk/a/i;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, p0, Lcom/openmediation/sdk/a/i;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lt v1, v2, :cond_3

    const-string v1, "PromotionAd called super.onAdsLoadFailed(error)"

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/a/i;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-super {p0, p1}, Lcom/crosspromotion/sdk/core/a;->c(Lcom/crosspromotion/sdk/utils/error/Error;)V

    iget-object p1, p0, Lcom/openmediation/sdk/a/i;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/openmediation/sdk/a/i;->q()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected g()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public k()Z
    .locals 2

    invoke-direct {p0}, Lcom/openmediation/sdk/a/i;->u()Z

    move-result v0

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->j:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/openmediation/sdk/a/i;->b(Ljava/util/Map;)V

    return v0
.end method

.method public s()V
    .locals 1

    new-instance v0, Lcom/openmediation/sdk/a/i$a;

    invoke-direct {v0, p0}, Lcom/openmediation/sdk/a/i$a;-><init>(Lcom/openmediation/sdk/a/i;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/HandlerUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
