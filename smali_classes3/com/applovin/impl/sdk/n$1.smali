.class Lcom/applovin/impl/sdk/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/n;->a(JLcom/applovin/impl/sdk/p;Lcom/applovin/impl/sdk/n$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/p;

.field final synthetic b:Lcom/applovin/impl/sdk/n$a;

.field final synthetic c:Lcom/applovin/impl/sdk/n;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/n;Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/sdk/n$a;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/applovin/impl/sdk/n$1;->c:Lcom/applovin/impl/sdk/n;

    iput-object p2, p0, Lcom/applovin/impl/sdk/n$1;->a:Lcom/applovin/impl/sdk/p;

    iput-object p3, p0, Lcom/applovin/impl/sdk/n$1;->b:Lcom/applovin/impl/sdk/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/applovin/impl/sdk/n$1;->c:Lcom/applovin/impl/sdk/n;

    invoke-static {v0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/o;->d()Z

    move-result v0

    const-string v1, "ConsentAlertManager"

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/applovin/impl/sdk/n$1;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/n$1;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    const-string v2, "Consent dialog already showing, skip showing of consent alert"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/n$1;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->w()Lcom/applovin/impl/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 105
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/i;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 126
    :cond_2
    new-instance v0, Lcom/applovin/impl/sdk/n$1$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/n$1$1;-><init>(Lcom/applovin/impl/sdk/n$1;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/applovin/impl/sdk/n$1;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/sdk/n$1;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    const-string v2, "No parent Activity found - rescheduling consent alert..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/n$1;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/sdk/n$1;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    const-string v2, "No internet available - rescheduling consent alert..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_5
    :goto_1
    invoke-static {}, Lcom/applovin/impl/sdk/n;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    iget-object v0, p0, Lcom/applovin/impl/sdk/n$1;->a:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->aS:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 121
    iget-object v2, p0, Lcom/applovin/impl/sdk/n$1;->c:Lcom/applovin/impl/sdk/n;

    iget-object v3, p0, Lcom/applovin/impl/sdk/n$1;->a:Lcom/applovin/impl/sdk/p;

    iget-object v4, p0, Lcom/applovin/impl/sdk/n$1;->b:Lcom/applovin/impl/sdk/n$a;

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/applovin/impl/sdk/n;->a(JLcom/applovin/impl/sdk/p;Lcom/applovin/impl/sdk/n$a;)V

    return-void
.end method
