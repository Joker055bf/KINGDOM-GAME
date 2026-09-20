.class public final Lcom/onevcat/uniwebview/internal/obfuscated/c3;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/RectF;

.field public final b:Landroid/graphics/Path;

.field public final c:[F


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/c3;->a:Landroid/graphics/RectF;

    .line 21
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/c3;->b:Landroid/graphics/Path;

    const/4 p1, 0x4

    new-array p1, p1, [F

    .line 22
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/c3;->c:[F

    .line 25
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 26
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/internal/obfuscated/c3;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 27
    invoke-virtual {p0, v1, v0}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 33
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final a(FFFF)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p1

    .line 2
    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p2

    .line 3
    invoke-static {p3, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p3

    .line 4
    invoke-static {p4, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p4

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p2, 0x2

    aput p3, v0, p2

    const/4 p3, 0x3

    aput p4, v0, p3

    .line 6
    iget-object p4, p0, Lcom/onevcat/uniwebview/internal/obfuscated/c3;->c:[F

    invoke-static {p4, v0}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object p4, p0, Lcom/onevcat/uniwebview/internal/obfuscated/c3;->c:[F

    aget v2, v0, v1

    aput v2, p4, v1

    aget v2, v0, p1

    .line 10
    aput v2, p4, p1

    aget p1, v0, p2

    .line 11
    aput p1, p4, p2

    aget p1, v0, p3

    .line 12
    aput p1, p4, p3

    .line 13
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/internal/obfuscated/c3;->a()Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_1

    .line 14
    invoke-virtual {p0, v1, p3}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 24
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/onevcat/uniwebview/internal/obfuscated/c3;->a()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lez v4, :cond_7

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_1

    goto/16 :goto_4

    .line 123
    :cond_1
    iget-object v4, v0, Lcom/onevcat/uniwebview/internal/obfuscated/c3;->c:[F

    aget v10, v4, v9

    .line 124
    aget v11, v4, v8

    .line 125
    aget v12, v4, v6

    .line 126
    aget v4, v4, v7

    add-float v13, v10, v11

    cmpl-float v14, v13, v1

    const/high16 v15, 0x3f800000    # 1.0f

    if-lez v14, :cond_2

    cmpl-float v14, v13, v3

    if-lez v14, :cond_2

    div-float v13, v1, v13

    goto :goto_0

    :cond_2
    move v13, v15

    :goto_0
    add-float v14, v12, v4

    cmpl-float v16, v14, v1

    if-lez v16, :cond_3

    cmpl-float v16, v14, v3

    if-lez v16, :cond_3

    div-float v14, v1, v14

    goto :goto_1

    :cond_3
    move v14, v15

    :goto_1
    add-float v16, v10, v12

    cmpl-float v17, v16, v2

    if-lez v17, :cond_4

    cmpl-float v17, v16, v3

    if-lez v17, :cond_4

    div-float v16, v2, v16

    move/from16 v7, v16

    goto :goto_2

    :cond_4
    move v7, v15

    :goto_2
    add-float v17, v11, v4

    cmpl-float v18, v17, v2

    if-lez v18, :cond_5

    cmpl-float v18, v17, v3

    if-lez v18, :cond_5

    div-float v17, v2, v17

    move/from16 v3, v17

    goto :goto_3

    :cond_5
    move v3, v15

    .line 149
    :goto_3
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v13, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpg-float v7, v3, v15

    if-gez v7, :cond_6

    mul-float/2addr v10, v3

    mul-float/2addr v11, v3

    mul-float/2addr v12, v3

    mul-float/2addr v4, v3

    :cond_6
    new-array v3, v5, [F

    aput v10, v3, v9

    aput v11, v3, v8

    aput v12, v3, v6

    const/4 v7, 0x3

    aput v4, v3, v7

    goto :goto_5

    :cond_7
    :goto_4
    new-array v3, v5, [F

    .line 158
    fill-array-data v3, :array_0

    .line 159
    :goto_5
    iget-object v4, v0, Lcom/onevcat/uniwebview/internal/obfuscated/c3;->a:Landroid/graphics/RectF;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v7, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 160
    iget-object v1, v0, Lcom/onevcat/uniwebview/internal/obfuscated/c3;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 161
    iget-object v1, v0, Lcom/onevcat/uniwebview/internal/obfuscated/c3;->b:Landroid/graphics/Path;

    .line 162
    iget-object v2, v0, Lcom/onevcat/uniwebview/internal/obfuscated/c3;->a:Landroid/graphics/RectF;

    .line 164
    aget v4, v3, v9

    .line 165
    aget v7, v3, v8

    const/4 v10, 0x3

    .line 166
    aget v11, v3, v10

    .line 167
    aget v3, v3, v6

    const/16 v12, 0x8

    new-array v12, v12, [F

    aput v4, v12, v9

    aput v4, v12, v8

    aput v7, v12, v6

    aput v7, v12, v10

    aput v11, v12, v5

    const/4 v4, 0x5

    aput v11, v12, v4

    const/4 v4, 0x6

    aput v3, v12, v4

    const/4 v4, 0x7

    aput v3, v12, v4

    .line 169
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 170
    invoke-virtual {v1, v2, v12, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 180
    iget-object v1, v0, Lcom/onevcat/uniwebview/internal/obfuscated/c3;->b:Landroid/graphics/Path;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final a()Z
    .locals 6

    .line 25
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/c3;->c:[F

    .line 116
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/internal/obfuscated/c3;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 6
    invoke-virtual {p0, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/c3;->a(Landroid/graphics/Canvas;)V

    .line 7
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/internal/obfuscated/c3;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 6
    invoke-virtual {p0, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/c3;->a(Landroid/graphics/Canvas;)V

    .line 7
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method
