.class Lcom/applovin/impl/sdk/network/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/network/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/core/util/Consumer<",
        "Lcom/applovin/impl/sdk/network/e$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/network/b;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/applovin/impl/sdk/network/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/network/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final f:Z

.field private final g:J

.field private final h:Lcom/applovin/impl/sdk/network/b$a;

.field private final i:Lcom/applovin/impl/sdk/network/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/network/b$c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/network/b;Ljava/lang/String;Lcom/applovin/impl/sdk/network/c;Ljava/lang/String;Ljava/lang/Object;ZJLcom/applovin/impl/sdk/network/b$a;Lcom/applovin/impl/sdk/network/b$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/applovin/impl/sdk/network/c<",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;ZJ",
            "Lcom/applovin/impl/sdk/network/b$a;",
            "Lcom/applovin/impl/sdk/network/b$c<",
            "TT;>;)V"
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lcom/applovin/impl/sdk/network/b$b;->a:Lcom/applovin/impl/sdk/network/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p2, p0, Lcom/applovin/impl/sdk/network/b$b;->b:Ljava/lang/String;

    .line 254
    iput-object p3, p0, Lcom/applovin/impl/sdk/network/b$b;->c:Lcom/applovin/impl/sdk/network/c;

    .line 255
    iput-object p4, p0, Lcom/applovin/impl/sdk/network/b$b;->d:Ljava/lang/String;

    .line 256
    iput-object p5, p0, Lcom/applovin/impl/sdk/network/b$b;->e:Ljava/lang/Object;

    .line 257
    iput-boolean p6, p0, Lcom/applovin/impl/sdk/network/b$b;->f:Z

    .line 258
    iput-wide p7, p0, Lcom/applovin/impl/sdk/network/b$b;->g:J

    .line 259
    iput-object p9, p0, Lcom/applovin/impl/sdk/network/b$b;->h:Lcom/applovin/impl/sdk/network/b$a;

    .line 260
    iput-object p10, p0, Lcom/applovin/impl/sdk/network/b$b;->i:Lcom/applovin/impl/sdk/network/b$c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/network/b;Ljava/lang/String;Lcom/applovin/impl/sdk/network/c;Ljava/lang/String;Ljava/lang/Object;ZJLcom/applovin/impl/sdk/network/b$a;Lcom/applovin/impl/sdk/network/b$c;Lcom/applovin/impl/sdk/network/b$1;)V
    .locals 0

    .line 230
    invoke-direct/range {p0 .. p10}, Lcom/applovin/impl/sdk/network/b$b;-><init>(Lcom/applovin/impl/sdk/network/b;Ljava/lang/String;Lcom/applovin/impl/sdk/network/c;Ljava/lang/String;Ljava/lang/Object;ZJLcom/applovin/impl/sdk/network/b$a;Lcom/applovin/impl/sdk/network/b$c;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/network/e$c;)V
    .locals 12

    const-string v0, "ConnectionManager"

    const-string v1, "Unable to parse response from "

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 279
    :try_start_0
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/e$c;->a()I

    move-result v3

    if-lez v3, :cond_a

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/applovin/impl/sdk/network/b$b;->g:J

    sub-long/2addr v4, v6

    const/16 v6, 0xc8

    if-lt v3, v6, :cond_9

    const/16 v6, 0x190

    if-ge v3, v6, :cond_9

    .line 293
    iget-object v6, p0, Lcom/applovin/impl/sdk/network/b$b;->h:Lcom/applovin/impl/sdk/network/b$a;

    if-eqz v6, :cond_0

    .line 295
    invoke-static {v6, v4, v5}, Lcom/applovin/impl/sdk/network/b$a;->a(Lcom/applovin/impl/sdk/network/b$a;J)V

    .line 298
    :cond_0
    iget-object v4, p0, Lcom/applovin/impl/sdk/network/b$b;->a:Lcom/applovin/impl/sdk/network/b;

    iget-object v5, p0, Lcom/applovin/impl/sdk/network/b$b;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/applovin/impl/sdk/network/b$b;->b:Ljava/lang/String;

    iget-wide v8, p0, Lcom/applovin/impl/sdk/network/b$b;->g:J

    move v7, v3

    invoke-static/range {v4 .. v9}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/network/b;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 300
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/e$c;->b()Ljava/lang/String;

    move-result-object v4

    .line 302
    iget-object v5, p0, Lcom/applovin/impl/sdk/network/b$b;->a:Lcom/applovin/impl/sdk/network/b;

    invoke-static {v5}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/network/b;)Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/Utils;->isDspDemoApp(Landroid/content/Context;)Z

    move-result v5
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_3

    const-string v5, ""

    if-eqz v4, :cond_1

    move-object v6, v4

    goto :goto_0

    :cond_1
    move-object v6, v5

    .line 305
    :goto_0
    :try_start_1
    iget-object v7, p0, Lcom/applovin/impl/sdk/network/b$b;->c:Lcom/applovin/impl/sdk/network/c;

    invoke-virtual {v7}, Lcom/applovin/impl/sdk/network/c;->e()Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v5, p0, Lcom/applovin/impl/sdk/network/b$b;->c:Lcom/applovin/impl/sdk/network/c;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/network/c;->e()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 306
    :cond_2
    iget-object v7, p0, Lcom/applovin/impl/sdk/network/b$b;->a:Lcom/applovin/impl/sdk/network/b;

    invoke-static {v7}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/network/b;)Lcom/applovin/impl/sdk/p;

    move-result-object v7

    invoke-virtual {v7}, Lcom/applovin/impl/sdk/p;->ab()Lcom/applovin/impl/sdk/m;

    move-result-object v7

    iget-object v8, p0, Lcom/applovin/impl/sdk/network/b$b;->b:Ljava/lang/String;

    invoke-virtual {v7, v6, v8, v5}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v4, :cond_8

    .line 311
    iget-object v5, p0, Lcom/applovin/impl/sdk/network/b$b;->a:Lcom/applovin/impl/sdk/network/b;

    invoke-static {v5}, Lcom/applovin/impl/sdk/network/b;->b(Lcom/applovin/impl/sdk/network/b;)Lcom/applovin/impl/sdk/y;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lcom/applovin/impl/sdk/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v5, p0, Lcom/applovin/impl/sdk/network/b$b;->h:Lcom/applovin/impl/sdk/network/b$a;

    if-eqz v5, :cond_4

    .line 315
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Lcom/applovin/impl/sdk/network/b$a;->b(Lcom/applovin/impl/sdk/network/b$a;J)V

    .line 319
    :cond_4
    iget-boolean v5, p0, Lcom/applovin/impl/sdk/network/b$b;->f:Z

    if-eqz v5, :cond_6

    .line 322
    iget-object v5, p0, Lcom/applovin/impl/sdk/network/b$b;->a:Lcom/applovin/impl/sdk/network/b;

    invoke-static {v5}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/network/b;)Lcom/applovin/impl/sdk/p;

    move-result-object v5

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/p;->B()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/applovin/impl/sdk/utils/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    const/4 v6, 0x2

    .line 327
    invoke-static {v6}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map(I)Ljava/util/Map;

    move-result-object v6

    const-string v7, "request"

    .line 328
    iget-object v8, p0, Lcom/applovin/impl/sdk/network/b$b;->b:Ljava/lang/String;

    invoke-static {v8}, Lcom/applovin/impl/sdk/utils/StringUtils;->getHostAndPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "response"

    .line 329
    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v4, p0, Lcom/applovin/impl/sdk/network/b$b;->a:Lcom/applovin/impl/sdk/network/b;

    invoke-static {v4}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/network/b;)Lcom/applovin/impl/sdk/p;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/p;->G()Lcom/applovin/impl/sdk/EventServiceImpl;

    move-result-object v4

    const-string v7, "rdf"

    invoke-virtual {v4, v7, v6}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    move-object v4, v5

    .line 339
    :cond_6
    :try_start_2
    iget-object v5, p0, Lcom/applovin/impl/sdk/network/b$b;->a:Lcom/applovin/impl/sdk/network/b;

    iget-object v6, p0, Lcom/applovin/impl/sdk/network/b$b;->e:Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/network/b;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 342
    iget-object v5, p0, Lcom/applovin/impl/sdk/network/b$b;->i:Lcom/applovin/impl/sdk/network/b$c;

    invoke-interface {v5, v4, v3}, Lcom/applovin/impl/sdk/network/b$c;->a(Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    .line 346
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/b$b;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->getHostAndPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " because of "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 347
    iget-object v5, p0, Lcom/applovin/impl/sdk/network/b$b;->a:Lcom/applovin/impl/sdk/network/b;

    invoke-static {v5}, Lcom/applovin/impl/sdk/network/b;->b(Lcom/applovin/impl/sdk/network/b;)Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/applovin/impl/sdk/network/b$b;->a:Lcom/applovin/impl/sdk/network/b;

    invoke-static {v5}, Lcom/applovin/impl/sdk/network/b;->b(Lcom/applovin/impl/sdk/network/b;)Lcom/applovin/impl/sdk/y;

    move-result-object v5

    invoke-virtual {v5, v0, v1, v4}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    :cond_7
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/b$b;->a:Lcom/applovin/impl/sdk/network/b;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/network/b;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->P()Lcom/applovin/impl/sdk/d/g;

    move-result-object v0

    sget-object v4, Lcom/applovin/impl/sdk/d/f;->k:Lcom/applovin/impl/sdk/d/f;

    invoke-virtual {v0, v4}, Lcom/applovin/impl/sdk/d/g;->a(Lcom/applovin/impl/sdk/d/f;)J

    .line 352
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/b$b;->i:Lcom/applovin/impl/sdk/network/b$c;

    const/16 v4, -0x320

    invoke-interface {v0, v4, v1, v2}, Lcom/applovin/impl/sdk/network/b$c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 358
    :cond_8
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/b$b;->i:Lcom/applovin/impl/sdk/network/b$c;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/b$b;->e:Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/applovin/impl/sdk/network/b$c;->a(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 364
    :cond_9
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/b$b;->i:Lcom/applovin/impl/sdk/network/b$c;

    invoke-interface {v0, v3, v2, v2}, Lcom/applovin/impl/sdk/network/b$c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 369
    :cond_a
    iget-object v4, p0, Lcom/applovin/impl/sdk/network/b$b;->a:Lcom/applovin/impl/sdk/network/b;

    iget-object v5, p0, Lcom/applovin/impl/sdk/network/b$b;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/applovin/impl/sdk/network/b$b;->b:Ljava/lang/String;

    iget-wide v8, p0, Lcom/applovin/impl/sdk/network/b$b;->g:J

    const/4 v10, 0x0

    move v7, v3

    invoke-static/range {v4 .. v10}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/network/b;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V

    .line 370
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/b$b;->i:Lcom/applovin/impl/sdk/network/b$c;

    invoke-interface {v0, v3, v2, v2}, Lcom/applovin/impl/sdk/network/b$c;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    if-nez v3, :cond_b

    .line 408
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/b$b;->a:Lcom/applovin/impl/sdk/network/b;

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/network/b;Ljava/lang/Throwable;)I

    move-result v3

    .line 415
    :cond_b
    :try_start_4
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/e$c;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 419
    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/b$b;->f:Z

    if-eqz v1, :cond_c

    .line 423
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/b$b;->a:Lcom/applovin/impl/sdk/network/b;

    invoke-static {v1}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/network/b;)Lcom/applovin/impl/sdk/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/applovin/impl/sdk/utils/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 427
    :cond_c
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/b$b;->a:Lcom/applovin/impl/sdk/network/b;

    iget-object v4, p0, Lcom/applovin/impl/sdk/network/b$b;->e:Ljava/lang/Object;

    invoke-static {v1, p1, v4}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/network/b;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 432
    :catchall_2
    :cond_d
    iget-object v4, p0, Lcom/applovin/impl/sdk/network/b$b;->a:Lcom/applovin/impl/sdk/network/b;

    iget-object v5, p0, Lcom/applovin/impl/sdk/network/b$b;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/applovin/impl/sdk/network/b$b;->b:Ljava/lang/String;

    iget-wide v8, p0, Lcom/applovin/impl/sdk/network/b$b;->g:J

    move v7, v3

    move-object v10, v0

    invoke-static/range {v4 .. v10}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/network/b;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V

    .line 433
    iget-object p1, p0, Lcom/applovin/impl/sdk/network/b$b;->i:Lcom/applovin/impl/sdk/network/b$c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0, v2}, Lcom/applovin/impl/sdk/network/b$c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p1

    move v0, v3

    .line 383
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/b$b;->e:Ljava/lang/Object;

    const/16 v11, -0x385

    if-eqz v1, :cond_e

    .line 385
    iget-object v4, p0, Lcom/applovin/impl/sdk/network/b$b;->a:Lcom/applovin/impl/sdk/network/b;

    iget-object v5, p0, Lcom/applovin/impl/sdk/network/b$b;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/applovin/impl/sdk/network/b$b;->b:Ljava/lang/String;

    iget-wide v8, p0, Lcom/applovin/impl/sdk/network/b$b;->g:J

    move v7, v0

    move-object v10, p1

    invoke-static/range {v4 .. v10}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/network/b;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V

    .line 388
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/b$b;->i:Lcom/applovin/impl/sdk/network/b$c;

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v11, p1, v2}, Lcom/applovin/impl/sdk/network/b$c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 392
    :cond_e
    iget-object v3, p0, Lcom/applovin/impl/sdk/network/b$b;->a:Lcom/applovin/impl/sdk/network/b;

    iget-object v4, p0, Lcom/applovin/impl/sdk/network/b$b;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/applovin/impl/sdk/network/b$b;->b:Ljava/lang/String;

    iget-wide v7, p0, Lcom/applovin/impl/sdk/network/b$b;->g:J

    move v6, v0

    invoke-static/range {v3 .. v8}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/network/b;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 398
    iget-object p1, p0, Lcom/applovin/impl/sdk/network/b$b;->i:Lcom/applovin/impl/sdk/network/b$c;

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/b$b;->e:Ljava/lang/Object;

    invoke-interface {p1, v0, v11}, Lcom/applovin/impl/sdk/network/b$c;->a(Ljava/lang/Object;I)V

    :goto_1
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 230
    check-cast p1, Lcom/applovin/impl/sdk/network/e$c;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/b$b;->a(Lcom/applovin/impl/sdk/network/e$c;)V

    return-void
.end method
