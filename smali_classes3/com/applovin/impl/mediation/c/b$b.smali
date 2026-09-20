.class Lcom/applovin/impl/mediation/c/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/mediation/a/g$a;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/mediation/c/b$a;

.field private final b:Ljava/lang/Object;

.field private c:I

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/applovin/impl/mediation/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/applovin/impl/sdk/p;

.field private final g:Lcom/applovin/impl/sdk/y;


# direct methods
.method private constructor <init>(ILcom/applovin/impl/mediation/c/b$a;Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput p1, p0, Lcom/applovin/impl/mediation/c/b$b;->c:I

    .line 268
    iput-object p2, p0, Lcom/applovin/impl/mediation/c/b$b;->a:Lcom/applovin/impl/mediation/c/b$a;

    .line 269
    iput-object p3, p0, Lcom/applovin/impl/mediation/c/b$b;->f:Lcom/applovin/impl/sdk/p;

    .line 270
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/mediation/c/b$b;->g:Lcom/applovin/impl/sdk/y;

    .line 272
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/mediation/c/b$b;->b:Ljava/lang/Object;

    .line 273
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/applovin/impl/mediation/c/b$b;->e:Ljava/util/Collection;

    .line 274
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/c/b$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(ILcom/applovin/impl/mediation/c/b$a;Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/mediation/c/b$1;)V
    .locals 0

    .line 254
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/mediation/c/b$b;-><init>(ILcom/applovin/impl/mediation/c/b$a;Lcom/applovin/impl/sdk/p;)V

    return-void
.end method

.method private a()V
    .locals 7

    .line 324
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/b$b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/applovin/impl/mediation/c/b$b;->e:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 327
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 332
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/mediation/a/g;

    .line 336
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 337
    invoke-virtual {v2}, Lcom/applovin/impl/mediation/a/g;->a()Lcom/applovin/impl/mediation/a/h;

    move-result-object v4

    const-string v5, "name"

    .line 339
    invoke-virtual {v4}, Lcom/applovin/impl/mediation/a/h;->X()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "class"

    .line 340
    invoke-virtual {v4}, Lcom/applovin/impl/mediation/a/h;->W()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "adapter_version"

    .line 341
    invoke-virtual {v2}, Lcom/applovin/impl/mediation/a/g;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "sdk_version"

    .line 342
    invoke-virtual {v2}, Lcom/applovin/impl/mediation/a/g;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 347
    invoke-virtual {v2}, Lcom/applovin/impl/mediation/a/g;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "error_message"

    .line 349
    invoke-virtual {v2}, Lcom/applovin/impl/mediation/a/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    const-string/jumbo v6, "signal"

    .line 353
    invoke-virtual {v2}, Lcom/applovin/impl/mediation/a/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string v2, "data"

    .line 355
    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 359
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/mediation/c/b$b;->g:Lcom/applovin/impl/sdk/y;

    const-string v3, "TaskCollectSignals"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Collected signal from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .line 363
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/applovin/impl/mediation/c/b$b;->g:Lcom/applovin/impl/sdk/y;

    const-string v4, "TaskCollectSignals"

    const-string v5, "Failed to create signal data"

    invoke-virtual {v3, v4, v5, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 379
    :cond_2
    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/c/b$b;->a(Lorg/json/JSONArray;)V

    return-void

    :catchall_0
    move-exception v1

    .line 327
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/c/b$b;)V
    .locals 0

    .line 254
    invoke-direct {p0}, Lcom/applovin/impl/mediation/c/b$b;->a()V

    return-void
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/b$b;->a:Lcom/applovin/impl/mediation/c/b$a;

    if-eqz v0, :cond_0

    .line 386
    invoke-interface {v0, p1}, Lcom/applovin/impl/mediation/c/b$a;->a(Lorg/json/JSONArray;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/mediation/a/g;)V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/b$b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/c/b$b;->e:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 284
    iget p1, p0, Lcom/applovin/impl/mediation/c/b$b;->c:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/applovin/impl/mediation/c/b$b;->c:I

    const/4 v2, 0x0

    if-ge p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 287
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 289
    iget-object p1, p0, Lcom/applovin/impl/mediation/c/b$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 293
    invoke-static {}, Lcom/applovin/impl/sdk/utils/Utils;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/mediation/c/b$b;->f:Lcom/applovin/impl/sdk/p;

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->fN:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 295
    new-instance p1, Lcom/applovin/impl/sdk/e/z;

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/b$b;->f:Lcom/applovin/impl/sdk/p;

    new-instance v1, Lcom/applovin/impl/mediation/c/b$b$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/mediation/c/b$b$1;-><init>(Lcom/applovin/impl/mediation/c/b$b;)V

    invoke-direct {p1, v0, v1}, Lcom/applovin/impl/sdk/e/z;-><init>(Lcom/applovin/impl/sdk/p;Ljava/lang/Runnable;)V

    .line 303
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/b$b;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/e/o$a;->k:Lcom/applovin/impl/sdk/e/o$a;

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V

    goto :goto_1

    .line 307
    :cond_1
    invoke-direct {p0}, Lcom/applovin/impl/mediation/c/b$b;->a()V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 287
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/b$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-direct {p0}, Lcom/applovin/impl/mediation/c/b$b;->a()V

    :cond_0
    return-void
.end method
