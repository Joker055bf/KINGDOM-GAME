.class public Lcom/applovin/impl/sdk/network/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/network/k;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;

.field private final b:Lcom/applovin/impl/sdk/y;

.field private final c:I

.field private final d:Lcom/applovin/impl/sdk/network/h;

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/applovin/impl/sdk/network/j;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/applovin/impl/sdk/network/j;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/sdk/network/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/f;->e:Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/f;->g:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/applovin/impl/sdk/network/f;->h:J

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/f;->i:Ljava/util/Set;

    if-eqz p1, :cond_0

    .line 50
    iput-object p1, p0, Lcom/applovin/impl/sdk/network/f;->a:Lcom/applovin/impl/sdk/p;

    .line 51
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/f;->b:Lcom/applovin/impl/sdk/y;

    .line 52
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->cZ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/sdk/network/f;->c:I

    .line 54
    new-instance v1, Lcom/applovin/impl/sdk/network/h;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/sdk/network/h;-><init>(Lcom/applovin/impl/sdk/network/f;Lcom/applovin/impl/sdk/p;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/network/f;->d:Lcom/applovin/impl/sdk/network/h;

    .line 55
    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/network/h;->a(I)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/f;->f:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/h;->a()V

    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No sdk specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/network/f;)Ljava/lang/Object;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/applovin/impl/sdk/network/f;->e:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/network/f;Lcom/applovin/impl/sdk/network/j;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/f;->b(Lcom/applovin/impl/sdk/network/j;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/network/f;Lcom/applovin/impl/sdk/network/j;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/network/f;->a(Lcom/applovin/impl/sdk/network/j;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/network/j;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 5

    const-string v0, "Skip pending postback: "

    .line 154
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->b:Lcom/applovin/impl/sdk/y;

    const-string v2, "PersistentPostbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Preparing to submit postback..."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->p()Z

    move-result v1

    if-nez v1, :cond_2

    .line 158
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/sdk/network/f;->b:Lcom/applovin/impl/sdk/y;

    const-string p2, "PersistentPostbackManager"

    const-string v0, "Skipping postback dispatch because SDK is still initializing - postback will be dispatched afterwards"

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/network/f;->i:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 166
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/applovin/impl/sdk/network/f;->b:Lcom/applovin/impl/sdk/y;

    const-string v2, "PersistentPostbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_3
    monitor-exit v1

    return-void

    .line 170
    :cond_4
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->l()V

    .line 172
    invoke-direct {p0}, Lcom/applovin/impl/sdk/network/f;->d()V

    .line 173
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 175
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->a:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->cX:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 176
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->k()I

    move-result v1

    if-le v1, v0, :cond_6

    .line 178
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/applovin/impl/sdk/network/f;->b:Lcom/applovin/impl/sdk/y;

    const-string v1, "PersistentPostbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exceeded maximum persisted attempt count of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Dequeuing postback: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_5
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/f;->d(Lcom/applovin/impl/sdk/network/j;)V

    goto/16 :goto_1

    .line 183
    :cond_6
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->i:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->f()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->f()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    .line 190
    :goto_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->a:Lcom/applovin/impl/sdk/p;

    invoke-static {v1}, Lcom/applovin/impl/sdk/network/l;->b(Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v1

    .line 191
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/l$a;->d(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v1

    .line 192
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/l$a;->e(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v1

    .line 193
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->d()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/l$a;->c(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v1

    .line 194
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/l$a;->f(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v1

    .line 195
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->e()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/l$a;->d(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v1

    .line 196
    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/network/l$a;->b(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v0

    .line 197
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/l$a;->f(Z)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v0

    .line 198
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/l$a;->e(Z)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v0

    .line 199
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/l$a;->g(Z)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v0

    .line 200
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/l$a;->g(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/l$a;->b()Lcom/applovin/impl/sdk/network/l;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->ak()Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/network/f$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/applovin/impl/sdk/network/f$2;-><init>(Lcom/applovin/impl/sdk/network/f;Lcom/applovin/impl/sdk/network/j;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/network/PostbackServiceImpl;->dispatchPostbackRequest(Lcom/applovin/impl/sdk/network/l;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 186
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 173
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/network/f;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/applovin/impl/sdk/network/f;->b:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/network/f;Lcom/applovin/impl/sdk/network/j;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/f;->d(Lcom/applovin/impl/sdk/network/j;)V

    return-void
.end method

.method private b(Lcom/applovin/impl/sdk/network/j;)V
    .locals 5

    .line 111
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/applovin/impl/sdk/network/f;->c:I

    if-le v1, v2, :cond_0

    .line 115
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-direct {p0}, Lcom/applovin/impl/sdk/network/f;->d()V

    .line 121
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->b:Lcom/applovin/impl/sdk/y;

    const-string v2, "PersistentPostbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enqueued postback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/network/f;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/applovin/impl/sdk/network/f;->e()V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/network/f;Lcom/applovin/impl/sdk/network/j;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/f;->e(Lcom/applovin/impl/sdk/network/j;)V

    return-void
.end method

.method private c(Lcom/applovin/impl/sdk/network/j;)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/sdk/network/f;->a(Lcom/applovin/impl/sdk/network/j;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/network/f;)Ljava/util/ArrayList;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/applovin/impl/sdk/network/f;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/network/f;->h:J

    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/network/f;Lcom/applovin/impl/sdk/network/j;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/f;->c(Lcom/applovin/impl/sdk/network/j;)V

    return-void
.end method

.method private d(Lcom/applovin/impl/sdk/network/j;)V
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->i:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 237
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 239
    invoke-direct {p0}, Lcom/applovin/impl/sdk/network/f;->d()V

    .line 240
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->b:Lcom/applovin/impl/sdk/y;

    const-string v1, "PersistentPostbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dequeued successfully transmitted postback: "

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

    .line 240
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private e()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/network/j;

    .line 296
    invoke-direct {p0, v2}, Lcom/applovin/impl/sdk/network/f;->c(Lcom/applovin/impl/sdk/network/j;)V

    goto :goto_0

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 300
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private e(Lcom/applovin/impl/sdk/network/j;)V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->i:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 250
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
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
.method a()J
    .locals 2

    .line 132
    iget-wide v0, p0, Lcom/applovin/impl/sdk/network/f;->h:J

    return-wide v0
.end method

.method public a(Lcom/applovin/impl/sdk/network/j;)V
    .locals 1

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/network/f;->a(Lcom/applovin/impl/sdk/network/j;Z)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/network/j;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, p1, p2, v0}, Lcom/applovin/impl/sdk/network/f;->a(Lcom/applovin/impl/sdk/network/j;ZLcom/applovin/sdk/AppLovinPostbackListener;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/network/j;ZLcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 1

    .line 74
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 77
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->m()V

    .line 79
    :cond_1
    new-instance p2, Lcom/applovin/impl/sdk/network/f$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/applovin/impl/sdk/network/f$1;-><init>(Lcom/applovin/impl/sdk/network/f;Lcom/applovin/impl/sdk/network/j;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    .line 98
    invoke-static {}, Lcom/applovin/impl/sdk/utils/Utils;->isMainThread()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 100
    new-instance p3, Lcom/applovin/impl/sdk/e/z;

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/j;->p()Z

    move-result p1

    invoke-direct {p3, v0, p1, p2}, Lcom/applovin/impl/sdk/e/z;-><init>(Lcom/applovin/impl/sdk/p;ZLjava/lang/Runnable;)V

    .line 101
    iget-object p1, p0, Lcom/applovin/impl/sdk/network/f;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object p1

    sget-object p2, Lcom/applovin/impl/sdk/e/o$a;->e:Lcom/applovin/impl/sdk/e/o$a;

    invoke-virtual {p1, p3, p2}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V

    goto :goto_0

    .line 105
    :cond_2
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/network/j;",
            ">;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/network/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 141
    iget-object v2, p0, Lcom/applovin/impl/sdk/network/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 142
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 3

    .line 257
    new-instance v0, Lcom/applovin/impl/sdk/network/f$3;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/network/f$3;-><init>(Lcom/applovin/impl/sdk/network/f;)V

    .line 279
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->a:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->cY:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    new-instance v1, Lcom/applovin/impl/sdk/e/z;

    iget-object v2, p0, Lcom/applovin/impl/sdk/network/f;->a:Lcom/applovin/impl/sdk/p;

    invoke-direct {v1, v2, v0}, Lcom/applovin/impl/sdk/e/z;-><init>(Lcom/applovin/impl/sdk/p;Ljava/lang/Runnable;)V

    .line 282
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/e/o$a;->e:Lcom/applovin/impl/sdk/e/o$a;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V

    goto :goto_0

    .line 286
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
