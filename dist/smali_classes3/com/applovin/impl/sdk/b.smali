.class public Lcom/applovin/impl/sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;

.field private final b:Lcom/applovin/impl/sdk/y;

.field private final c:Lcom/applovin/impl/sdk/b$a;

.field private d:Lcom/applovin/impl/sdk/utils/p;

.field private final e:Ljava/lang/Object;

.field private f:J


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/sdk/b$a;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/b;->e:Ljava/lang/Object;

    .line 50
    iput-object p1, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/p;

    .line 51
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/b;->b:Lcom/applovin/impl/sdk/y;

    .line 52
    iput-object p2, p0, Lcom/applovin/impl/sdk/b;->c:Lcom/applovin/impl/sdk/b$a;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/b;)Lcom/applovin/impl/sdk/b$a;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/applovin/impl/sdk/b;->c:Lcom/applovin/impl/sdk/b$a;

    return-object p0
.end method

.method private a(J)V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/b;->a()V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/applovin/impl/sdk/b;->f:J

    .line 110
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.applovin.application_paused"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 111
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.applovin.application_resumed"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 114
    iget-object v1, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->bF:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->Y()Lcom/applovin/impl/sdk/SessionTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/SessionTracker;->isApplicationPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    monitor-exit v0

    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/p;

    new-instance v2, Lcom/applovin/impl/sdk/b$1;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/b$1;-><init>(Lcom/applovin/impl/sdk/b;)V

    invoke-static {p1, p2, v1, v2}, Lcom/applovin/impl/sdk/utils/p;->a(JLcom/applovin/impl/sdk/p;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/p;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/b;->d:Lcom/applovin/impl/sdk/utils/p;

    .line 128
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->d:Lcom/applovin/impl/sdk/utils/p;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/p;->d()V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/applovin/impl/sdk/b;->d:Lcom/applovin/impl/sdk/utils/p;

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_0
    invoke-direct {p0}, Lcom/applovin/impl/sdk/b;->b()V

    .line 173
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private d()V
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-wide v1, p0, Lcom/applovin/impl/sdk/b;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/b;->a()V

    const/4 v1, 0x1

    goto :goto_0

    .line 191
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/applovin/impl/sdk/b;->a(J)V

    const/4 v1, 0x0

    .line 194
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->c:Lcom/applovin/impl/sdk/b$a;

    invoke-interface {v0}, Lcom/applovin/impl/sdk/b$a;->onAdExpired()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 194
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    invoke-direct {p0}, Lcom/applovin/impl/sdk/b;->b()V

    .line 140
    invoke-static {p0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    .line 141
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcom/applovin/impl/mediation/a/a;)Z
    .locals 7

    .line 66
    instance-of v0, p1, Lcom/applovin/impl/mediation/a/c;

    if-eqz v0, :cond_0

    .line 68
    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/c;->Q()J

    move-result-wide v0

    goto :goto_0

    .line 70
    :cond_0
    instance-of v0, p1, Lcom/applovin/impl/mediation/a/d;

    if-eqz v0, :cond_4

    .line 72
    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/mediation/a/d;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/d;->I()J

    move-result-wide v0

    .line 79
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a;->w()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v2, v0, v2

    const-string v3, "AdExpirationManager"

    if-lez v2, :cond_2

    .line 85
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/sdk/b;->b:Lcom/applovin/impl/sdk/y;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Scheduling ad expiration "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds from now for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "..."

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/b;->a(J)V

    const/4 p1, 0x1

    return p1

    .line 92
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/applovin/impl/sdk/b;->b:Lcom/applovin/impl/sdk/y;

    const-string v0, "Ad is already expired"

    invoke-virtual {p1, v3, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 76
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Ad does not support scheduling expiration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onReceive(Landroid/content/Intent;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 156
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.applovin.application_paused"

    .line 158
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/applovin/impl/sdk/b;->c()V

    goto :goto_0

    :cond_0
    const-string p2, "com.applovin.application_resumed"

    .line 162
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 164
    invoke-direct {p0}, Lcom/applovin/impl/sdk/b;->d()V

    :cond_1
    :goto_0
    return-void
.end method
