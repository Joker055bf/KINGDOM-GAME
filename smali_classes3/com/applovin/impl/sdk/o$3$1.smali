.class Lcom/applovin/impl/sdk/o$3$1;
.super Lcom/applovin/impl/sdk/utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/o$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/o$3;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/o$3;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/applovin/impl/sdk/o$3$1;->a:Lcom/applovin/impl/sdk/o$3;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 119
    instance-of v0, p1, Lcom/applovin/sdk/AppLovinWebViewActivity;

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/applovin/impl/sdk/o$3$1;->a:Lcom/applovin/impl/sdk/o$3;

    iget-object v0, v0, Lcom/applovin/impl/sdk/o$3;->c:Lcom/applovin/impl/sdk/o;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/o;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/applovin/impl/sdk/o;->f()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 124
    :cond_0
    check-cast p1, Lcom/applovin/sdk/AppLovinWebViewActivity;

    .line 125
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 128
    iget-object v0, p0, Lcom/applovin/impl/sdk/o$3$1;->a:Lcom/applovin/impl/sdk/o$3;

    iget-object v0, v0, Lcom/applovin/impl/sdk/o$3;->c:Lcom/applovin/impl/sdk/o;

    invoke-static {v0}, Lcom/applovin/impl/sdk/o;->a(Lcom/applovin/impl/sdk/o;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->aG:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/applovin/impl/sdk/o$3$1;->a:Lcom/applovin/impl/sdk/o$3;

    iget-object v1, v1, Lcom/applovin/impl/sdk/o$3;->c:Lcom/applovin/impl/sdk/o;

    invoke-virtual {p1, v0, v1}, Lcom/applovin/sdk/AppLovinWebViewActivity;->loadUrl(Ljava/lang/String;Lcom/applovin/sdk/AppLovinWebViewActivity$EventListener;)V

    .line 132
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->e()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void
.end method
