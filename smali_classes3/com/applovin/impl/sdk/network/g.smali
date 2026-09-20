.class public Lcom/applovin/impl/sdk/network/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;
.implements Lcom/applovin/impl/sdk/network/k;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;

.field private final b:Lcom/applovin/impl/sdk/y;

.field private final c:I

.field private final d:Lcom/applovin/impl/sdk/network/i;

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/network/j;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/sdk/network/j;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/network/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/g;->e:Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/g;->g:Ljava/util/Set;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/g;->h:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 67
    iput-object p1, p0, Lcom/applovin/impl/sdk/network/g;->a:Lcom/applovin/impl/sdk/p;

    .line 68
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/g;->b:Lcom/applovin/impl/sdk/y;

    .line 69
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->cZ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/sdk/network/g;->c:I

    .line 71
    new-instance v1, Lcom/applovin/impl/sdk/network/i;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/sdk/network/i;-><init>(Lcom/applovin/impl/sdk/network/g;Lcom/applovin/impl/sdk/p;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/network/g;->d:Lcom/applovin/impl/sdk/network/i;

    .line 72
    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/network/i;->a(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/g;->f:Ljava/util/List;

    .line 74
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.applovin.app_killed"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No sdk specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/network/g;)Ljava/lang/Object;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/applovin/impl/sdk/network/g;->e:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/network/g;Lcom/applovin/impl/sdk/network/j;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/g;->c(Lcom/applovin/impl/sdk/network/j;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/network/g;Lcom/applovin/impl/sdk/network/j;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/network/g;->a(Lcom/applovin/impl/sdk/network/j;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/network/j;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 5

    const-string v0, "Skipping in progress postback: "

    .line 174
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/g;->b:Lcom/applovin/impl/sdk/y;

    const-string v2, "PersistentPostbackManagerV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Preparing to submit postback: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/g;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->p()Z

    move-result v1

    if-nez v1, :cond_2

    .line 178
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/sdk/network/g;->b:Lcom/applovin/impl/sdk/y;

    const-string p2, "PersistentPostbackManagerV2"

    const-string v0, "Skipping postback dispatch because SDK is still initializing - postback will be dispatched afterwards"

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 182
    :cond_2
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 184
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/applovin/impl/sdk/network/g;->b:Lcom/applovin/impl/sdk/y;

    const-string p2, "PersistentPostbackManagerV2"

    const-string v0, "Skipping empty postback dispatch..."

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 188
    :cond_4
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/g;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/network/g;->g:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 192
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/applovin/impl/sdk/network/g;->b:Lcom/applovin/impl/sdk/y;

    const-string v2, "PersistentPostbackManagerV2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_5
    monitor-exit v1

    return-void

    .line 196
    :cond_6
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->l()V

    .line 197
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 199
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/g;->a:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->cX:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 200
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->k()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_8

    .line 202
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/applovin/impl/sdk/network/g;->b:Lcom/applovin/impl/sdk/y;

    const-string v1, "PersistentPostbackManagerV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exceeded maximum persisted attempt count of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Dequeuing postback: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_7
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/g;->d(Lcom/applovin/impl/sdk/network/j;)V

    return-void

    .line 207
    :cond_8
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/g;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/g;->g:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->f()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->f()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    .line 214
    :goto_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/g;->a:Lcom/applovin/impl/sdk/p;

    invoke-static {v1}, Lcom/applovin/impl/sdk/network/l;->b(Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v1

    .line 215
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/l$a;->d(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v1

    .line 216
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/l$a;->e(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v1

    .line 217
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->d()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/l$a;->c(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v1

    .line 218
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/l$a;->f(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v1

    .line 219
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->e()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/l$a;->d(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v1

    .line 220
    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/network/l$a;->b(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v0

    .line 221
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/l$a;->f(Z)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v0

    .line 222
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/l$a;->e(Z)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v0

    .line 223
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/l$a;->g(Z)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v0

    .line 224
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/l$a;->g(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/l$a;->b()Lcom/applovin/impl/sdk/network/l;

    move-result-object v0

    .line 227
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/g;->b:Lcom/applovin/impl/sdk/y;

    const-string v2, "PersistentPostbackManagerV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Submitting postback: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_a
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/g;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->ak()Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/network/g$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/applovin/impl/sdk/network/g$3;-><init>(Lcom/applovin/impl/sdk/network/g;Lcom/applovin/impl/sdk/network/j;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/network/PostbackServiceImpl;->dispatchPostbackRequest(Lcom/applovin/impl/sdk/network/l;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    return-void

    :catchall_0
    move-exception p1

    .line 210
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 197
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private a(Ljava/lang/Runnable;ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 329
    new-instance p2, Lcom/applovin/impl/sdk/e/z;

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/g;->a:Lcom/applovin/impl/sdk/p;

    invoke-direct {p2, v0, p3, p1}, Lcom/applovin/impl/sdk/e/z;-><init>(Lcom/applovin/impl/sdk/p;ZLjava/lang/Runnable;)V

    .line 330
    iget-object p1, p0, Lcom/applovin/impl/sdk/network/g;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object p1

    sget-object p3, Lcom/applovin/impl/sdk/e/o$a;->e:Lcom/applovin/impl/sdk/e/o$a;

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V

    goto :goto_0

    .line 334
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/network/g;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/applovin/impl/sdk/network/g;->f:Ljava/util/List;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/g;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/g;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/network/j;

    .line 302
    invoke-direct {p0, v2}, Lcom/applovin/impl/sdk/network/g;->b(Lcom/applovin/impl/sdk/network/j;)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/g;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 306
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/network/g;Lcom/applovin/impl/sdk/network/j;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/g;->b(Lcom/applovin/impl/sdk/network/j;)V

    return-void
.end method

.method private b(Lcom/applovin/impl/sdk/network/j;)V
    .locals 1

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/sdk/network/g;->a(Lcom/applovin/impl/sdk/network/j;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/network/g;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/applovin/impl/sdk/network/g;->b:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/network/g;Lcom/applovin/impl/sdk/network/j;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/g;->d(Lcom/applovin/impl/sdk/network/j;)V

    return-void
.end method

.method private c(Lcom/applovin/impl/sdk/network/j;)V
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/g;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/g;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/applovin/impl/sdk/network/g;->c:I

    if-le v1, v2, :cond_0

    .line 267
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/g;->f:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/g;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/g;->b:Lcom/applovin/impl/sdk/y;

    const-string v1, "PersistentPostbackManagerV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Enqueued postback: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 271
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/network/g;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/applovin/impl/sdk/network/g;->b()V

    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/network/g;Lcom/applovin/impl/sdk/network/j;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/g;->e(Lcom/applovin/impl/sdk/network/j;)V

    return-void
.end method

.method private d(Lcom/applovin/impl/sdk/network/j;)V
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/g;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/g;->g:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 281
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/g;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 282
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/g;->b:Lcom/applovin/impl/sdk/y;

    const-string v1, "PersistentPostbackManagerV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dequeued postback: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 282
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private e(Lcom/applovin/impl/sdk/network/j;)V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/g;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/g;->g:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 292
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/g;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method protected a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/network/j;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/g;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/network/g;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 157
    iget-object v2, p0, Lcom/applovin/impl/sdk/network/g;->f:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 158
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/applovin/impl/sdk/network/j;)V
    .locals 1

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/network/g;->a(Lcom/applovin/impl/sdk/network/j;Z)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/network/j;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, p1, p2, v0}, Lcom/applovin/impl/sdk/network/g;->a(Lcom/applovin/impl/sdk/network/j;ZLcom/applovin/sdk/AppLovinPostbackListener;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/network/j;ZLcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 1

    .line 98
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/sdk/network/g;->b:Lcom/applovin/impl/sdk/y;

    const-string p2, "PersistentPostbackManagerV2"

    const-string p3, "Requested a postback dispatch for empty URL; nothing to do..."

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 105
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->m()V

    .line 110
    :cond_2
    new-instance p2, Lcom/applovin/impl/sdk/network/g$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/applovin/impl/sdk/network/g$1;-><init>(Lcom/applovin/impl/sdk/network/g;Lcom/applovin/impl/sdk/network/j;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    .line 121
    invoke-static {}, Lcom/applovin/impl/sdk/utils/Utils;->isMainThread()Z

    move-result p3

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->p()Z

    move-result p1

    .line 110
    invoke-direct {p0, p2, p3, p1}, Lcom/applovin/impl/sdk/network/g;->a(Ljava/lang/Runnable;ZZ)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 127
    new-instance v0, Lcom/applovin/impl/sdk/network/g$2;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/network/g$2;-><init>(Lcom/applovin/impl/sdk/network/g;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/g;->a:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->cY:Lcom/applovin/impl/sdk/c/b;

    .line 143
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    .line 127
    invoke-direct {p0, v0, v1, v2}, Lcom/applovin/impl/sdk/network/g;->a(Ljava/lang/Runnable;ZZ)V

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

    .line 316
    iget-object p1, p0, Lcom/applovin/impl/sdk/network/g;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/sdk/network/g;->d:Lcom/applovin/impl/sdk/network/i;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;)V

    .line 318
    invoke-static {p0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    return-void
.end method
