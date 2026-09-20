.class Lcom/applovin/impl/sdk/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/h;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/h;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/applovin/impl/sdk/h$a;->a:Lcom/applovin/impl/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/h;Lcom/applovin/impl/sdk/h$1;)V
    .locals 0

    .line 254
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/h$a;-><init>(Lcom/applovin/impl/sdk/h;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 260
    iget-object v0, p0, Lcom/applovin/impl/sdk/h$a;->a:Lcom/applovin/impl/sdk/h;

    invoke-static {v0}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/impl/sdk/h;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/h$a;->a:Lcom/applovin/impl/sdk/h;

    invoke-static {v2}, Lcom/applovin/impl/sdk/h;->b(Lcom/applovin/impl/sdk/h;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/applovin/impl/sdk/h$a;->a:Lcom/applovin/impl/sdk/h;

    invoke-static {v2}, Lcom/applovin/impl/sdk/h;->e(Lcom/applovin/impl/sdk/h;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/h$a;->a:Lcom/applovin/impl/sdk/h;

    invoke-static {v0}, Lcom/applovin/impl/sdk/h;->f(Lcom/applovin/impl/sdk/h;)V

    .line 266
    iget-object v0, p0, Lcom/applovin/impl/sdk/h$a;->a:Lcom/applovin/impl/sdk/h;

    invoke-static {v0}, Lcom/applovin/impl/sdk/h;->g(Lcom/applovin/impl/sdk/h;)V

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/h$a;->a:Lcom/applovin/impl/sdk/h;

    invoke-static {v0}, Lcom/applovin/impl/sdk/h;->i(Lcom/applovin/impl/sdk/h;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/h$a;->a:Lcom/applovin/impl/sdk/h;

    invoke-static {v1}, Lcom/applovin/impl/sdk/h;->h(Lcom/applovin/impl/sdk/h;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
