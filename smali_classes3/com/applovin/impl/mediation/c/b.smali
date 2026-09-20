.class public Lcom/applovin/impl/mediation/c/b;
.super Lcom/applovin/impl/sdk/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/c/b$b;,
        Lcom/applovin/impl/mediation/c/b$a;
    }
.end annotation


# static fields
.field private static a:Lorg/json/JSONObject;

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Lcom/applovin/mediation/MaxAdFormat;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/content/Context;

.field private final k:Lcom/applovin/impl/mediation/c/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/impl/mediation/c/b;->b:Ljava/lang/Object;

    .line 48
    invoke-static {}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/mediation/c/b;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/util/Map;Landroid/content/Context;Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/mediation/c/b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/applovin/mediation/MaxAdFormat;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/applovin/impl/sdk/p;",
            "Lcom/applovin/impl/mediation/c/b$a;",
            ")V"
        }
    .end annotation

    const-string v0, "TaskCollectSignals"

    .line 91
    invoke-direct {p0, v0, p5}, Lcom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V

    .line 93
    iput-object p1, p0, Lcom/applovin/impl/mediation/c/b;->d:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/applovin/impl/mediation/c/b;->e:Lcom/applovin/mediation/MaxAdFormat;

    .line 95
    iput-object p3, p0, Lcom/applovin/impl/mediation/c/b;->i:Ljava/util/Map;

    .line 96
    iput-object p4, p0, Lcom/applovin/impl/mediation/c/b;->j:Landroid/content/Context;

    .line 97
    iput-object p6, p0, Lcom/applovin/impl/mediation/c/b;->k:Lcom/applovin/impl/mediation/c/b$a;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/c/b;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/applovin/impl/mediation/c/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method private a(Lcom/applovin/impl/mediation/a/h;Lcom/applovin/impl/mediation/a/g$a;)V
    .locals 7

    .line 215
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/h;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Lcom/applovin/impl/mediation/c/b$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/mediation/c/b$1;-><init>(Lcom/applovin/impl/mediation/c/b;Lcom/applovin/impl/mediation/a/h;Lcom/applovin/impl/mediation/a/g$a;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->ap()Lcom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/c/b;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/applovin/impl/mediation/c/b;->e:Lcom/applovin/mediation/MaxAdFormat;

    iget-object v5, p0, Lcom/applovin/impl/mediation/c/b;->j:Landroid/content/Context;

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/mediation/MediationServiceImpl;->collectSignal(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/mediation/a/h;Landroid/content/Context;Lcom/applovin/impl/mediation/a/g$a;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/b;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/b;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/b;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No signals collected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/mediation/c/b;->k:Lcom/applovin/impl/mediation/c/b$a;

    if-eqz p1, :cond_1

    .line 238
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1, p2}, Lcom/applovin/impl/mediation/c/b$a;->a(Lorg/json/JSONArray;)V

    :cond_1
    return-void
.end method

.method private a(Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 168
    new-instance v0, Lcom/applovin/impl/mediation/c/b$b;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/c/b;->k:Lcom/applovin/impl/mediation/c/b$a;

    iget-object v3, p0, Lcom/applovin/impl/mediation/c/b;->f:Lcom/applovin/impl/sdk/p;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/applovin/impl/mediation/c/b$b;-><init>(ILcom/applovin/impl/mediation/c/b$a;Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/mediation/c/b$1;)V

    const/4 v1, 0x0

    .line 171
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 173
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 174
    new-instance v3, Lcom/applovin/impl/mediation/a/h;

    iget-object v4, p0, Lcom/applovin/impl/mediation/c/b;->i:Ljava/util/Map;

    iget-object v5, p0, Lcom/applovin/impl/mediation/c/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-direct {v3, v4, v2, p2, v5}, Lcom/applovin/impl/mediation/a/h;-><init>(Ljava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    .line 175
    invoke-direct {p0, v3, v0}, Lcom/applovin/impl/mediation/c/b;->a(Lcom/applovin/impl/mediation/a/h;Lcom/applovin/impl/mediation/a/g$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/mediation/c/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object p1

    new-instance p2, Lcom/applovin/impl/sdk/e/z;

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-direct {p2, v1, v0}, Lcom/applovin/impl/sdk/e/z;-><init>(Lcom/applovin/impl/sdk/p;Ljava/lang/Runnable;)V

    sget-object v0, Lcom/applovin/impl/sdk/e/o$a;->a:Lcom/applovin/impl/sdk/e/o$a;

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/b;->f:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/a;->j:Lcom/applovin/impl/sdk/c/b;

    .line 181
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 179
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;J)V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .locals 1

    .line 393
    sget-object v0, Lcom/applovin/impl/mediation/c/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    :try_start_0
    sput-object p0, Lcom/applovin/impl/mediation/c/b;->a:Lorg/json/JSONObject;

    .line 396
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/c/b;)Lcom/applovin/mediation/MaxAdFormat;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/applovin/impl/mediation/c/b;->e:Lcom/applovin/mediation/MaxAdFormat;

    return-object p0
.end method

.method private b(Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 186
    sget-object v0, Lcom/applovin/impl/mediation/c/b;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/b;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 187
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 193
    :cond_0
    new-instance v2, Lcom/applovin/impl/mediation/c/b$b;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    iget-object v4, p0, Lcom/applovin/impl/mediation/c/b;->k:Lcom/applovin/impl/mediation/c/b$a;

    iget-object v5, p0, Lcom/applovin/impl/mediation/c/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/applovin/impl/mediation/c/b$b;-><init>(ILcom/applovin/impl/mediation/c/b$a;Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/mediation/c/b$1;)V

    const/4 v3, 0x0

    .line 196
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 198
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    .line 199
    invoke-static {v4, v5, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 202
    new-instance v5, Lcom/applovin/impl/mediation/a/h;

    iget-object v6, p0, Lcom/applovin/impl/mediation/c/b;->i:Ljava/util/Map;

    iget-object v7, p0, Lcom/applovin/impl/mediation/c/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-direct {v5, v6, v4, p2, v7}, Lcom/applovin/impl/mediation/a/h;-><init>(Ljava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    .line 203
    invoke-direct {p0, v5, v2}, Lcom/applovin/impl/mediation/c/b;->a(Lcom/applovin/impl/mediation/a/h;Lcom/applovin/impl/mediation/a/g$a;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/mediation/c/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object p1

    new-instance p2, Lcom/applovin/impl/sdk/e/z;

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-direct {p2, v0, v2}, Lcom/applovin/impl/sdk/e/z;-><init>(Lcom/applovin/impl/sdk/p;Ljava/lang/Runnable;)V

    sget-object v0, Lcom/applovin/impl/sdk/e/o$a;->a:Lcom/applovin/impl/sdk/e/o$a;

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/b;->f:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/a;->j:Lcom/applovin/impl/sdk/c/b;

    .line 210
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 208
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;J)V

    return-void

    .line 189
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No signal providers found for ad unit: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/applovin/impl/mediation/c/b;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/applovin/impl/mediation/c/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Lorg/json/JSONObject;)V
    .locals 6

    :try_start_0
    const-string v0, "ad_unit_signal_providers"

    const/4 v1, 0x0

    .line 403
    invoke-static {p0, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 408
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 410
    invoke-static {v0, v3, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getList(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 411
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 412
    sget-object v4, Lcom/applovin/impl/mediation/c/b;->c:Ljava/util/Map;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse ad unit signal providers for JSON object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TaskCollectSignals"

    invoke-static {v1, p0, v0}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/mediation/c/b;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/applovin/impl/mediation/c/b;->j:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/mediation/c/b;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/applovin/impl/mediation/c/b;->f:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/b;->f:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->fE:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 109
    sget-object v0, Lcom/applovin/impl/mediation/c/b;->b:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    :try_start_1
    sget-object v2, Lcom/applovin/impl/mediation/c/b;->a:Lorg/json/JSONObject;

    const-string/jumbo v3, "signal_providers"

    invoke-static {v2, v3, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v2

    .line 113
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 115
    :try_start_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 118
    sget-object v0, Lcom/applovin/impl/mediation/c/b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 120
    sget-object v0, Lcom/applovin/impl/mediation/c/b;->a:Lorg/json/JSONObject;

    invoke-direct {p0, v2, v0}, Lcom/applovin/impl/mediation/c/b;->b(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 124
    :cond_0
    sget-object v0, Lcom/applovin/impl/mediation/c/b;->a:Lorg/json/JSONObject;

    invoke-direct {p0, v2, v0}, Lcom/applovin/impl/mediation/c/b;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/b;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/b;->h:Lcom/applovin/impl/sdk/y;

    iget-object v2, p0, Lcom/applovin/impl/mediation/c/b;->g:Ljava/lang/String;

    const-string v3, "Unable to find cached signal providers, falling back to old logic."

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 113
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 132
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/b;->f:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/d;->F:Lcom/applovin/impl/sdk/c/d;

    const-string/jumbo v3, "{}"

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/p;->b(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "signal_providers"

    .line 134
    invoke-static {v2, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 136
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 143
    :cond_3
    sget-object v1, Lcom/applovin/impl/mediation/c/b;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 145
    invoke-direct {p0, v0, v2}, Lcom/applovin/impl/mediation/c/b;->b(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    goto :goto_3

    .line 149
    :cond_4
    invoke-direct {p0, v0, v2}, Lcom/applovin/impl/mediation/c/b;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_5
    :goto_2
    const-string v0, "No signal providers found"

    .line 138
    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/mediation/c/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    const-string v1, "Failed to collect signals"

    .line 162
    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/mediation/c/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "Failed to wait for signals"

    .line 158
    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/mediation/c/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "Failed to parse signals JSON"

    .line 154
    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/mediation/c/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
