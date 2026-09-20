.class public abstract Lcom/applovin/impl/sdk/e/h;
.super Lcom/applovin/impl/sdk/e/a;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/applovin/impl/sdk/ad/d;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/d;Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 41
    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V

    .line 43
    iput-object p1, p0, Lcom/applovin/impl/sdk/e/h;->a:Lcom/applovin/impl/sdk/ad/d;

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/d/g;)V
    .locals 7

    .line 264
    sget-object v0, Lcom/applovin/impl/sdk/d/f;->d:Lcom/applovin/impl/sdk/d/f;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/d/g;->b(Lcom/applovin/impl/sdk/d/f;)J

    move-result-wide v0

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 268
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    sget-object v6, Lcom/applovin/impl/sdk/c/b;->dA:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v5, v6}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 272
    sget-object v0, Lcom/applovin/impl/sdk/d/f;->d:Lcom/applovin/impl/sdk/d/f;

    invoke-virtual {p1, v0, v2, v3}, Lcom/applovin/impl/sdk/d/g;->b(Lcom/applovin/impl/sdk/d/f;J)V

    .line 273
    sget-object v0, Lcom/applovin/impl/sdk/d/f;->e:Lcom/applovin/impl/sdk/d/f;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/d/g;->c(Lcom/applovin/impl/sdk/d/f;)V

    .line 274
    sget-object v0, Lcom/applovin/impl/sdk/d/f;->f:Lcom/applovin/impl/sdk/d/f;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/d/g;->c(Lcom/applovin/impl/sdk/d/f;)V

    :cond_0
    return-void
.end method

.method private i()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 201
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map(I)Ljava/util/Map;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/h;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovin-Zone-Id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/h;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/d;->c()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/h;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/d;->c()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovin-Ad-Size"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/h;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/d;->d()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/h;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/d;->d()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinAdType;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovin-Ad-Type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected abstract a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/e/a;
.end method

