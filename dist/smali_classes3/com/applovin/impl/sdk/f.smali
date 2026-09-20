.class public Lcom/applovin/impl/sdk/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/f$a;
    }
.end annotation


# instance fields
.field private a:Lcom/applovin/impl/sdk/utils/p;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Z

.field private final e:Lcom/applovin/impl/sdk/p;

.field private final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/applovin/impl/sdk/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:J


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/sdk/f$a;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/f;->b:Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/f;->f:Ljava/lang/ref/WeakReference;

    .line 47
    iput-object p1, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/f;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/applovin/impl/sdk/f;->k()V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/f;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/applovin/impl/sdk/f;->f:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private i()V
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/utils/p;

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/p;->b()V

    goto :goto_0

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v1

    const-string v2, "AdRefreshManager"

    const-string v3, "An ad load is in progress. Will pause refresh once the ad finishes loading."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 189
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private j()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/utils/p;

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/p;->c()V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 205
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private k()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 212
    :try_start_0
    iput-object v1, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/utils/p;

    .line 214
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/a;->r:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    invoke-static {p0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    .line 218
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private l()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->q:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-direct {p0}, Lcom/applovin/impl/sdk/f;->i()V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 4

    .line 317
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->q:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 319
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_0
    iget-boolean v1, p0, Lcom/applovin/impl/sdk/f;->d:Z

    if-eqz v1, :cond_1

    .line 324
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v1

    const-string v2, "AdRefreshManager"

    const-string v3, "Fullscreen ad dismissed but banner ad refresh paused by publisher. Waiting for publisher to resume banner ad refresh."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_0
    monitor-exit v0

    return-void

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->Y()Lcom/applovin/impl/sdk/SessionTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/SessionTracker;->isApplicationPaused()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 333
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v1

    const-string v2, "AdRefreshManager"

    const-string v3, "Waiting for the application to enter foreground to resume the timer."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_2
    monitor-exit v0

    return-void

    .line 338
    :cond_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/utils/p;

    if-eqz v1, :cond_4

    .line 340
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/p;->c()V

    .line 342
    :cond_4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/f;->c()V

    .line 83
    iput-wide p1, p0, Lcom/applovin/impl/sdk/f;->g:J

    .line 85
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    new-instance v2, Lcom/applovin/impl/sdk/f$1;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/f$1;-><init>(Lcom/applovin/impl/sdk/f;)V

    invoke-static {p1, p2, v1, v2}, Lcom/applovin/impl/sdk/utils/p;->a(JLcom/applovin/impl/sdk/p;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/p;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/utils/p;

    .line 97
    iget-object p1, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    sget-object p2, Lcom/applovin/impl/sdk/c/a;->r:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 99
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.applovin.application_paused"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 100
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.applovin.application_resumed"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 101
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.applovin.fullscreen_ad_displayed"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 102
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.applovin.fullscreen_ad_hidden"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    sget-object p2, Lcom/applovin/impl/sdk/c/a;->q:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 109
    iget-object p1, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->Z()Lcom/applovin/impl/sdk/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/w;->b()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->Y()Lcom/applovin/impl/sdk/SessionTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/SessionTracker;->isApplicationPaused()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/utils/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/utils/p;->b()V

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    sget-object p2, Lcom/applovin/impl/sdk/c/a;->s:Lcom/applovin/impl/sdk/c/b;

    .line 116
    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 118
    iget-object p1, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p1

    const-string p2, "AdRefreshManager"

    const-string v1, "Pausing refresh for a previous request."

    invoke-virtual {p1, p2, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/utils/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/utils/p;->b()V

    .line 121
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()Z
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/utils/p;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()J
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/utils/p;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/p;->a()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 68
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/utils/p;

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/p;->d()V

    .line 134
    invoke-direct {p0}, Lcom/applovin/impl/sdk/f;->k()V

    .line 136
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_0
    invoke-direct {p0}, Lcom/applovin/impl/sdk/f;->i()V

    const/4 v1, 0x1

    .line 147
    iput-boolean v1, p0, Lcom/applovin/impl/sdk/f;->d:Z

    .line 148
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    invoke-direct {p0}, Lcom/applovin/impl/sdk/f;->j()V

    const/4 v1, 0x0

    .line 159
    iput-boolean v1, p0, Lcom/applovin/impl/sdk/f;->d:Z

    .line 160
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/f;->d:Z

    return v0
.end method

.method public g()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->p:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/applovin/impl/sdk/f;->i()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 9

    .line 255
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->p:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 258
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_0
    iget-boolean v1, p0, Lcom/applovin/impl/sdk/f;->d:Z

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v1

    const-string v2, "AdRefreshManager"

    const-string v3, "Application resumed but banner ad refresh paused by publisher. Waiting for publisher to resume banner ad refresh."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_0
    monitor-exit v0

    return-void

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->Z()Lcom/applovin/impl/sdk/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/w;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 271
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v1

    const-string v2, "AdRefreshManager"

    const-string v3, "Waiting for the full screen ad to be dismissed to resume the timer."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_2
    monitor-exit v0

    return-void

    .line 276
    :cond_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/utils/p;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 279
    iget-wide v3, p0, Lcom/applovin/impl/sdk/f;->g:J

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/f;->b()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 280
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->e:Lcom/applovin/impl/sdk/p;

    sget-object v5, Lcom/applovin/impl/sdk/c/a;->o:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v5}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-ltz v1, :cond_4

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    .line 283
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/f;->c()V

    const/4 v1, 0x1

    move v2, v1

    goto :goto_0

    .line 289
    :cond_4
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/utils/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/p;->c()V

    .line 297
    :cond_5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_6

    .line 301
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/f$a;

    if-eqz v0, :cond_6

    .line 302
    invoke-interface {v0}, Lcom/applovin/impl/sdk/f$a;->onAdRefresh()V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 297
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_6
    :goto_1
    return-void
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

    .line 225
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.applovin.application_paused"

    .line 227
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/f;->g()V

    goto :goto_0

    :cond_0
    const-string p2, "com.applovin.application_resumed"

    .line 231
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/f;->h()V

    goto :goto_0

    :cond_1
    const-string p2, "com.applovin.fullscreen_ad_displayed"

    .line 235
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 237
    invoke-direct {p0}, Lcom/applovin/impl/sdk/f;->l()V

    goto :goto_0

    :cond_2
    const-string p2, "com.applovin.fullscreen_ad_hidden"

    .line 239
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 241
    invoke-direct {p0}, Lcom/applovin/impl/sdk/f;->m()V

    :cond_3
    :goto_0
    return-void
.end method
