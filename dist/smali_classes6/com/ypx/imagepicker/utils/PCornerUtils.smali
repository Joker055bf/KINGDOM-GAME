.class public Lcom/ypx/imagepicker/utils/PCornerUtils;
.super Ljava/lang/Object;
.source "PCornerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static btnSelector(FIII)Landroid/graphics/drawable/StateListDrawable;
    .locals 12

    .line 65
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez p3, :cond_0

    new-array p3, v7, [F

    aput v10, p3, v8

    aput v10, p3, v9

    aput v10, p3, v6

    aput v10, p3, v5

    aput v10, p3, v4

    aput v10, p3, v3

    aput p0, p3, v2

    aput p0, p3, v1

    .line 70
    invoke-static {p1, p3}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-array p3, v7, [F

    aput v10, p3, v8

    aput v10, p3, v9

    aput v10, p3, v6

    aput v10, p3, v5

    aput v10, p3, v4

    aput v10, p3, v3

    aput p0, p3, v2

    aput p0, p3, v1

    .line 71
    invoke-static {p2, p3}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-ne p3, v9, :cond_1

    new-array p3, v7, [F

    aput v10, p3, v8

    aput v10, p3, v9

    aput v10, p3, v6

    aput v10, p3, v5

    aput p0, p3, v4

    aput p0, p3, v3

    aput v10, p3, v2

    aput v10, p3, v1

    .line 73
    invoke-static {p1, p3}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-array p3, v7, [F

    aput v10, p3, v8

    aput v10, p3, v9

    aput v10, p3, v6

    aput v10, p3, v5

    aput p0, p3, v4

    aput p0, p3, v3

    aput v10, p3, v2

    aput v10, p3, v1

    .line 74
    invoke-static {p2, p3}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v11, -0x1

    if-ne p3, v11, :cond_2

    new-array p3, v7, [F

    aput v10, p3, v8

    aput v10, p3, v9

    aput v10, p3, v6

    aput v10, p3, v5

    aput p0, p3, v4

    aput p0, p3, v3

    aput p0, p3, v2

    aput p0, p3, v1

    .line 76
    invoke-static {p1, p3}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-array p3, v7, [F

    aput v10, p3, v8

    aput v10, p3, v9

    aput v10, p3, v6

    aput v10, p3, v5

    aput p0, p3, v4

    aput p0, p3, v3

    aput p0, p3, v2

    aput p0, p3, v1

    .line 77
    invoke-static {p2, p3}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 v1, -0x2

    if-ne p3, v1, :cond_3

    .line 79
    invoke-static {p1, p0}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 80
    invoke-static {p2, p0}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    move-object p0, p1

    :goto_0
    new-array p2, v9, [I

    const p3, -0x10100a7

    aput p3, p2, v8

    .line 83
    invoke-virtual {v0, p2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p1, v9, [I

    const p2, 0x10100a7

    aput p2, p1, v8

    .line 84
    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static btnSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .line 55
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, -0x10100a7

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 56
    invoke-virtual {v0, v2, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p0, v1, [I

    const v1, 0x10100a7

    aput v1, p0, v4

    .line 57
    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static cornerDrawable(F)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 29
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 30
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public static cornerDrawable(IF)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 14
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 15
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 16
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method public static cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 35
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 36
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 37
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method public static cornerDrawable(I[FII)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 43
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 44
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 45
    invoke-virtual {v0, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 46
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method public static cornerDrawableAndStroke(IFII)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 21
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 22
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 23
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 24
    invoke-virtual {v0, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method public static listItemSelector(FIIII)Landroid/graphics/drawable/StateListDrawable;
    .locals 15

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p4

    .line 116
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v2, :cond_0

    add-int/lit8 v13, p3, -0x1

    if-ne v2, v13, :cond_0

    new-array v2, v10, [F

    aput p0, v2, v11

    aput p0, v2, v12

    aput p0, v2, v9

    aput p0, v2, v8

    aput p0, v2, v7

    aput p0, v2, v6

    aput p0, v2, v5

    aput p0, v2, v4

    .line 121
    invoke-static {v0, v2}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-array v2, v10, [F

    aput p0, v2, v11

    aput p0, v2, v12

    aput p0, v2, v9

    aput p0, v2, v8

    aput p0, v2, v7

    aput p0, v2, v6

    aput p0, v2, v5

    aput p0, v2, v4

    .line 123
    invoke-static {v1, v2}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    if-nez v2, :cond_1

    new-array v2, v10, [F

    aput p0, v2, v11

    aput p0, v2, v12

    aput p0, v2, v9

    aput p0, v2, v8

    aput v13, v2, v7

    aput v13, v2, v6

    aput v13, v2, v5

    aput v13, v2, v4

    .line 126
    invoke-static {v0, v2}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-array v2, v10, [F

    aput p0, v2, v11

    aput p0, v2, v12

    aput p0, v2, v9

    aput p0, v2, v8

    aput v13, v2, v7

    aput v13, v2, v6

    aput v13, v2, v5

    aput v13, v2, v4

    .line 127
    invoke-static {v1, v2}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    add-int/lit8 v14, p3, -0x1

    if-ne v2, v14, :cond_2

    new-array v2, v10, [F

    aput v13, v2, v11

    aput v13, v2, v12

    aput v13, v2, v9

    aput v13, v2, v8

    aput p0, v2, v7

    aput p0, v2, v6

    aput p0, v2, v5

    aput p0, v2, v4

    .line 129
    invoke-static {v0, v2}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-array v2, v10, [F

    aput v13, v2, v11

    aput v13, v2, v12

    aput v13, v2, v9

    aput v13, v2, v8

    aput p0, v2, v7

    aput p0, v2, v6

    aput p0, v2, v5

    aput p0, v2, v4

    .line 130
    invoke-static {v1, v2}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 132
    :cond_2
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 133
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v1, v0

    move-object v0, v2

    :goto_0
    new-array v2, v12, [I

    const v4, -0x10100a7

    aput v4, v2, v11

    .line 136
    invoke-virtual {v3, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v12, [I

    const v2, 0x10100a7

    aput v2, v0, v11

    .line 137
    invoke-virtual {v3, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v3
.end method

.method public static listItemSelector(FIIZ)Landroid/graphics/drawable/StateListDrawable;
    .locals 12

    .line 93
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_0

    .line 98
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 99
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    new-array v3, p3, [F

    const/4 v4, 0x0

    aput v4, v3, v2

    aput v4, v3, v1

    const/4 v5, 0x2

    aput v4, v3, v5

    const/4 v6, 0x3

    aput v4, v3, v6

    const/4 v7, 0x4

    aput p0, v3, v7

    const/4 v8, 0x5

    aput p0, v3, v8

    const/4 v9, 0x6

    aput p0, v3, v9

    const/4 v10, 0x7

    aput p0, v3, v10

    .line 101
    invoke-static {p1, v3}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-array p3, p3, [F

    aput v4, p3, v2

    aput v4, p3, v1

    aput v4, p3, v5

    aput v4, p3, v6

    aput p0, p3, v7

    aput p0, p3, v8

    aput p0, p3, v9

    aput p0, p3, v10

    .line 102
    invoke-static {p2, p3}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    move-object v11, p1

    move-object p1, p0

    move-object p0, v11

    :goto_0
    new-array p2, v1, [I

    const p3, -0x10100a7

    aput p3, p2, v2

    .line 105
    invoke-virtual {v0, p2, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p0, v1, [I

    const p2, 0x10100a7

    aput p2, p0, v2

    .line 106
    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static setCheckBoxDrawable(Landroid/widget/CheckBox;II)V
    .locals 5

    .line 143
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x10100a1

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 144
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v1, [I

    const v2, 0x10100a0

    aput v2, v1, v4

    .line 145
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p1, v4, [I

    .line 146
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 147
    invoke-virtual {p0, v0, p1, p1, p1}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setCheckBoxDrawable(Landroid/widget/CheckBox;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 151
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x10100a1

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 152
    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v1, [I

    const v2, 0x10100a0

    aput v2, v1, v4

    .line 153
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p1, v4, [I

    .line 154
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 155
    invoke-virtual {p0, v0, p1, p1, p1}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
