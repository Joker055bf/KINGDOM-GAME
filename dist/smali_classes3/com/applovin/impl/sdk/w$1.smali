.class Lcom/applovin/impl/sdk/w$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/w;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/applovin/impl/sdk/w;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/w;J)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/applovin/impl/sdk/w$1;->b:Lcom/applovin/impl/sdk/w;

    iput-wide p2, p0, Lcom/applovin/impl/sdk/w$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/applovin/impl/sdk/w$1;->b:Lcom/applovin/impl/sdk/w;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/w$1;->b:Lcom/applovin/impl/sdk/w;

    invoke-static {v2}, Lcom/applovin/impl/sdk/w;->a(Lcom/applovin/impl/sdk/w;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 87
    iget-wide v2, p0, Lcom/applovin/impl/sdk/w$1;->a:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/applovin/impl/sdk/w$1;->b:Lcom/applovin/impl/sdk/w;

    invoke-static {v0}, Lcom/applovin/impl/sdk/w;->b(Lcom/applovin/impl/sdk/w;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/w$1;->b:Lcom/applovin/impl/sdk/w;

    invoke-static {v0}, Lcom/applovin/impl/sdk/w;->b(Lcom/applovin/impl/sdk/w;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    const-string v1, "FullScreenAdTracker"

    const-string v2, "Resetting \"pending display\" state..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/w$1;->b:Lcom/applovin/impl/sdk/w;

    invoke-static {v0}, Lcom/applovin/impl/sdk/w;->c(Lcom/applovin/impl/sdk/w;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void
.end method
