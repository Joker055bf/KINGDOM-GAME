.class Lcom/applovin/impl/sdk/p$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/network/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/p;->az()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/p;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 909
    iput-object p1, p0, Lcom/applovin/impl/sdk/p$6;->a:Lcom/applovin/impl/sdk/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 913
    iget-object v0, p0, Lcom/applovin/impl/sdk/p$6;->a:Lcom/applovin/impl/sdk/p;

    invoke-static {v0}, Lcom/applovin/impl/sdk/p;->c(Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/p$6;->a:Lcom/applovin/impl/sdk/p;

    invoke-static {v0}, Lcom/applovin/impl/sdk/p;->c(Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/y;

    move-result-object v0

    const-string v1, "AppLovinSdk"

    const-string v2, "Connected to internet - re-initializing SDK"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/p$6;->a:Lcom/applovin/impl/sdk/p;

    invoke-static {v0}, Lcom/applovin/impl/sdk/p;->g(Lcom/applovin/impl/sdk/p;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 916
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/p$6;->a:Lcom/applovin/impl/sdk/p;

    invoke-static {v1}, Lcom/applovin/impl/sdk/p;->h(Lcom/applovin/impl/sdk/p;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 918
    iget-object v1, p0, Lcom/applovin/impl/sdk/p$6;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->b()V

    .line 920
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    iget-object v0, p0, Lcom/applovin/impl/sdk/p$6;->a:Lcom/applovin/impl/sdk/p;

    invoke-static {v0}, Lcom/applovin/impl/sdk/p;->i(Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/network/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/applovin/impl/sdk/network/d;->b(Lcom/applovin/impl/sdk/network/d$a;)V

    return-void

    :catchall_0
    move-exception v1

    .line 920
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public b()V
    .locals 0

    return-void
.end method
