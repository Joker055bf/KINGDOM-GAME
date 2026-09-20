.class public final Lcom/onevcat/uniwebview/internal/obfuscated/n0;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final a:Lcom/onevcat/uniwebview/d;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/onevcat/uniwebview/d;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inspector"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/n0;->a:Lcom/onevcat/uniwebview/d;

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/n0;->a:Lcom/onevcat/uniwebview/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/onevcat/uniwebview/d;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-boolean v0, v0, Lcom/onevcat/uniwebview/d;->k:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/onevcat/uniwebview/internal/obfuscated/n0;->a:Lcom/onevcat/uniwebview/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    :goto_0
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 4
    invoke-virtual {v1, v3, v4}, Lcom/onevcat/uniwebview/d;->a(FF)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x1

    goto/16 :goto_8

    .line 5
    :cond_1
    iget-boolean v5, v1, Lcom/onevcat/uniwebview/d;->k:Z

    const-string v7, "Transparency click check ignored for "

    const-string v8, "message"

    if-nez v5, :cond_2

    .line 6
    sget-object v3, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/onevcat/uniwebview/d;->b:Ljava/lang/String;

    const-string v5, " because feature is disabled"

    .line 8
    invoke-static {v4, v1, v5, v3, v8}, Lcom/onevcat/uniwebview/internal/obfuscated/c0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    sget-object v4, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v3, v4, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v5, v1, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-lez v5, :cond_d

    iget-object v5, v1, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    if-gtz v5, :cond_3

    goto/16 :goto_6

    .line 11
    :cond_3
    iget-object v5, v1, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-static {v5}, Lcom/onevcat/uniwebview/internal/obfuscated/h;->a(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    .line 12
    iget-object v7, v1, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-static {v7}, Lcom/onevcat/uniwebview/internal/obfuscated/h;->a(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    sub-float v7, v4, v7

    .line 13
    iget-object v9, v1, Lcom/onevcat/uniwebview/d;->r:Lcom/onevcat/uniwebview/internal/obfuscated/f0;

    const-string v10, "Transparency click check for "

    if-nez v9, :cond_4

    .line 14
    sget-object v3, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/onevcat/uniwebview/d;->b:Ljava/lang/String;

    const-string v5, " has no mask yet"

    .line 16
    invoke-static {v4, v1, v5, v3, v8}, Lcom/onevcat/uniwebview/internal/obfuscated/c0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    sget-object v4, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v3, v4, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_4
    iget v11, v9, Lcom/onevcat/uniwebview/internal/obfuscated/f0;->b:F

    const/4 v12, 0x0

    cmpl-float v13, v11, v12

    if-lez v13, :cond_5

    goto :goto_2

    .line 19
    :cond_5
    iget-object v11, v1, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getScale()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    cmpl-float v11, v11, v12

    if-lez v11, :cond_6

    goto :goto_1

    :cond_6
    const/4 v13, 0x0

    :goto_1
    if-eqz v13, :cond_7

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v11

    goto :goto_2

    :cond_7
    iget-object v11, v1, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    invoke-virtual {v11}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    .line 20
    :goto_2
    iget-object v13, v1, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    invoke-virtual {v13}, Landroid/webkit/WebView;->getX()F

    move-result v13

    sub-float/2addr v5, v13

    div-float/2addr v5, v11

    .line 21
    iget-object v13, v1, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    invoke-virtual {v13}, Landroid/webkit/WebView;->getY()F

    move-result v13

    sub-float/2addr v7, v13

    div-float/2addr v7, v11

    .line 23
    iget-object v13, v1, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v11

    .line 24
    iget-object v14, v1, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v11

    cmpg-float v11, v5, v12

    const-string v15, " css="

    const-string v2, "format(locale, format, *args)"

    const-string v6, "(%.2f, %.2f)"

    const/4 v12, 0x2

    if-ltz v11, :cond_c

    cmpl-float v11, v5, v13

    if-gtz v11, :cond_c

    const/4 v11, 0x0

    cmpg-float v11, v7, v11

    if-ltz v11, :cond_c

    cmpl-float v11, v7, v14

    if-lez v11, :cond_8

    goto/16 :goto_5

    .line 25
    :cond_8
    iget-object v9, v9, Lcom/onevcat/uniwebview/internal/obfuscated/f0;->a:Ljava/util/List;

    .line 26
    instance-of v11, v9, Ljava/util/Collection;

    if-eqz v11, :cond_9

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_3

    .line 27
    :cond_9
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/RectF;

    .line 28
    invoke-virtual {v11, v5, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v9, 0x1

    const/16 v16, 0x1

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v9, 0x1

    const/16 v16, 0x0

    :goto_4
    xor-int/lit8 v11, v16, 0x1

    .line 29
    sget-object v9, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 30
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/onevcat/uniwebview/d;->b:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " raw="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v10, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    const/4 v3, 0x1

    aput-object v4, v13, v3

    invoke-static {v13, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v4, v7, v14

    aput-object v5, v7, v3

    invoke-static {v7, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " passThrough="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v9, v2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    move v2, v11

    goto/16 :goto_8

    .line 56
    :cond_c
    :goto_5
    sget-object v9, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 57
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/onevcat/uniwebview/d;->b:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " outside web bounds raw="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v10, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    new-array v11, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v11, v13

    const/4 v3, 0x1

    aput-object v4, v11, v3

    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v4, v7, v13

    aput-object v5, v7, v3

    invoke-static {v7, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v9, v2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v13, 0x0

    .line 83
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/onevcat/uniwebview/d;->b:Ljava/lang/String;

    const-string v4, " because layout size is zero"

    .line 85
    invoke-static {v3, v1, v4, v2, v8}, Lcom/onevcat/uniwebview/internal/obfuscated/c0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    sget-object v3, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v2, v3, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    :goto_7
    move v2, v13

    :goto_8
    if-eqz v2, :cond_e

    .line 87
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_e
    if-nez p1, :cond_f

    .line 90
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 93
    :cond_f
    iget-object v1, v0, Lcom/onevcat/uniwebview/internal/obfuscated/n0;->a:Lcom/onevcat/uniwebview/d;

    .line 94
    iget-object v1, v1, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr v8, v1

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 101
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 109
    iget-object v2, v0, Lcom/onevcat/uniwebview/internal/obfuscated/n0;->a:Lcom/onevcat/uniwebview/d;

    .line 110
    iget-object v2, v2, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    .line 111
    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 112
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return v2
.end method
