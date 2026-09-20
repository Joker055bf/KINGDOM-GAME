.class public Lcom/applovin/impl/c/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/text/DateFormat;

.field private static final b:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/applovin/impl/c/m;->a:Ljava/text/DateFormat;

    .line 34
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/applovin/impl/c/m;->b:Ljava/util/Random;

    return-void
.end method

.method public static a(Ljava/lang/String;JLandroid/net/Uri;Lcom/applovin/impl/c/f;Lcom/applovin/impl/sdk/p;)Landroid/net/Uri;
    .locals 5

    .line 123
    invoke-static {p0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "VastUtils"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 130
    :try_start_0
    invoke-virtual {p4}, Lcom/applovin/impl/c/f;->a()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    const-string v0, "[ERRORCODE]"

    .line 132
    invoke-virtual {p0, v0, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "[REASON]"

    .line 133
    invoke-virtual {v0, v3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_0

    .line 138
    invoke-static {p1, p2}, Lcom/applovin/impl/c/m;->a(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "[CONTENTPLAYHEAD]"

    .line 139
    invoke-virtual {p4, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "[ASSETURI]"

    .line 145
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    :cond_1
    const-string p1, "[CACHEBUSTING]"

    .line 149
    invoke-static {}, Lcom/applovin/impl/c/m;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "[TIMESTAMP]"

    .line 152
    invoke-static {}, Lcom/applovin/impl/c/m;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 158
    invoke-virtual {p5}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p5}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unable to replace macros in URL string "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v1, p0, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v2

    .line 164
    :cond_3
    invoke-virtual {p5}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p5}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p0

    const-string p1, "Unable to replace macros in invalid URL string."

    invoke-virtual {p0, v1, p1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v2
.end method

.method public static a(Lcom/applovin/impl/c/a;)Lcom/applovin/impl/c/f;
    .locals 2

    .line 55
    invoke-static {p0}, Lcom/applovin/impl/c/m;->b(Lcom/applovin/impl/c/a;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 58
    invoke-static {p0}, Lcom/applovin/impl/c/m;->c(Lcom/applovin/impl/c/a;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 61
    sget-object p0, Lcom/applovin/impl/c/f;->f:Lcom/applovin/impl/c/f;

    return-object p0

    :cond_0
    return-object v1
.end method

.method private static a()Ljava/lang/String;
    .locals 2

    .line 190
    sget-object v0, Lcom/applovin/impl/c/m;->b:Ljava/util/Random;

    const v1, 0x55d4a7f

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const v1, 0x989680

    add-int/2addr v0, v1

    .line 192
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(J)Ljava/lang/String;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 173
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    .line 174
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    rem-long/2addr v2, v7

    .line 175
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    rem-long/2addr p0, v4

    .line 178
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v5, v0

    const-string p0, "%02d:%02d:%02d.000"

    invoke-static {v4, p0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "00:00:00.000"

    return-object p0
.end method

.method public static a(Lcom/applovin/impl/c/e;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 374
    invoke-virtual {p0}, Lcom/applovin/impl/c/e;->b()Ljava/util/List;

    move-result-object v0

    .line 375
    invoke-virtual {p0}, Lcom/applovin/impl/c/e;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    .line 380
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/sdk/utils/t;

    const-string v0, "VASTAdTagURI"

    .line 381
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/utils/t;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/t;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 372
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to get resolution uri string for fetching the next wrapper or inline response in the chain"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/applovin/impl/sdk/utils/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 397
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/utils/t;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/t;->c()Ljava/lang/String;

    move-result-object p0

    .line 401
    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    return-object p2
.end method

.method private static a(Lcom/applovin/impl/c/e;Lcom/applovin/impl/sdk/p;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/c/e;",
            "Lcom/applovin/impl/sdk/p;",
            ")",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/c/k;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 417
    invoke-virtual {p0}, Lcom/applovin/impl/c/e;->b()Ljava/util/List;

    move-result-object v0

    .line 419
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 421
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/utils/t;

    const-string v3, "Wrapper"

    .line 425
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/utils/t;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "InLine"

    .line 426
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/utils/t;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object v3

    :goto_1
    const-string v4, "Error"

    if-eqz v3, :cond_1

    .line 429
    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/utils/t;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 430
    invoke-static {v1, v2, p0, p1}, Lcom/applovin/impl/c/m;->a(Ljava/util/Set;Ljava/util/List;Lcom/applovin/impl/c/e;Lcom/applovin/impl/sdk/p;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    .line 435
    :cond_1
    invoke-virtual {v2, v4}, Lcom/applovin/impl/sdk/utils/t;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 436
    invoke-static {v1, v2, p0, p1}, Lcom/applovin/impl/c/m;->a(Ljava/util/Set;Ljava/util/List;Lcom/applovin/impl/c/e;Lcom/applovin/impl/sdk/p;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    .line 440
    :cond_2
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Retrieved "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " top level error trackers: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VastUtils"

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/util/Set;Ljava/util/List;Lcom/applovin/impl/c/e;Lcom/applovin/impl/sdk/p;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/c/k;",
            ">;",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/utils/t;",
            ">;",
            "Lcom/applovin/impl/c/e;",
            "Lcom/applovin/impl/sdk/p;",
            ")",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/c/k;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 452
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/utils/t;

    .line 454
    invoke-static {v0, p2, p3}, Lcom/applovin/impl/c/k;->a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/c/e;Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/c/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static a(Lcom/applovin/impl/c/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/c/f;ILcom/applovin/impl/sdk/p;)V
    .locals 0

    if-eqz p4, :cond_1

    if-eqz p1, :cond_0

    .line 44
    invoke-interface {p1, p3}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    .line 45
    :cond_0
    invoke-static {p0, p4}, Lcom/applovin/impl/c/m;->a(Lcom/applovin/impl/c/e;Lcom/applovin/impl/sdk/p;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, p2, p4}, Lcom/applovin/impl/c/m;->a(Ljava/util/Set;Lcom/applovin/impl/c/f;Lcom/applovin/impl/sdk/p;)V

    return-void

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to handle failure. No sdk specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/applovin/impl/sdk/utils/t;Ljava/util/Map;Lcom/applovin/impl/c/e;Lcom/applovin/impl/sdk/p;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/utils/t;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/c/k;",
            ">;>;",
            "Lcom/applovin/impl/c/e;",
            "Lcom/applovin/impl/sdk/p;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_8

    const-string v0, "VastUtils"

    if-nez p0, :cond_1

    .line 262
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p0

    const-string p1, "Unable to render event trackers; null node provided"

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_3

    .line 268
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p0

    const-string p1, "Unable to render event trackers; null event trackers provided"

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const-string v1, "TrackingEvents"

    .line 272
    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/utils/t;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object p0

    if-eqz p0, :cond_7

    const-string v1, "Tracking"

    .line 275
    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/utils/t;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 278
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/utils/t;

    .line 280
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/t;->b()Ljava/util/Map;

    move-result-object v2

    const-string v3, "event"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 281
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 283
    invoke-static {v1, p2, p3}, Lcom/applovin/impl/c/k;->a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/c/e;Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/c/k;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 286
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_5

    .line 291
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :cond_5
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 297
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 304
    :cond_6
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not find event for tracking node = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    return-void

    .line 258
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to render event trackers. No sdk specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/util/List;Ljava/util/Set;Lcom/applovin/impl/c/e;Lcom/applovin/impl/sdk/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/utils/t;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/c/k;",
            ">;",
            "Lcom/applovin/impl/c/e;",
            "Lcom/applovin/impl/sdk/p;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_6

    const-string v0, "VastUtils"

    if-nez p0, :cond_1

    .line 320
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p0

    const-string p1, "Unable to render trackers; null nodes provided"

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_3

    .line 326
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p0

    const-string p1, "Unable to render trackers; null trackers provided"

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 330
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/utils/t;

    .line 332
    invoke-static {v0, p2, p3}, Lcom/applovin/impl/c/k;->a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/c/e;Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/c/k;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 335
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-void

    .line 316
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to render trackers. No sdk specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/util/Set;JLandroid/net/Uri;Lcom/applovin/impl/c/f;Lcom/applovin/impl/sdk/p;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/c/k;",
            ">;J",
            "Landroid/net/Uri;",
            "Lcom/applovin/impl/c/f;",
            "Lcom/applovin/impl/sdk/p;",
            ")V"
        }
    .end annotation

    if-eqz p5, :cond_2

    if-eqz p0, :cond_1

    .line 237
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/c/k;

    .line 241
    invoke-virtual {v0}, Lcom/applovin/impl/c/k;->b()Ljava/lang/String;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/applovin/impl/c/m;->a(Ljava/lang/String;JLandroid/net/Uri;Lcom/applovin/impl/c/f;Lcom/applovin/impl/sdk/p;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p5}, Lcom/applovin/impl/sdk/p;->al()Lcom/applovin/impl/sdk/network/k;

    move-result-object v1

    invoke-static {}, Lcom/applovin/impl/sdk/network/j;->o()Lcom/applovin/impl/sdk/network/j$a;

    move-result-object v2

    .line 245
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/applovin/impl/sdk/network/j$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/j$a;

    move-result-object v0

    const/4 v2, 0x0

    .line 246
    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/network/j$a;->a(Z)Lcom/applovin/impl/sdk/network/j$a;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/j$a;->a()Lcom/applovin/impl/sdk/network/j;

    move-result-object v0

    .line 244
    invoke-interface {v1, v0, v2}, Lcom/applovin/impl/sdk/network/k;->a(Lcom/applovin/impl/sdk/network/j;Z)V

    goto :goto_0

    :cond_1
    return-void

    .line 235
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to fire trackers. No sdk specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/util/Set;Lcom/applovin/impl/c/f;Lcom/applovin/impl/sdk/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/c/k;",
            ">;",
            "Lcom/applovin/impl/c/f;",
            "Lcom/applovin/impl/sdk/p;",
            ")V"
        }
    .end annotation

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    .line 219
    invoke-static/range {v0 .. v5}, Lcom/applovin/impl/c/m;->a(Ljava/util/Set;JLandroid/net/Uri;Lcom/applovin/impl/c/f;Lcom/applovin/impl/sdk/p;)V

    return-void
.end method

.method public static a(Ljava/util/Set;Lcom/applovin/impl/sdk/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/c/k;",
            ">;",
            "Lcom/applovin/impl/sdk/p;",
            ")V"
        }
    .end annotation

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    .line 211
    sget-object v4, Lcom/applovin/impl/c/f;->a:Lcom/applovin/impl/c/f;

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/applovin/impl/c/m;->a(Ljava/util/Set;JLandroid/net/Uri;Lcom/applovin/impl/c/f;Lcom/applovin/impl/sdk/p;)V

    return-void
.end method

.method public static a(Lcom/applovin/impl/sdk/utils/t;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "Wrapper"

    .line 353
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/utils/t;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 350
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to check if a given XmlNode contains a wrapper response"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    .line 197
    sget-object v0, Lcom/applovin/impl/c/m;->a:Ljava/text/DateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 198
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/applovin/impl/c/a;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/c/a;->aO()Lcom/applovin/impl/c/n;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/applovin/impl/c/n;->a()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 90
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static b(Lcom/applovin/impl/sdk/utils/t;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "InLine"

    .line 364
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/utils/t;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 361
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to check if a given XmlNode contains an inline response"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lcom/applovin/impl/c/a;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/c/a;->aQ()Lcom/applovin/impl/c/d;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/applovin/impl/c/d;->b()Lcom/applovin/impl/c/i;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/applovin/impl/c/i;->b()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/applovin/impl/c/i;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
