.class public Lcom/chartboost/sdk/impl/c5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/c5$a;,
        Lcom/chartboost/sdk/impl/c5$b;
    }
.end annotation


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/String;

.field public final D:Lcom/chartboost/sdk/impl/c5$a;

.field public E:Lcom/chartboost/sdk/impl/c5$b;

.field public F:Ljava/lang/String;

.field public G:Lcom/chartboost/sdk/impl/r5;

.field public H:Lcom/chartboost/sdk/impl/a6;

.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:J

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Z

.field public final t:Z

.field public final u:Z

.field public final v:I

.field public final w:Z

.field public final x:I

.field public final y:Z

.field public final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "configVariant"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/c5;->a:Ljava/lang/String;

    const-string v0, "prefetchDisable"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/c5;->b:Z

    const-string v0, "publisherDisable"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/c5;->c:Z

    .line 5
    invoke-static {p1}, Lcom/chartboost/sdk/impl/c5$a;->a(Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/c5$a;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/c5;->D:Lcom/chartboost/sdk/impl/c5$a;

    .line 8
    :try_start_0
    invoke-static {p1}, Lcom/chartboost/sdk/impl/c5$b;->a(Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/c5$b;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/c5;->E:Lcom/chartboost/sdk/impl/c5$b;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const-string v0, "publisherWarning"

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/c5;->F:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "invalidateFolderList"

    .line 17
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_1

    .line 21
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 22
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 23
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 26
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/c5;->d:Ljava/util/List;

    const-string/jumbo v0, "trackingLevels"

    .line 29
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    const-string v1, "critical"

    const/4 v3, 0x1

    .line 32
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/c5;->e:Z

    const-string v1, "includeStackTrace"

    .line 33
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/c5;->l:Z

    const-string v1, "error"

    .line 34
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/c5;->f:Z

    const-string v1, "debug"

    .line 35
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/c5;->g:Z

    const-string v1, "session"

    .line 36
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/c5;->h:Z

    const-string/jumbo v1, "system"

    .line 37
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/c5;->i:Z

    const-string/jumbo v1, "timing"

    .line 38
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/c5;->j:Z

    const-string/jumbo v1, "user"

    .line 39
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/c5;->k:Z

    .line 40
    invoke-static {p1}, Lcom/chartboost/sdk/impl/r5;->a(Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/r5;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/c5;->G:Lcom/chartboost/sdk/impl/r5;

    const-string/jumbo v0, "videoPreCaching"

    .line 42
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 46
    :cond_3
    new-instance v1, Lcom/chartboost/sdk/impl/a6;

    invoke-direct {v1}, Lcom/chartboost/sdk/impl/a6;-><init>()V

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/a6;->a(Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/a6;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/c5;->H:Lcom/chartboost/sdk/impl/a6;

    const-string v0, "getAdRetryBaseMs"

    const-wide/16 v4, 0xc8

    .line 48
    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/chartboost/sdk/impl/c5;->m:J

    const-string v0, "getAdRetryMaxBackoffExponent"

    const/4 v1, 0x3

    .line 51
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/c5;->n:I

    const-string/jumbo v0, "webview"

    .line 56
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_4

    .line 58
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_4
    const-string v4, "cacheMaxBytes"

    const/high16 v5, 0x6400000

    .line 62
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/chartboost/sdk/impl/c5;->o:I

    const-string v4, "cacheMaxUnits"

    const/16 v5, 0xa

    .line 64
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_5

    move v5, v4

    .line 65
    :cond_5
    iput v5, p0, Lcom/chartboost/sdk/impl/c5;->p:I

    .line 66
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget v5, Lcom/chartboost/sdk/impl/y0;->a:I

    const-string v6, "cacheTTLs"

    invoke-virtual {p1, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Lcom/chartboost/sdk/impl/c5;->q:I

    .line 68
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "directories"

    .line 69
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 71
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_7

    .line 73
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    .line 74
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 75
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 78
    :cond_7
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/chartboost/sdk/impl/c5;->r:Ljava/util/List;

    .line 81
    invoke-static {}, Lcom/chartboost/sdk/impl/c5;->f()Z

    move-result v4

    const-string v5, "enabled"

    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/chartboost/sdk/impl/c5;->s:Z

    const-string v4, "inplayEnabled"

    .line 82
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/chartboost/sdk/impl/c5;->t:Z

    const-string v4, "interstitialEnabled"

    .line 83
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/chartboost/sdk/impl/c5;->u:Z

    const-string v4, "invalidatePendingImpression"

    .line 85
    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_8

    goto :goto_3

    :cond_8
    move v4, v1

    .line 90
    :goto_3
    iput v4, p0, Lcom/chartboost/sdk/impl/c5;->v:I

    const-string v4, "lockOrientation"

    .line 92
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/chartboost/sdk/impl/c5;->w:Z

    const-string v4, "prefetchSession"

    .line 93
    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/chartboost/sdk/impl/c5;->x:I

    const-string v4, "rewardVideoEnabled"

    .line 94
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/chartboost/sdk/impl/c5;->y:Z

    const-string/jumbo v4, "version"

    const-string/jumbo v5, "v2"

    .line 95
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/c5;->z:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    aput-object p1, v4, v3

    const-string v5, "/interstitial/get"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const-string v5, "%s/%s%s"

    .line 97
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/chartboost/sdk/impl/c5;->A:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    aput-object p1, v4, v3

    const-string v7, "prefetch"

    aput-object v7, v4, v6

    const-string v7, "%s/%s/%s"

    .line 98
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/chartboost/sdk/impl/c5;->B:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    aput-object p1, v1, v3

    const-string p1, "/reward/get"

    aput-object p1, v1, v6

    .line 99
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/c5;->C:Ljava/lang/String;

    return-void
.end method

.method public static f()Z
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    .line 3
    invoke-static {}, Lcom/chartboost/sdk/impl/c0;->b()Lcom/chartboost/sdk/impl/c0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/c0;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "[^\\d.]"

    const-string v5, ""

    .line 10
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\."

    .line 11
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v4, v3

    .line 14
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_3

    if-ge v4, v0, :cond_3

    .line 17
    :try_start_0
    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget v6, v1, v4

    if-le v5, v6, :cond_1

    const/4 v0, 0x1

    return v0

    .line 19
    :cond_1
    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget v6, v1, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v5, v6, :cond_2

    return v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    return v3

    nop

    :array_0
    .array-data 4
        0x4
        0x4
        0x2
    .end array-data
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/c5$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c5;->D:Lcom/chartboost/sdk/impl/c5$a;

    return-object v0
.end method

.method public b()Lcom/chartboost/sdk/impl/a6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c5;->H:Lcom/chartboost/sdk/impl/a6;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/c5;->c:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c5;->F:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/chartboost/sdk/impl/r5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c5;->G:Lcom/chartboost/sdk/impl/r5;

    return-object v0
.end method

.method public g()Lcom/chartboost/sdk/impl/f2;
    .locals 4

    .line 1
    new-instance v0, Lcom/chartboost/sdk/impl/f2;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/c5;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/chartboost/sdk/impl/c5;->s:Z

    iget-object v3, p0, Lcom/chartboost/sdk/impl/c5;->z:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/impl/f2;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method
