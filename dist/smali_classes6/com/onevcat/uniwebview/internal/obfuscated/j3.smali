.class public final Lcom/onevcat/uniwebview/internal/obfuscated/j3;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final synthetic m:I


# instance fields
.field public a:Lcom/onevcat/uniwebview/internal/obfuscated/i3;

.field public b:[F

.field public c:F

.field public d:F

.field public e:I

.field public f:I

.field public g:F

.field public h:F

.field public i:F

.field public final j:Landroid/graphics/Paint;

.field public final k:Landroid/graphics/Path;

.field public final l:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    sget-object p1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->g:Lcom/onevcat/uniwebview/internal/obfuscated/i3;

    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->a:Lcom/onevcat/uniwebview/internal/obfuscated/i3;

    const/4 p1, 0x4

    new-array p1, p1, [F

    .line 19
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->b:[F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 27
    iput p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->h:F

    .line 28
    iput p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->i:F

    .line 31
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->j:Landroid/graphics/Paint;

    .line 32
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->k:Landroid/graphics/Path;

    .line 33
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->l:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 42
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/view/View;II)V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "targetView"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v1

    iput v1, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->c:F

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v1

    iput v1, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->d:F

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    move/from16 v1, p2

    :goto_0
    iput v1, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->e:I

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_1
    move/from16 v1, p3

    :goto_1
    iput v1, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->f:I

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRotation()F

    move-result v1

    iput v1, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->g:F

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    iput v1, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->h:F

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v1

    iput v1, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->i:F

    .line 11
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ShadowDrawable.syncWithTarget: target=[x="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget v4, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->c:F

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 15
    iget v6, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->d:F

    .line 16
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", w="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 17
    iget v7, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->e:I

    .line 18
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", h="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 19
    iget v8, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->f:I

    .line 20
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", rotation="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 22
    iget v8, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->g:F

    .line 23
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", scale=("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 25
    iget v8, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->h:F

    .line 26
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 28
    iget v9, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->i:F

    .line 29
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ")], actual view size=["

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 33
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 37
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], fallback=[w="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v4, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v4, p3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "message"

    .line 38
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object v9, Lcom/onevcat/uniwebview/internal/obfuscated/o;->d:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v1, v9, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 65
    iget v2, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->g:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    .line 66
    iget v2, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->h:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 67
    iget v2, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->i:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 68
    iget v2, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->e:I

    if-lez v2, :cond_4

    iget v2, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->f:I

    if-gtz v2, :cond_2

    goto/16 :goto_2

    .line 73
    :cond_2
    iget-object v2, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->a:Lcom/onevcat/uniwebview/internal/obfuscated/i3;

    .line 74
    invoke-virtual {v2}, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->a()Z

    move-result v10

    if-nez v10, :cond_3

    .line 76
    iget v2, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->c:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 77
    iget v2, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->d:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setY(F)V

    .line 78
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v8, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->e:I

    iget v10, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->f:I

    invoke-direct {v2, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 79
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "ShadowDrawable.updateLayoutForShadow: shadow not visible, matching target position=[x="

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getX()F

    move-result v8

    .line 82
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getY()F

    move-result v5

    .line 84
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 85
    iget v5, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->e:I

    .line 86
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 87
    iget v5, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->f:I

    .line 88
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1, v9, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    move-object v2, v0

    goto/16 :goto_3

    .line 116
    :cond_3
    iget v10, v2, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->e:F

    const/4 v11, 0x0

    .line 117
    invoke-static {v10, v11}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v10

    .line 118
    iget v12, v2, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->a:F

    .line 119
    invoke-static {v12, v11}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v12

    .line 120
    iget v13, v2, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->c:F

    .line 121
    iget v14, v2, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->d:F

    add-float v15, v10, v12

    neg-float v4, v13

    .line 122
    invoke-static {v11, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v4, v15

    .line 123
    invoke-static {v11, v13}, Ljava/lang/Math;->max(FF)F

    move-result v16

    move-object/from16 v17, v1

    add-float v1, v16, v15

    move-object/from16 p2, v9

    neg-float v9, v14

    .line 124
    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    add-float/2addr v9, v15

    .line 125
    invoke-static {v11, v14}, Ljava/lang/Math;->max(FF)F

    move-result v11

    add-float/2addr v11, v15

    .line 128
    iget v15, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->c:F

    sub-float/2addr v15, v4

    invoke-virtual {v0, v15}, Landroid/view/View;->setX(F)V

    .line 129
    iget v15, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->d:F

    sub-float/2addr v15, v9

    invoke-virtual {v0, v15}, Landroid/view/View;->setY(F)V

    .line 132
    iget v15, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->e:I

    int-to-float v15, v15

    add-float/2addr v15, v4

    add-float/2addr v15, v1

    float-to-int v15, v15

    move-object/from16 p3, v3

    .line 133
    iget v3, v0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->f:I

    int-to-float v3, v3

    add-float/2addr v3, v9

    add-float/2addr v3, v11

    float-to-int v3, v3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v16, v3

    const-string v3, "ShadowDrawable.updateLayoutForShadow: shadow style=[radius="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, ", opacity="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 136
    iget v2, v2, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->b:F

    .line 137
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", offset=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), spread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], extra=[L="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", R="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", T="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", B="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], final=[x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getX()F

    move-result v2

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getY()F

    move-result v2

    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p3

    .line 146
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, p2

    move-object/from16 v3, v17

    .line 172
    invoke-virtual {v3, v4, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 173
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v15, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v2, p0

    .line 174
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    goto :goto_3

    :cond_4
    :goto_2
    move-object v2, v0

    move-object v4, v9

    move-object/from16 v18, v3

    move-object v3, v1

    move-object/from16 v1, v18

    const-string v0, "ShadowDrawable.updateLayoutForShadow: target size is zero, skipping"

    .line 177
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v3, v4, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 204
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ShadowDrawable.onDraw: view=[x="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v2

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v3

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", w="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", h="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 11
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "], target=[x="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 13
    iget v5, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->c:F

    .line 14
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 16
    iget v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->d:F

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 19
    iget v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->e:I

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 22
    iget v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->f:I

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "message"

    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v4, Lcom/onevcat/uniwebview/internal/obfuscated/o;->d:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v4, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 51
    iget v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->e:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->f:I

    if-gtz v1, :cond_0

    goto/16 :goto_2

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->a:Lcom/onevcat/uniwebview/internal/obfuscated/i3;

    .line 57
    invoke-virtual {v1}, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->a()Z

    move-result v5

    if-nez v5, :cond_1

    const-string p1, "ShadowDrawable.onDraw: shadow not visible, skipping draw"

    .line 59
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, v4, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ShadowDrawable.onDraw: drawing shadow with style=[radius="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    iget v6, v1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->a:F

    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", opacity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 89
    iget v6, v1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->b:F

    .line 90
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", offset=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 91
    iget v6, v1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->c:F

    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 93
    iget v6, v1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->d:F

    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), spread="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 95
    iget v6, v1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->e:F

    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, v4, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 124
    iget v0, v1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->f:I

    .line 125
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    .line 126
    iget v3, v1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->b:F

    mul-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 127
    invoke-static {v0, v4, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 128
    iget v2, v1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->f:I

    .line 129
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 130
    iget v3, v1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->f:I

    .line 131
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 132
    iget v5, v1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->f:I

    .line 133
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 134
    invoke-static {v0, v2, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 135
    iget-object v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->j:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->j:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    iget-object v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->j:Landroid/graphics/Paint;

    .line 141
    iget v3, v1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->a:F

    .line 142
    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v3

    .line 143
    iget v5, v1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->c:F

    .line 144
    iget v6, v1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->d:F

    .line 145
    invoke-virtual {v2, v3, v5, v6, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 146
    iget v0, v1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->e:F

    .line 147
    invoke-static {v0, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    .line 148
    iget v2, v1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->a:F

    .line 149
    invoke-static {v2, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v2

    .line 150
    iget v3, v1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->c:F

    .line 151
    iget v1, v1, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->d:F

    add-float/2addr v2, v0

    neg-float v3, v3

    .line 152
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v3, v2

    neg-float v1, v1

    .line 153
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v1, v2

    sub-float/2addr v3, v0

    sub-float/2addr v1, v0

    .line 158
    iget v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->e:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    const/4 v5, 0x2

    int-to-float v6, v5

    mul-float/2addr v6, v0

    add-float/2addr v2, v6

    .line 159
    iget v7, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->f:I

    int-to-float v7, v7

    add-float/2addr v7, v1

    add-float/2addr v7, v6

    .line 161
    iget-object v6, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->l:Landroid/graphics/RectF;

    invoke-virtual {v6, v3, v1, v2, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 164
    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->k:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 166
    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->b:[F

    .line 194
    array-length v2, v1

    const/4 v3, 0x0

    move v6, v3

    :goto_0
    if-ge v6, v2, :cond_3

    aget v7, v1, v6

    cmpl-float v7, v7, v4

    if-lez v7, :cond_2

    .line 195
    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->b:[F

    aget v2, v1, v3

    add-float/2addr v2, v0

    const/4 v4, 0x1

    .line 196
    aget v6, v1, v4

    add-float/2addr v6, v0

    const/4 v7, 0x3

    .line 197
    aget v8, v1, v7

    add-float/2addr v8, v0

    .line 198
    aget v1, v1, v5

    add-float/2addr v1, v0

    const/16 v0, 0x8

    new-array v0, v0, [F

    aput v2, v0, v3

    aput v2, v0, v4

    aput v6, v0, v5

    aput v6, v0, v7

    const/4 v2, 0x4

    aput v8, v0, v2

    const/4 v2, 0x5

    aput v8, v0, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 200
    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->k:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->l:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->k:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->l:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 203
    :goto_1
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->k:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_4
    :goto_2
    const-string p1, "ShadowDrawable.onDraw: target size is zero, skipping draw"

    .line 205
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0, v4, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    return-void
.end method

.method public final setShadowStyle(Lcom/onevcat/uniwebview/internal/obfuscated/i3;)V
    .locals 1

    const-string v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->a:Lcom/onevcat/uniwebview/internal/obfuscated/i3;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->a:Lcom/onevcat/uniwebview/internal/obfuscated/i3;

    .line 5
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/internal/obfuscated/i3;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
