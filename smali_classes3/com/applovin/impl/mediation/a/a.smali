.class public abstract Lcom/applovin/impl/mediation/a/a;
.super Lcom/applovin/impl/mediation/a/f;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/mediation/MaxAd;


# instance fields
.field protected a:Lcom/applovin/impl/mediation/g;

.field private final c:I

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/lang/String;

.field private g:Lcom/applovin/mediation/MaxAdWaterfallInfo;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/applovin/mediation/hybridAds/c;


# direct methods
.method protected constructor <init>(ILjava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/mediation/g;Lcom/applovin/impl/sdk/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lcom/applovin/impl/mediation/g;",
            "Lcom/applovin/impl/sdk/p;",
            ")V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p2, p3, p4, p6}, Lcom/applovin/impl/mediation/a/f;-><init>(Ljava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    .line 43
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/mediation/a/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/mediation/a/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    iput p1, p0, Lcom/applovin/impl/mediation/a/a;->c:I

    .line 90
    iput-object p5, p0, Lcom/applovin/impl/mediation/a/a;->a:Lcom/applovin/impl/mediation/g;

    if-eqz p5, :cond_0

    .line 91
    invoke-virtual {p5}, Lcom/applovin/impl/mediation/g;->i()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/applovin/impl/mediation/a/a;->f:Ljava/lang/String;

    return-void
.end method

.method private C()J
    .locals 3

    const-string v0, "load_started_time_ms"

    const-wide/16 v1, 0x0

    .line 472
    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(ILjava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/mediation/a/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lcom/applovin/impl/sdk/p;",
            ")",
            "Lcom/applovin/impl/mediation/a/a;"
        }
    .end annotation

    const-string v0, "ad_format"

    const/4 v1, 0x0

    .line 62
    invoke-static {p3, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/applovin/mediation/MaxAdFormat;->formatFromString(Ljava/lang/String;)Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid ad format for string: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    invoke-virtual {v1}, Lcom/applovin/mediation/MaxAdFormat;->isAdViewAd()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    new-instance v0, Lcom/applovin/impl/mediation/a/b;

    move-object v3, v0

    move v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/applovin/impl/mediation/a/b;-><init>(ILjava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    return-object v0

    .line 71
    :cond_0
    sget-object v2, Lcom/applovin/mediation/MaxAdFormat;->NATIVE:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v1, v2, :cond_1

    .line 73
    new-instance v0, Lcom/applovin/impl/mediation/a/d;

    move-object v3, v0

    move v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/applovin/impl/mediation/a/d;-><init>(ILjava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    return-object v0

    .line 75
    :cond_1
    invoke-virtual {v1}, Lcom/applovin/mediation/MaxAdFormat;->isFullscreenAd()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    new-instance v0, Lcom/applovin/impl/mediation/a/c;

    move-object v2, v0

    move v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/applovin/impl/mediation/a/c;-><init>(ILjava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    return-object v0

    .line 81
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unsupported ad format: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public A()V
    .locals 1

    const/4 v0, 0x0

    .line 519
    iput-object v0, p0, Lcom/applovin/impl/mediation/a/a;->a:Lcom/applovin/impl/mediation/g;

    .line 520
    iput-object v0, p0, Lcom/applovin/impl/mediation/a/a;->g:Lcom/applovin/mediation/MaxAdWaterfallInfo;

    return-void
.end method

.method public B()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/applovin/impl/mediation/a/a;->c:I

    return v0
.end method

.method public abstract a(Lcom/applovin/impl/mediation/g;)Lcom/applovin/impl/mediation/a/a;
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .line 107
    iput-wide p1, p0, Lcom/applovin/impl/mediation/a/a;->h:J

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "ad_values"

    .line 530
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 532
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/BundleUtils;->toJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/a/a;->a(Lorg/json/JSONObject;)V

    :cond_1
    const-string v0, "creative_id"

    .line 535
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/a/a;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 537
    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getString(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 538
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "ad_width"

    .line 541
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/a/a;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ad_height"

    .line 542
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/applovin/impl/mediation/a/a;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 544
    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getInt(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v2

    .line 545
    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getInt(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v3

    .line 546
    invoke-virtual {p0, v0, v2}, Lcom/applovin/impl/mediation/a/a;->c(Ljava/lang/String;I)V

    .line 547
    invoke-virtual {p0, v1, v3}, Lcom/applovin/impl/mediation/a/a;->c(Ljava/lang/String;I)V

    :cond_3
    const-string v0, "publisher_extra_info"

    .line 550
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 552
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/BundleUtils;->toJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/a/a;->b(Lorg/json/JSONObject;)V

    :cond_4
    return-void
.end method

.method public a(Lcom/applovin/mediation/MaxAdWaterfallInfo;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/applovin/impl/mediation/a/a;->g:Lcom/applovin/mediation/MaxAdWaterfallInfo;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/applovin/impl/mediation/a/a;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 259
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 262
    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putAll(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const-string p1, "ad_values"

    .line 264
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 2

    .line 285
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad_values"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/applovin/impl/mediation/a/a;->j:Ljava/lang/String;

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 272
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 275
    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putAll(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const-string p1, "publisher_extra_info"

    .line 277
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()Lorg/json/JSONObject;
    .locals 2

    .line 293
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "publisher_extra_info"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 2

    .line 302
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "revenue_parameters"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 310
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->d()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "revenue_event"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a;->a:Lcom/applovin/impl/mediation/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/g;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a;->a:Lcom/applovin/impl/mediation/g;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/g;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public g()Ljava/lang/String;
    .locals 2

    const-string v0, "event_id"

    const-string v1, ""

    .line 331
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdReviewCreativeId()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getAdValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/mediation/a/a;->getAdValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAdValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 229
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    invoke-static {v0, p1, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->ag()Landroid/os/Bundle;

    move-result-object v0

    .line 236
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 241
    :cond_1
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 242
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    invoke-static {v0, p1, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 249
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCreativeId()Ljava/lang/String;
    .locals 2

    const-string v0, "creative_id"

    const/4 v1, 0x0

    .line 180
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDspId()Ljava/lang/String;
    .locals 2

    const-string v0, "dsp_id"

    const/4 v1, 0x0

    .line 216
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDspName()Ljava/lang/String;
    .locals 2

    const-string v0, "dsp_name"

    const/4 v1, 0x0

    .line 209
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Lcom/applovin/mediation/MaxAdFormat;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "ad_format"

    .line 143
    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {v0}, Lcom/applovin/mediation/MaxAdFormat;->formatFromString(Ljava/lang/String;)Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    return-object v0
.end method

.method public getNativeAd()Lcom/applovin/mediation/nativeAds/MaxNativeAd;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a;->a:Lcom/applovin/impl/mediation/g;

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/g;->b()Lcom/applovin/mediation/nativeAds/MaxNativeAd;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 2

    const-string v0, "network_name"

    const-string v1, ""

    .line 168
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacement()Ljava/lang/String;
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestLatencyMillis()J
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/applovin/impl/mediation/a/a;->h:J

    return-wide v0
.end method

.method public getRevenue()D
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a;->b:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->U:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/mediation/MaxAdFormat;->isFullscreenAd()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->y()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    const-string v1, "MediatedAd"

    const-string v2, "Attempting to retrieve revenue when not available yet"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    const-string v0, "revenue_parameters"

    const/4 v1, 0x0

    .line 194
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "revenue"

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 195
    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRevenuePrecision()Ljava/lang/String;
    .locals 3

    const-string v0, "revenue_parameters"

    const/4 v1, 0x0

    .line 201
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "precision"

    const-string v2, ""

    .line 202
    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Lcom/applovin/sdk/AppLovinSdkUtils$Size;
    .locals 3

    const-string v0, "ad_width"

    const/4 v1, -0x3

    .line 152
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "ad_height"

    .line 153
    invoke-virtual {p0, v2, v1}, Lcom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;I)I

    move-result v2

    if-eq v0, v1, :cond_1

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    new-instance v1, Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    invoke-direct {v1, v0, v2}, Lcom/applovin/sdk/AppLovinSdkUtils$Size;-><init>(II)V

    return-object v1

    .line 156
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/mediation/MaxAdFormat;->getSize()Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    move-result-object v0

    return-object v0
.end method

.method public getWaterfall()Lcom/applovin/mediation/MaxAdWaterfallInfo;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a;->g:Lcom/applovin/mediation/MaxAdWaterfallInfo;

    return-object v0
.end method

.method public h()Lcom/applovin/impl/mediation/g;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a;->a:Lcom/applovin/impl/mediation/g;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j()Landroid/os/Bundle;
    .locals 3

    const-string v0, "credentials"

    .line 353
    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/a/a;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 360
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "server_parameters"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "placement_id"

    .line 361
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :goto_0
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    const-string v0, "bid_response"

    const/4 v1, 0x0

    .line 369
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .locals 2

    .line 374
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "ilia"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public m()J
    .locals 4

    const-wide/16 v0, -0x1

    .line 379
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->ag()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "bid_expiration_ms"

    invoke-static {v3, v0, v1, v2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getLong(Ljava/lang/String;JLandroid/os/Bundle;)J

    move-result-wide v0

    invoke-virtual {p0, v3, v0, v1}, Lcom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public n()Z
    .locals 2

    const/4 v0, 0x0

    .line 384
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_js_tag_ad"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public o()Lcom/applovin/mediation/MaxAdFormat;
    .locals 3

    const-string v0, "haf"

    const/4 v1, 0x0

    .line 393
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/applovin/mediation/MaxAdFormat;->formatFromString(Ljava/lang/String;)Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public p()Lcom/applovin/mediation/hybridAds/c;
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a;->k:Lcom/applovin/mediation/hybridAds/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "hybrid_ad_config"

    const/4 v1, 0x0

    .line 404
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 405
    new-instance v1, Lcom/applovin/mediation/hybridAds/c;

    invoke-direct {v1, v0}, Lcom/applovin/mediation/hybridAds/c;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/applovin/impl/mediation/a/a;->k:Lcom/applovin/mediation/hybridAds/c;

    return-object v1
.end method

.method public q()Landroid/view/View;
    .locals 1

    .line 416
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a;->a:Lcom/applovin/impl/mediation/g;

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/g;->a()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "third_party_ad_placement_id"

    const/4 v1, 0x0

    .line 440
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "waterfall_name"

    const-string v1, ""

    .line 445
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "waterfall_test_name"

    const-string v1, ""

    .line 450
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediatedAd{thirdPartyAdPlacementId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adUnitId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 562
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 563
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 564
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()J
    .locals 4

    .line 460
    invoke-direct {p0}, Lcom/applovin/impl/mediation/a/a;->C()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/a;->w()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/applovin/impl/mediation/a/a;->C()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public v()V
    .locals 3

    const-string v0, "load_started_time_ms"

    .line 480
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/a/a;->c(Ljava/lang/String;J)V

    return-void
.end method

.method public w()J
    .locals 3

    const-string v0, "load_completed_time_ms"

    const-wide/16 v1, 0x0

    .line 488
    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public x()V
    .locals 3

    const-string v0, "load_completed_time_ms"

    .line 496
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/a/a;->c(Ljava/lang/String;J)V

    return-void
.end method

.method public y()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public z()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method
