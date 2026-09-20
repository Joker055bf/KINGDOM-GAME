.class Lcom/applovin/impl/b/a/i$2$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/b/b/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/b/a/i$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/b/a/i$2;


# direct methods
.method constructor <init>(Lcom/applovin/impl/b/a/i$2;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/applovin/impl/b/a/i$2$7;->a:Lcom/applovin/impl/b/a/i$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 7

    .line 339
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2$7;->a:Lcom/applovin/impl/b/a/i$2;

    iget-object v0, v0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v0}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/d;->v:Lcom/applovin/impl/sdk/c/d;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2$7;->a:Lcom/applovin/impl/b/a/i$2;

    iget-object v0, v0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v0}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/d;->w:Lcom/applovin/impl/sdk/c/d;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2$7;->a:Lcom/applovin/impl/b/a/i$2;

    iget-object v0, v0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v0}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/d;->x:Lcom/applovin/impl/sdk/c/d;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2$7;->a:Lcom/applovin/impl/b/a/i$2;

    iget-object v0, v0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    iget-object v1, p0, Lcom/applovin/impl/b/a/i$2$7;->a:Lcom/applovin/impl/b/a/i$2;

    iget-object v1, v1, Lcom/applovin/impl/b/a/i$2;->a:Lcom/applovin/impl/b/a/d;

    invoke-virtual {v1}, Lcom/applovin/impl/b/a/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/b/a/i;->a(Lcom/applovin/impl/b/a/i;Ljava/lang/String;)Lcom/applovin/impl/b/a/d;

    move-result-object v0

    if-nez v0, :cond_1

    .line 347
    iget-object p1, p0, Lcom/applovin/impl/b/a/i$2$7;->a:Lcom/applovin/impl/b/a/i$2;

    iget-object p1, p1, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {p1}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/b/a/i$2$7;->a:Lcom/applovin/impl/b/a/i$2;

    iget-object p1, p1, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {p1}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p1

    const-string p2, "AppLovinSdk"

    const-string v0, "Consent flow failed to get destination state for GDPR alert. Finishing flow..."

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/b/a/i$2$7;->a:Lcom/applovin/impl/b/a/i$2;

    iget-object p1, p1, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-virtual {p1}, Lcom/applovin/impl/b/a/i;->b()V

    return-void

    :cond_1
    const-string v1, "13"

    .line 353
    invoke-virtual {v0}, Lcom/applovin/impl/b/a/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 355
    iget-object v1, p0, Lcom/applovin/impl/b/a/i$2$7;->a:Lcom/applovin/impl/b/a/i$2;

    iget-object v1, v1, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v1}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object v1

    sget-object v4, Lcom/applovin/impl/sdk/c/d;->t:Lcom/applovin/impl/sdk/c/d;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    .line 357
    move-object v1, v0

    check-cast v1, Lcom/applovin/impl/b/a/g;

    const/4 v4, 0x3

    .line 358
    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map(I)Ljava/util/Map;

    move-result-object v4

    const-string v5, "paa"

    .line 359
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "apa"

    .line 360
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "ppa"

    .line 361
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-virtual {v1, v4}, Lcom/applovin/impl/b/a/g;->a(Ljava/util/Map;)V

    .line 367
    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/b/a/i$2$7;->a:Lcom/applovin/impl/b/a/i$2;

    iget-object v1, v1, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/applovin/impl/b/a/i;->a(Z)V

    .line 368
    iget-object p1, p0, Lcom/applovin/impl/b/a/i$2$7;->a:Lcom/applovin/impl/b/a/i$2;

    iget-object p1, p1, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-virtual {p1, v3}, Lcom/applovin/impl/b/a/i;->b(Z)V

    .line 370
    iget-object p1, p0, Lcom/applovin/impl/b/a/i$2$7;->a:Lcom/applovin/impl/b/a/i$2;

    iget-object p1, p1, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/applovin/impl/b/a/i;->a(Lcom/applovin/impl/b/a/i;Lcom/applovin/impl/b/a/d;)Lcom/applovin/impl/b/a/d;

    .line 371
    iget-object p1, p0, Lcom/applovin/impl/b/a/i$2$7;->a:Lcom/applovin/impl/b/a/i$2;

    iget-object p1, p1, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {p1, p2}, Lcom/applovin/impl/b/a/i;->a(Lcom/applovin/impl/b/a/i;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 373
    iget-object p1, p0, Lcom/applovin/impl/b/a/i$2$7;->a:Lcom/applovin/impl/b/a/i$2;

    iget-object p1, p1, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    iget-object p2, p0, Lcom/applovin/impl/b/a/i$2$7;->a:Lcom/applovin/impl/b/a/i$2;

    iget-object p2, p2, Lcom/applovin/impl/b/a/i$2;->b:Landroid/app/Activity;

    invoke-static {p1, v0, p2}, Lcom/applovin/impl/b/a/i;->a(Lcom/applovin/impl/b/a/i;Lcom/applovin/impl/b/a/d;Landroid/app/Activity;)V

    return-void
.end method
