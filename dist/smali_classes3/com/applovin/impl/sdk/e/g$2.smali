.class Lcom/applovin/impl/sdk/e/g$2;
.super Lcom/applovin/impl/sdk/e/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/e/g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/impl/sdk/e/u<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final synthetic b:Lcom/applovin/impl/sdk/e/g;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/e/g;Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/applovin/impl/sdk/e/g$2;->b:Lcom/applovin/impl/sdk/e/g;

    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/sdk/e/u;-><init>(Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/p;)V

    .line 92
    invoke-static {p1}, Lcom/applovin/impl/sdk/e/g;->b(Lcom/applovin/impl/sdk/e/g;)Lcom/applovin/impl/sdk/network/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/l;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/g$2;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .line 142
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g$2;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g$2;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/g$2;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to dispatch postback. Error code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/g$2;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g$2;->b:Lcom/applovin/impl/sdk/e/g;

    invoke-static {v0}, Lcom/applovin/impl/sdk/e/g;->a(Lcom/applovin/impl/sdk/e/g;)Lcom/applovin/sdk/AppLovinPostbackListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g$2;->b:Lcom/applovin/impl/sdk/e/g;

    invoke-static {v0}, Lcom/applovin/impl/sdk/e/g;->a(Lcom/applovin/impl/sdk/e/g;)Lcom/applovin/sdk/AppLovinPostbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/g$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackFailure(Ljava/lang/String;I)V

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g$2;->b:Lcom/applovin/impl/sdk/e/g;

    invoke-static {v0}, Lcom/applovin/impl/sdk/e/g;->b(Lcom/applovin/impl/sdk/e/g;)Lcom/applovin/impl/sdk/network/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/l;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g$2;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->ab()Lcom/applovin/impl/sdk/m;

    move-result-object v1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g$2;->b:Lcom/applovin/impl/sdk/e/g;

    invoke-static {v0}, Lcom/applovin/impl/sdk/e/g;->b(Lcom/applovin/impl/sdk/e/g;)Lcom/applovin/impl/sdk/network/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/l;->q()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/g$2;->a:Ljava/lang/String;

    const/4 v7, 0x0

    move v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 8

    .line 99
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g$2;->f:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->bb:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->b(Lcom/applovin/impl/sdk/c/b;)Ljava/util/List;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    invoke-virtual {v1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 108
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/g$2;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v2, v1}, Lcom/applovin/impl/sdk/utils/i;->d(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    .line 116
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/g$2;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v2, v1}, Lcom/applovin/impl/sdk/utils/i;->c(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    .line 117
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/g$2;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v2, v1}, Lcom/applovin/impl/sdk/utils/i;->e(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g$2;->b:Lcom/applovin/impl/sdk/e/g;

    invoke-static {v0}, Lcom/applovin/impl/sdk/e/g;->a(Lcom/applovin/impl/sdk/e/g;)Lcom/applovin/sdk/AppLovinPostbackListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g$2;->b:Lcom/applovin/impl/sdk/e/g;

    invoke-static {v0}, Lcom/applovin/impl/sdk/e/g;->a(Lcom/applovin/impl/sdk/e/g;)Lcom/applovin/sdk/AppLovinPostbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/g$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackSuccess(Ljava/lang/String;)V

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g$2;->b:Lcom/applovin/impl/sdk/e/g;

    invoke-static {v0}, Lcom/applovin/impl/sdk/e/g;->b(Lcom/applovin/impl/sdk/e/g;)Lcom/applovin/impl/sdk/network/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/l;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g$2;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->ab()Lcom/applovin/impl/sdk/m;

    move-result-object v1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g$2;->b:Lcom/applovin/impl/sdk/e/g;

    invoke-static {v0}, Lcom/applovin/impl/sdk/e/g;->b(Lcom/applovin/impl/sdk/e/g;)Lcom/applovin/impl/sdk/network/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/l;->q()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/g$2;->a:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v4, p2

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method
