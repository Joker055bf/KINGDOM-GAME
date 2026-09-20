.class public final synthetic Lcom/chartboost/sdk/impl/w2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\u0008\u0000\u0010\u0000*\u00020\u0001\u001a\n\u0010\u0003\u001a\u00020\u0005*\u00020\u0004\u001a\n\u0010\u0003\u001a\u00020\u0007*\u00020\u0006\u001a\u0012\u0010\u0003\u001a\u00020\n*\u00020\u00082\u0006\u0010\t\u001a\u00020\u0004\u00a8\u0006\u000b"
    }
    d2 = {
        "T",
        "Lorg/json/JSONArray;",
        "",
        "a",
        "Landroid/content/Context;",
        "Lcom/chartboost/sdk/impl/m2;",
        "Lcom/chartboost/sdk/impl/k5;",
        "Lcom/chartboost/sdk/impl/l5;",
        "Lcom/chartboost/sdk/impl/h1;",
        "context",
        "Lcom/chartboost/sdk/impl/q4;",
        "Chartboost-9.2.0_productionRelease"
    }
    k = 0x5
    mv = {
        0x1,
        0x6,
        0x0
    }
    xs = "com/chartboost/sdk/internal/Model/Extensions"
.end annotation


# direct methods
.method public static final a(Lcom/chartboost/sdk/impl/k5;)Lcom/chartboost/sdk/impl/l5;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/chartboost/sdk/impl/l5;

    .line 38
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/k5;->a()J

    move-result-wide v2

    .line 39
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/k5;->b()J

    move-result-wide v4

    .line 40
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/k5;->c()J

    move-result-wide v6

    move-object v1, v0

    .line 41
    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/impl/l5;-><init>(JJJ)V

    return-object v0
.end method

.method public static final a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/m2;
    .locals 14

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string/jumbo v1, "this.resources.displayMetrics"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 5
    invoke-static {}, Lcom/chartboost/sdk/impl/x2;->a()Lcom/chartboost/sdk/impl/x2;

    move-result-object v1

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/x2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/DisplayMetrics;

    .line 6
    invoke-virtual {v1, v0}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    const-string/jumbo v0, "window"

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/WindowManager;

    .line 11
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 12
    :cond_0
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 13
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 14
    iget v7, v1, Landroid/util/DisplayMetrics;->density:F

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 17
    invoke-static {p0}, Lcom/chartboost/sdk/impl/n2;->b(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    .line 18
    invoke-static {p0}, Lcom/chartboost/sdk/impl/n2;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x0

    .line 22
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 23
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v11, 0x80

    .line 24
    invoke-virtual {v9, v2, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v1, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    goto :goto_0

    :catch_1
    move-exception v9

    move-object v2, v1

    :goto_0
    const-string v11, "Request Body"

    const-string v12, "Exception raised getting package manager object"

    .line 26
    invoke-static {v11, v12, v9}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    move-object v12, v1

    move-object v11, v2

    .line 29
    invoke-static {p0}, Lcom/chartboost/sdk/internal/Libraries/CBUtility;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/c4;

    move-result-object p0

    .line 30
    invoke-static {p0}, Lcom/chartboost/sdk/internal/Libraries/CBUtility;->b(Lcom/chartboost/sdk/impl/c4;)Z

    move-result v13

    .line 35
    new-instance p0, Lcom/chartboost/sdk/impl/m2;

    const-string v1, "ortbDeviceType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v0, "deviceType"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/chartboost/sdk/impl/m2;-><init>(IIIIFLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0

    .line 36
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final a(Lcom/chartboost/sdk/impl/h1;Landroid/content/Context;)Lcom/chartboost/sdk/impl/q4;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/chartboost/sdk/impl/q4;

    .line 43
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/h1;->a(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 44
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h1;->b()Lcom/chartboost/sdk/impl/g2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/g2;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 45
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h1;->a()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h1;->c()Lcom/chartboost/sdk/impl/y3;

    move-result-object p0

    .line 47
    invoke-direct {v0, p1, v1, v2, p0}, Lcom/chartboost/sdk/impl/q4;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/chartboost/sdk/impl/y3;)V

    return-object v0
.end method

.method public static final a(Lorg/json/JSONArray;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lcom/chartboost/sdk/impl/w2$a;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/w2$a;-><init>(Lorg/json/JSONArray;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