.method protected a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 219
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map(I)Ljava/util/Map;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/h;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zone_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/h;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/d;->c()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/h;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/d;->c()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "size"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/h;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/d;->d()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/h;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/d;->d()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinAdType;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "require"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected a(ILjava/lang/String;)V
    .locals 3

    .line 254
    iget-object p2, p0, Lcom/applovin/impl/sdk/e/h;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/applovin/impl/sdk/e/h;->h:Lcom/applovin/impl/sdk/y;

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to fetch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/h;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ad: server returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 p2, -0x320

    if-ne p1, p2, :cond_1

    .line 258
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->P()Lcom/applovin/impl/sdk/d/g;

    move-result-object p1

    sget-object p2, Lcom/applovin/impl/sdk/d/f;->j:Lcom/applovin/impl/sdk/d/f;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/d/g;->a(Lcom/applovin/impl/sdk/d/f;)J

    :cond_1
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected b(Lorg/json/JSONObject;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/i;->d(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    .line 242
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/i;->c(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    .line 243
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/i;->e(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    .line 245
    invoke-static {p1}, Lcom/applovin/impl/sdk/ad/d;->a(Lorg/json/JSONObject;)V

    .line 247
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/e/h;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/e/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;)V

    return-void
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method protected h()Lcom/applovin/impl/sdk/ad/b;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/impl/sdk/ad/b;->b:Lcom/applovin/impl/sdk/ad/b;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/applovin/impl/sdk/ad/b;->c:Lcom/applovin/impl/sdk/ad/b;

    :goto_0
    return-object v0
.end method

.method public run()V
    .locals 8

    .line 48
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/h;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fetching next ad of zone: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/h;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->dZ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/applovin/impl/sdk/utils/Utils;->isVPNConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/h;->g:Ljava/lang/String;

    const-string v2, "User is connected to a VPN"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->P()Lcom/applovin/impl/sdk/d/g;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/applovin/impl/sdk/d/f;->a:Lcom/applovin/impl/sdk/d/f;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/d/g;->a(Lcom/applovin/impl/sdk/d/f;)J

    .line 59
    sget-object v1, Lcom/applovin/impl/sdk/d/f;->d:Lcom/applovin/impl/sdk/d/f;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/d/g;->b(Lcom/applovin/impl/sdk/d/f;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 62
    sget-object v1, Lcom/applovin/impl/sdk/d/f;->d:Lcom/applovin/impl/sdk/d/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/d/g;->b(Lcom/applovin/impl/sdk/d/f;J)V

    :cond_2
    const/4 v1, 0x0

    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->E()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->getAndResetCustomPostBody()Lorg/json/JSONObject;

    move-result-object v2

    .line 72
    iget-object v3, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    sget-object v4, Lcom/applovin/impl/sdk/c/b;->du:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "POST"

    if-eqz v3, :cond_6

    .line 78
    :try_start_1
    iget-object v3, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/p;->S()Lcom/applovin/impl/sdk/r;

    move-result-object v3

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 80
    iget-object v3, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/p;->S()Lcom/applovin/impl/sdk/r;

    move-result-object v3

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->a()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v3, v6, v1, v5}, Lcom/applovin/impl/sdk/r;->a(Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v3

    goto :goto_0

    .line 84
    :cond_3
    iget-object v3, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/p;->R()Lcom/applovin/impl/sdk/q;

    move-result-object v3

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->a()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v3, v6, v1, v5}, Lcom/applovin/impl/sdk/q;->a(Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v3

    .line 87
    :goto_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 89
    invoke-static {}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map()Ljava/util/Map;

    move-result-object v3

    const-string v6, "rid"

    .line 90
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v6, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    sget-object v7, Lcom/applovin/impl/sdk/c/b;->fa:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "sdk_key"

    .line 96
    iget-object v7, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v7}, Lcom/applovin/impl/sdk/p;->B()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v2, :cond_5

    .line 102
    invoke-static {v5, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putAll(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_5
    move-object v2, v5

    goto :goto_3

    :cond_6
    const-string v3, "GET"

    .line 111
    iget-object v5, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/p;->S()Lcom/applovin/impl/sdk/r;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 113
    iget-object v5, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/p;->S()Lcom/applovin/impl/sdk/r;

    move-result-object v5

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->a()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6, v1, v1}, Lcom/applovin/impl/sdk/r;->a(Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v5

    goto :goto_1

    .line 117
    :cond_7
    iget-object v5, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/p;->R()Lcom/applovin/impl/sdk/q;

    move-result-object v5

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->a()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6, v1, v1}, Lcom/applovin/impl/sdk/q;->a(Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v5

    .line 120
    :goto_1
    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/Utils;->stringifyObjectMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    move-object v4, v3

    :goto_2
    move-object v3, v5

    .line 130
    :goto_3
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->f()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/Utils;->isDspDemoApp(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 132
    iget-object v5, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/p;->E()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->getAndResetCustomQueryParams()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 136
    :cond_9
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/e/h;->a(Lcom/applovin/impl/sdk/d/g;)V

    .line 138
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/c;->a(Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/h;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/applovin/impl/sdk/network/c$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    .line 141
    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/network/c$a;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    .line 142
    invoke-virtual {v0, v4}, Lcom/applovin/impl/sdk/network/c$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    .line 143
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/h;->i()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/network/c$a;->b(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 144
    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    sget-object v4, Lcom/applovin/impl/sdk/c/b;->di:Lcom/applovin/impl/sdk/c/b;

    .line 145
    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/network/c$a;->a(I)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    sget-object v4, Lcom/applovin/impl/sdk/c/b;->dj:Lcom/applovin/impl/sdk/c/b;

    .line 146
    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/network/c$a;->a(Z)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    sget-object v4, Lcom/applovin/impl/sdk/c/b;->dk:Lcom/applovin/impl/sdk/c/b;

    .line 147
    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/network/c$a;->b(Z)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    sget-object v4, Lcom/applovin/impl/sdk/c/b;->dh:Lcom/applovin/impl/sdk/c/b;

    .line 148
    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/network/c$a;->b(I)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    if-eqz v2, :cond_a

    .line 152
    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/network/c$a;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/c$a;

    .line 153
    iget-object v2, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->fi:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/network/c$a;->d(Z)Lcom/applovin/impl/sdk/network/c$a;

    .line 156
    :cond_a
    new-instance v2, Lcom/applovin/impl/sdk/e/h$1;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/c$a;->a()Lcom/applovin/impl/sdk/network/c;

    move-result-object v0

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    invoke-direct {v2, p0, v0, v3}, Lcom/applovin/impl/sdk/e/h$1;-><init>(Lcom/applovin/impl/sdk/e/h;Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/p;)V

    .line 183
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->be:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v0}, Lcom/applovin/impl/sdk/e/u;->a(Lcom/applovin/impl/sdk/c/b;)V

    .line 184
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->bf:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v0}, Lcom/applovin/impl/sdk/e/u;->b(Lcom/applovin/impl/sdk/c/b;)V

    .line 185
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/h;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 189
    iget-object v2, p0, Lcom/applovin/impl/sdk/e/h;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/h;->h:Lcom/applovin/impl/sdk/y;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/h;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to fetch ad "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/applovin/impl/sdk/e/h;->a:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/e/h;->a(ILjava/lang/String;)V

    :goto_4
    return-void
.end method
