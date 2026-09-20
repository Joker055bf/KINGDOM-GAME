.class public Lcom/applovin/impl/sdk/d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/d/g;->b:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 32
    iput-object p1, p0, Lcom/applovin/impl/sdk/d/g;->a:Lcom/applovin/impl/sdk/p;

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No sdk specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/g;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/applovin/impl/sdk/d/g;->a:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/g;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/d/g$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/d/g$1;-><init>(Lcom/applovin/impl/sdk/d/g;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/e/o;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/d/f;)J
    .locals 2

    const-wide/16 v0, 0x1

    .line 42
    invoke-virtual {p0, p1, v0, v1}, Lcom/applovin/impl/sdk/d/g;->a(Lcom/applovin/impl/sdk/d/f;J)J

    move-result-wide v0

    return-wide v0
.end method

.method a(Lcom/applovin/impl/sdk/d/f;J)J
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/g;->b:Ljava/util/Map;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/g;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 57
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 59
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    add-long/2addr v1, p2

    .line 61
    iget-object p2, p0, Lcom/applovin/impl/sdk/d/g;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/g;->e()V

    return-wide v1

    :catchall_0
    move-exception p1

    .line 62
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/g;->b:Ljava/util/Map;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/g;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 114
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/g;->e()V

    return-void

    :catchall_0
    move-exception v1

    .line 114
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public b(Lcom/applovin/impl/sdk/d/f;)J
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/g;->b:Ljava/util/Map;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/g;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    const-wide/16 v1, 0x0

    .line 83
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 86
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    .line 87
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/g;->b:Ljava/util/Map;

    monitor-enter v0

    .line 141
    :try_start_0
    invoke-static {}, Lcom/applovin/impl/sdk/d/f;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/d/f;

    .line 143
    iget-object v3, p0, Lcom/applovin/impl/sdk/d/g;->b:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/d/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/g;->e()V

    .line 147
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Lcom/applovin/impl/sdk/d/f;J)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/g;->b:Ljava/util/Map;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/g;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/g;->e()V

    return-void

    :catchall_0
    move-exception p1

    .line 101
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/g;->b:Ljava/util/Map;

    monitor-enter v0

    .line 155
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 157
    iget-object v2, p0, Lcom/applovin/impl/sdk/d/g;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 161
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(Lcom/applovin/impl/sdk/d/f;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/g;->b:Ljava/util/Map;

    monitor-enter v0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/g;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/g;->e()V

    return-void

    :catchall_0
    move-exception p1

    .line 129
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d()V
    .locals 7

    .line 169
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/g;->a:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/d;->y:Lcom/applovin/impl/sdk/c/d;

    const-string/jumbo v2, "{}"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->b(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/g;->b:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 176
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 177
    :catch_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 181
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 182
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 184
    iget-object v6, p0, Lcom/applovin/impl/sdk/d/g;->b:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 188
    :cond_0
    :try_start_3
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 192
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/g;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/g;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v1

    const-string v2, "GlobalStatsManager"

    const-string v3, "Unable to load stats"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method
