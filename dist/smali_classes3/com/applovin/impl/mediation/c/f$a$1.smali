.class Lcom/applovin/impl/mediation/c/f$a$1;
.super Lcom/applovin/impl/mediation/d/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/c/f$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/mediation/c/f$a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/c/f$a;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    invoke-direct {p0, p2}, Lcom/applovin/impl/mediation/d/a;-><init>(Lcom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method


# virtual methods
.method public onAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V
    .locals 10

    .line 394
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    invoke-static {p1}, Lcom/applovin/impl/mediation/c/f$a;->a(Lcom/applovin/impl/mediation/c/f$a;)J

    move-result-wide v2

    sub-long v7, v0, v2

    .line 395
    iget-object p1, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    invoke-static {p1}, Lcom/applovin/impl/mediation/c/f$a;->e(Lcom/applovin/impl/mediation/c/f$a;)Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    invoke-static {p1}, Lcom/applovin/impl/mediation/c/f$a;->g(Lcom/applovin/impl/mediation/c/f$a;)Lcom/applovin/impl/sdk/y;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    invoke-static {v0}, Lcom/applovin/impl/mediation/c/f$a;->f(Lcom/applovin/impl/mediation/c/f$a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad failed to load in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to load ad: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/applovin/mediation/MaxError;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/impl/mediation/c/f$a;->a(Lcom/applovin/impl/mediation/c/f$a;Ljava/lang/String;)V

    .line 400
    iget-object v4, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    invoke-static {v4}, Lcom/applovin/impl/mediation/c/f$a;->h(Lcom/applovin/impl/mediation/c/f$a;)Lcom/applovin/impl/mediation/a/a;

    move-result-object v5

    sget-object v6, Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;->FAILED_TO_LOAD:Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;

    move-object v9, p2

    invoke-static/range {v4 .. v9}, Lcom/applovin/impl/mediation/c/f$a;->a(Lcom/applovin/impl/mediation/c/f$a;Lcom/applovin/impl/mediation/a/a;Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;JLcom/applovin/mediation/MaxError;)V

    .line 404
    iget-object p1, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    iget-object p1, p1, Lcom/applovin/impl/mediation/c/f$a;->a:Lcom/applovin/impl/mediation/c/f;

    invoke-static {p1}, Lcom/applovin/impl/mediation/c/f;->i(Lcom/applovin/impl/mediation/c/f;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 407
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    invoke-static {p1}, Lcom/applovin/impl/mediation/c/f$a;->i(Lcom/applovin/impl/mediation/c/f$a;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_3

    .line 410
    iget-object p1, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    invoke-static {p1}, Lcom/applovin/impl/mediation/c/f$a;->j(Lcom/applovin/impl/mediation/c/f$a;)Lcom/applovin/impl/sdk/p;

    move-result-object p1

    sget-object v0, Lcom/applovin/impl/sdk/c/a;->Y:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 412
    iget-object p1, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    iget-object p1, p1, Lcom/applovin/impl/mediation/c/f$a;->a:Lcom/applovin/impl/mediation/c/f;

    invoke-static {p1}, Lcom/applovin/impl/mediation/c/f;->j(Lcom/applovin/impl/mediation/c/f;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_2
    return-void

    .line 419
    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    iget-object p1, p1, Lcom/applovin/impl/mediation/c/f$a;->a:Lcom/applovin/impl/mediation/c/f;

    invoke-static {p1}, Lcom/applovin/impl/mediation/c/f;->k(Lcom/applovin/impl/mediation/c/f;)Lcom/applovin/impl/mediation/a/a;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 422
    new-instance v0, Lcom/applovin/impl/mediation/c/f$a;

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    iget-object v1, v1, Lcom/applovin/impl/mediation/c/f$a;->a:Lcom/applovin/impl/mediation/c/f;

    invoke-direct {v0, v1, p1, p2}, Lcom/applovin/impl/mediation/c/f$a;-><init>(Lcom/applovin/impl/mediation/c/f;Lcom/applovin/impl/mediation/a/a;Z)V

    .line 423
    iget-object p1, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    iget-object p1, p1, Lcom/applovin/impl/mediation/c/f$a;->a:Lcom/applovin/impl/mediation/c/f;

    invoke-static {p1}, Lcom/applovin/impl/mediation/c/f;->l(Lcom/applovin/impl/mediation/c/f;)Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/mediation/d/c;->a(Lcom/applovin/mediation/MaxAdFormat;)Lcom/applovin/impl/sdk/e/o$a;

    move-result-object p1

    .line 425
    iget-object p2, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    invoke-static {p2}, Lcom/applovin/impl/mediation/c/f$a;->k(Lcom/applovin/impl/mediation/c/f$a;)Lcom/applovin/impl/sdk/p;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V

    goto :goto_0

    .line 430
    :cond_4
    new-instance p1, Lcom/applovin/impl/mediation/MaxErrorImpl;

    const/16 p2, -0x1389

    const-string v0, "MAX returned eligible ads from mediated networks, but all ads failed to load. Inspect getWaterfall() for more info."

    invoke-direct {p1, p2, v0}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    .line 432
    iget-object p2, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    iget-object p2, p2, Lcom/applovin/impl/mediation/c/f$a;->a:Lcom/applovin/impl/mediation/c/f;

    invoke-static {p2, p1}, Lcom/applovin/impl/mediation/c/f;->a(Lcom/applovin/impl/mediation/c/f;Lcom/applovin/mediation/MaxError;)V

    :goto_0
    return-void
.end method

.method public onAdLoaded(Lcom/applovin/mediation/MaxAd;)V
    .locals 10

    .line 372
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    const-string v1, "loaded ad"

    invoke-static {v0, v1}, Lcom/applovin/impl/mediation/c/f$a;->a(Lcom/applovin/impl/mediation/c/f$a;Ljava/lang/String;)V

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    invoke-static {v2}, Lcom/applovin/impl/mediation/c/f$a;->a(Lcom/applovin/impl/mediation/c/f$a;)J

    move-result-wide v2

    sub-long v7, v0, v2

    .line 375
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    invoke-static {v0}, Lcom/applovin/impl/mediation/c/f$a;->b(Lcom/applovin/impl/mediation/c/f$a;)Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    invoke-static {v0}, Lcom/applovin/impl/mediation/c/f$a;->d(Lcom/applovin/impl/mediation/c/f$a;)Lcom/applovin/impl/sdk/y;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    invoke-static {v1}, Lcom/applovin/impl/mediation/c/f$a;->c(Lcom/applovin/impl/mediation/c/f$a;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ad loaded in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_0
    iget-object v4, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    check-cast p1, Lcom/applovin/impl/mediation/a/a;

    sget-object v6, Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;->AD_LOADED:Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;

    const/4 v9, 0x0

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lcom/applovin/impl/mediation/c/f$a;->a(Lcom/applovin/impl/mediation/c/f$a;Lcom/applovin/impl/mediation/a/a;Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;JLcom/applovin/mediation/MaxError;)V

    .line 381
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    iget-object v0, v0, Lcom/applovin/impl/mediation/c/f$a;->a:Lcom/applovin/impl/mediation/c/f;

    invoke-static {v0}, Lcom/applovin/impl/mediation/c/f;->h(Lcom/applovin/impl/mediation/c/f;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/applovin/impl/mediation/a/a;

    .line 383
    iget-object v2, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    sget-object v4, Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;->AD_LOAD_NOT_ATTEMPTED:Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/applovin/impl/mediation/c/f$a;->a(Lcom/applovin/impl/mediation/c/f$a;Lcom/applovin/impl/mediation/a/a;Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;JLcom/applovin/mediation/MaxError;)V

    goto :goto_0

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/f$a$1;->a:Lcom/applovin/impl/mediation/c/f$a;

    iget-object v0, v0, Lcom/applovin/impl/mediation/c/f$a;->a:Lcom/applovin/impl/mediation/c/f;

    invoke-static {v0, p1}, Lcom/applovin/impl/mediation/c/f;->a(Lcom/applovin/impl/mediation/c/f;Lcom/applovin/impl/mediation/a/a;)V

    return-void
.end method
