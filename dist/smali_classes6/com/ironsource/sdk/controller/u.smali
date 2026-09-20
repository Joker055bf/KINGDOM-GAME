.class public Lcom/ironsource/sdk/controller/u;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/ironsource/mediationsdk/adunit/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ironsource/mediationsdk/adunit/a/a;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/adunit/a/a;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/u;->a:Lcom/ironsource/mediationsdk/adunit/a/a;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const-string v0, "itp"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Lcom/ironsource/c/b;)V
    .locals 2

    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "omv"

    invoke-static {}, Lcom/ironsource/c/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ompv"

    invoke-static {}, Lcom/ironsource/c/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdkv"

    invoke-static {}, Lcom/ironsource/c/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "fs"

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "apky"

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "md"

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const-string v0, "cnst"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "medv"

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "tkgp"

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    const-string v0, "gpi"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sid"

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "plugin"

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "usid"

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "audt"

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
