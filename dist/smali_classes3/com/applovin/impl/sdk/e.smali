.class public Lcom/applovin/impl/sdk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;

.field private final b:Lcom/applovin/impl/sdk/y;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/applovin/impl/sdk/ad/d;",
            "Lcom/applovin/impl/sdk/aa;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/applovin/impl/sdk/ad/d;",
            "Lcom/applovin/impl/sdk/aa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/p;

    .line 29
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/e;->b:Lcom/applovin/impl/sdk/y;

    .line 31
    invoke-static {}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/e;->d:Ljava/util/Map;

    .line 32
    invoke-static {}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/e;->e:Ljava/util/Map;

    .line 33
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/e;->c:Ljava/lang/Object;

    .line 36
    invoke-static {}, Lcom/applovin/impl/sdk/ad/d;->f()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/ad/d;

    .line 38
    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->d:Ljava/util/Map;

    new-instance v2, Lcom/applovin/impl/sdk/aa;

    invoke-direct {v2}, Lcom/applovin/impl/sdk/aa;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->e:Ljava/util/Map;

    new-instance v2, Lcom/applovin/impl/sdk/aa;

    invoke-direct {v2}, Lcom/applovin/impl/sdk/aa;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/aa;
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/aa;

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Lcom/applovin/impl/sdk/aa;

    invoke-direct {v1}, Lcom/applovin/impl/sdk/aa;-><init>()V

    .line 137
    iget-object v2, p0, Lcom/applovin/impl/sdk/e;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 141
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private e(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/aa;
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/aa;

    if-nez v1, :cond_0

    .line 151
    new-instance v1, Lcom/applovin/impl/sdk/aa;

    invoke-direct {v1}, Lcom/applovin/impl/sdk/aa;-><init>()V

    .line 152
    iget-object v2, p0, Lcom/applovin/impl/sdk/e;->e:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 156
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private f(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/aa;
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/e;->e(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/aa;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/aa;->a()I

    move-result v2

    if-lez v2, :cond_0

    .line 169
    monitor-exit v0

    return-object v1

    .line 173
    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/e;->d(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/aa;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 175
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;
    .locals 5

    .line 57
    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/e;->d(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/aa;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/aa;->a()I

    move-result v2

    if-lez v2, :cond_0

    .line 65
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/e;->e(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/aa;

    move-result-object v2

    .line 66
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/aa;->c()Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/aa;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)V

    .line 68
    new-instance v1, Lcom/applovin/impl/sdk/ad/f;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/p;

    invoke-direct {v1, p1, v2}, Lcom/applovin/impl/sdk/ad/f;-><init>(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/impl/sdk/p;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 75
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 79
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->b:Lcom/applovin/impl/sdk/y;

    const-string v2, "AdPreloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Retrieved ad of zone "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "..."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->b:Lcom/applovin/impl/sdk/y;

    const-string v2, "AdPreloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to retrieve ad of zone "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "..."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v1

    :catchall_0
    move-exception p1

    .line 75
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)V
    .locals 5

    const-string v0, "Ad enqueued: "

    .line 94
    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdZone()Lcom/applovin/impl/sdk/ad/d;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/applovin/impl/sdk/e;->d(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/aa;

    move-result-object v2

    .line 97
    invoke-virtual {v2, p1}, Lcom/applovin/impl/sdk/aa;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)V

    .line 99
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/sdk/e;->b:Lcom/applovin/impl/sdk/y;

    const-string v3, "AdPreloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/e;->f(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/aa;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/aa;->c()Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 113
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/AppLovinAdBase;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/e;->f(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/aa;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/aa;->d()Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 126
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
