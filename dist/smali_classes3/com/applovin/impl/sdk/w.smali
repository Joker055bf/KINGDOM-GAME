.class public Lcom/applovin/impl/sdk/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/w$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/applovin/impl/sdk/w$a;


# instance fields
.field private final b:Lcom/applovin/impl/sdk/p;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:J

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:J

.field private h:Ljava/lang/Object;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/applovin/impl/sdk/w$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/applovin/impl/sdk/w$a;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/w$a;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/w;->a:Lcom/applovin/impl/sdk/w$a;

    return-void
.end method

.method constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/w;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/w;->e:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/w;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    invoke-static {}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/w;->i:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/w;->j:Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Lcom/applovin/impl/sdk/w;->b:Lcom/applovin/impl/sdk/p;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/w;)J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/applovin/impl/sdk/w;->g:J

    return-wide v0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/w;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/applovin/impl/sdk/w;->b:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/w;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/applovin/impl/sdk/w;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/w;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/applovin/impl/sdk/w;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/w;)J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/applovin/impl/sdk/w;->d:J

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .line 132
    invoke-static {p1}, Lcom/applovin/impl/mediation/d/c;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    iput-object p1, p0, Lcom/applovin/impl/sdk/w;->h:Ljava/lang/Object;

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/w;->d:J

    .line 139
    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting fullscreen ad displayed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/applovin/impl/sdk/w;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FullScreenAdTracker"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "com.applovin.fullscreen_ad_displayed"

    .line 141
    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->sendBroadcastWithAdObject(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->b:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->cu:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 147
    new-instance v2, Lcom/applovin/impl/sdk/w$2;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/applovin/impl/sdk/w$2;-><init>(Lcom/applovin/impl/sdk/w;JLjava/lang/Object;)V

    invoke-static {v2, v0, v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/w;->i:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/w$a;

    if-nez v1, :cond_0

    .line 202
    new-instance v1, Lcom/applovin/impl/sdk/w$a;

    invoke-direct {v1}, Lcom/applovin/impl/sdk/w$a;-><init>()V

    .line 203
    iget-object v2, p0, Lcom/applovin/impl/sdk/w;->i:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/applovin/impl/sdk/w$a;->a(Lcom/applovin/impl/sdk/w$a;J)J

    .line 207
    invoke-static {v1}, Lcom/applovin/impl/sdk/w$a;->a(Lcom/applovin/impl/sdk/w$a;)I

    .line 208
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Z)V
    .locals 8

    const-string v0, "Setting fullscreen ad pending display: "

    const-string v1, "Setting fullscreen ad not pending display: "

    .line 64
    iget-object v2, p0, Lcom/applovin/impl/sdk/w;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 66
    :try_start_0
    iget-object v3, p0, Lcom/applovin/impl/sdk/w;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_1

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/applovin/impl/sdk/w;->g:J

    .line 71
    iget-object p1, p0, Lcom/applovin/impl/sdk/w;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/sdk/w;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p1

    const-string v1, "FullScreenAdTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/applovin/impl/sdk/w;->g:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/sdk/w;->b:Lcom/applovin/impl/sdk/p;

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->ct:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v3

    if-ltz p1, :cond_2

    .line 77
    new-instance p1, Lcom/applovin/impl/sdk/w$1;

    invoke-direct {p1, p0, v0, v1}, Lcom/applovin/impl/sdk/w$1;-><init>(Lcom/applovin/impl/sdk/w;J)V

    invoke-static {p1, v0, v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 100
    :cond_1
    iput-wide v3, p0, Lcom/applovin/impl/sdk/w;->g:J

    .line 101
    iget-object p1, p0, Lcom/applovin/impl/sdk/w;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/sdk/w;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p1

    const-string v0, "FullScreenAdTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_2
    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/applovin/impl/sdk/w$a;
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/w;->i:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/impl/sdk/w$a;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    sget-object p1, Lcom/applovin/impl/sdk/w;->a:Lcom/applovin/impl/sdk/w$a;

    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 220
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 4

    .line 178
    invoke-static {p1}, Lcom/applovin/impl/mediation/d/c;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lcom/applovin/impl/sdk/w;->h:Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting fullscreen ad hidden: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FullScreenAdTracker"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "com.applovin.fullscreen_ad_hidden"

    .line 186
    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->sendBroadcastWithAdObject(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public b()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/w;->i:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
