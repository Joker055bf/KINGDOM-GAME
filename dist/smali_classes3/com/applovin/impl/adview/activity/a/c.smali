.class public Lcom/applovin/impl/adview/activity/a/c;
.super Lcom/applovin/impl/adview/activity/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/adview/activity/a/a;-><init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Lcom/applovin/impl/sdk/p;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/applovin/impl/adview/activity/a/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/widget/ImageView;Lcom/applovin/impl/adview/m;Lcom/applovin/impl/adview/v;Lcom/applovin/impl/adview/a;Landroid/widget/ProgressBar;Landroid/view/View;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/u;Landroid/widget/ImageView;Landroid/view/ViewGroup;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 63
    iget-object v11, v0, Lcom/applovin/impl/adview/activity/a/c;->c:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v11}, Lcom/applovin/impl/sdk/ad/e;->aN()Lcom/applovin/impl/sdk/ad/e$d;

    move-result-object v11

    sget-object v12, Lcom/applovin/impl/sdk/ad/e$d;->b:Lcom/applovin/impl/sdk/ad/e$d;

    const/16 v13, 0x30

    const/4 v14, -0x2

    const/4 v15, -0x1

    if-ne v11, v12, :cond_0

    .line 65
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v15, v14, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    :goto_0
    const/4 v12, 0x5

    goto :goto_1

    .line 69
    :cond_0
    iget-object v11, v0, Lcom/applovin/impl/adview/activity/a/c;->c:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v11}, Lcom/applovin/impl/sdk/ad/e;->aN()Lcom/applovin/impl/sdk/ad/e$d;

    move-result-object v11

    sget-object v12, Lcom/applovin/impl/sdk/ad/e$d;->c:Lcom/applovin/impl/sdk/ad/e$d;

    if-ne v11, v12, :cond_1

    .line 71
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v12, 0x50

    invoke-direct {v11, v15, v14, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v11, v0, Lcom/applovin/impl/adview/activity/a/c;->c:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v11}, Lcom/applovin/impl/sdk/ad/e;->aN()Lcom/applovin/impl/sdk/ad/e$d;

    move-result-object v11

    sget-object v12, Lcom/applovin/impl/sdk/ad/e$d;->d:Lcom/applovin/impl/sdk/ad/e$d;

    if-ne v11, v12, :cond_2

    .line 77
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, 0x3

    invoke-direct {v11, v14, v15, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_0

    :cond_2
    const/4 v12, 0x3

    .line 81
    iget-object v11, v0, Lcom/applovin/impl/adview/activity/a/c;->c:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v11}, Lcom/applovin/impl/sdk/ad/e;->aN()Lcom/applovin/impl/sdk/ad/e$d;

    move-result-object v11

    sget-object v12, Lcom/applovin/impl/sdk/ad/e$d;->e:Lcom/applovin/impl/sdk/ad/e$d;

    if-ne v11, v12, :cond_3

    .line 83
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, 0x5

    invoke-direct {v11, v14, v15, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_1

    :cond_3
    const/4 v12, 0x5

    .line 89
    iget-object v11, v0, Lcom/applovin/impl/adview/activity/a/c;->e:Landroid/widget/FrameLayout$LayoutParams;

    .line 92
    :goto_1
    iget-object v14, v0, Lcom/applovin/impl/adview/activity/a/c;->c:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v14}, Lcom/applovin/impl/sdk/ad/e;->aK()Z

    move-result v14

    const/4 v12, 0x4

    const/4 v15, 0x0

    if-eqz v14, :cond_4

    .line 95
    iget-object v14, v0, Lcom/applovin/impl/adview/activity/a/c;->e:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v7, v14}, Lcom/applovin/adview/AppLovinAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v14, v0, Lcom/applovin/impl/adview/activity/a/c;->d:Landroid/view/ViewGroup;

    invoke-virtual {v14, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    new-instance v7, Landroid/view/View;

    iget-object v14, v0, Lcom/applovin/impl/adview/activity/a/c;->b:Landroid/app/Activity;

    invoke-direct {v7, v14}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 100
    iget-object v14, v0, Lcom/applovin/impl/adview/activity/a/c;->e:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v7, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v14, 0xfe

    .line 101
    invoke-static {v14, v15, v15, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 102
    new-instance v14, Lcom/applovin/impl/adview/activity/a/c$1;

    invoke-direct {v14, v0}, Lcom/applovin/impl/adview/activity/a/c$1;-><init>(Lcom/applovin/impl/adview/activity/a/c;)V

    invoke-virtual {v7, v14}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    iget-object v14, v0, Lcom/applovin/impl/adview/activity/a/c;->d:Landroid/view/ViewGroup;

    invoke-virtual {v14, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    invoke-virtual {v6, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v7, v0, Lcom/applovin/impl/adview/activity/a/c;->d:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 119
    :cond_4
    invoke-virtual {v6, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v11, v0, Lcom/applovin/impl/adview/activity/a/c;->d:Landroid/view/ViewGroup;

    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    iget-object v6, v0, Lcom/applovin/impl/adview/activity/a/c;->e:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v7, v6}, Lcom/applovin/adview/AppLovinAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v6, v0, Lcom/applovin/impl/adview/activity/a/c;->d:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 125
    invoke-virtual {v7, v12}, Lcom/applovin/adview/AppLovinAdView;->setVisibility(I)V

    :goto_2
    if-eqz v3, :cond_7

    .line 131
    iget-object v6, v0, Lcom/applovin/impl/adview/activity/a/c;->c:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v6}, Lcom/applovin/impl/sdk/ad/e;->D()Lcom/applovin/impl/adview/t;

    move-result-object v6

    .line 133
    invoke-virtual {v6}, Lcom/applovin/impl/adview/t;->a()I

    move-result v7

    int-to-double v13, v7

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v13, v13, v16

    .line 134
    invoke-virtual {v6}, Lcom/applovin/impl/adview/t;->b()I

    move-result v7

    int-to-double v11, v7

    div-double v11, v11, v16

    if-eqz v10, :cond_5

    .line 141
    invoke-virtual/range {p10 .. p10}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    .line 142
    invoke-virtual/range {p10 .. p10}, Landroid/view/ViewGroup;->getHeight()I

    move-result v16

    move/from16 v15, v16

    goto :goto_3

    .line 146
    :cond_5
    iget-object v7, v0, Lcom/applovin/impl/adview/activity/a/c;->b:Landroid/app/Activity;

    invoke-static {v7}, Lcom/applovin/impl/sdk/utils/h;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v7

    .line 147
    iget v15, v7, Landroid/graphics/Point;->x:I

    .line 148
    iget v7, v7, Landroid/graphics/Point;->y:I

    move/from16 v18, v15

    move v15, v7

    move/from16 v7, v18

    :goto_3
    int-to-double v7, v7

    mul-double/2addr v7, v13

    double-to-int v7, v7

    int-to-double v13, v15

    mul-double/2addr v13, v11

    double-to-int v8, v13

    .line 154
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v6}, Lcom/applovin/impl/adview/t;->d()I

    move-result v12

    invoke-direct {v11, v7, v8, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 155
    iget-object v7, v0, Lcom/applovin/impl/adview/activity/a/c;->b:Landroid/app/Activity;

    invoke-virtual {v6}, Lcom/applovin/impl/adview/t;->c()I

    move-result v8

    invoke-static {v7, v8}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v7

    .line 156
    invoke-virtual {v11, v7, v7, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 158
    iget-object v7, v0, Lcom/applovin/impl/adview/activity/a/c;->d:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    invoke-virtual {v6}, Lcom/applovin/impl/adview/t;->i()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_6

    const/4 v7, 0x4

    .line 163
    invoke-virtual {v3, v7}, Lcom/applovin/impl/adview/v;->setVisibility(I)V

    .line 165
    invoke-virtual {v6}, Lcom/applovin/impl/adview/t;->i()F

    move-result v7

    invoke-static {v7}, Lcom/applovin/impl/sdk/utils/Utils;->secondsToMillisLong(F)J

    move-result-wide v11

    .line 166
    invoke-virtual {v6}, Lcom/applovin/impl/adview/t;->g()J

    move-result-wide v13

    .line 167
    new-instance v7, Lcom/applovin/impl/adview/activity/a/c$2;

    invoke-direct {v7, v0, v3, v13, v14}, Lcom/applovin/impl/adview/activity/a/c$2;-><init>(Lcom/applovin/impl/adview/activity/a/c;Lcom/applovin/impl/adview/v;J)V

    invoke-static {v7, v11, v12}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 178
    :cond_6
    invoke-virtual {v6}, Lcom/applovin/impl/adview/t;->j()F

    move-result v7

    cmpl-float v7, v7, v8

    if-lez v7, :cond_7

    .line 180
    invoke-virtual {v6}, Lcom/applovin/impl/adview/t;->j()F

    move-result v7

    invoke-static {v7}, Lcom/applovin/impl/sdk/utils/Utils;->secondsToMillisLong(F)J

    move-result-wide v7

    .line 181
    invoke-virtual {v6}, Lcom/applovin/impl/adview/t;->h()J

    move-result-wide v11

    .line 182
    new-instance v6, Lcom/applovin/impl/adview/activity/a/c$3;

    invoke-direct {v6, v0, v3, v11, v12}, Lcom/applovin/impl/adview/activity/a/c$3;-><init>(Lcom/applovin/impl/adview/activity/a/c;Lcom/applovin/impl/adview/v;J)V

    invoke-static {v6, v7, v8}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_7
    if-eqz v2, :cond_9

    .line 196
    iget-object v3, v0, Lcom/applovin/impl/adview/activity/a/c;->c:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/e;->ac()Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x30

    const/4 v13, 0x3

    goto :goto_4

    :cond_8
    const/16 v3, 0x30

    const/4 v13, 0x5

    :goto_4
    or-int/2addr v3, v13

    .line 197
    iget-object v6, v0, Lcom/applovin/impl/adview/activity/a/c;->c:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v6}, Lcom/applovin/impl/sdk/ad/e;->X()Lcom/applovin/impl/sdk/ad/e$c;

    move-result-object v6

    invoke-virtual {v0, v6, v3, v2}, Lcom/applovin/impl/adview/activity/a/c;->a(Lcom/applovin/impl/sdk/ad/e$c;ILcom/applovin/impl/adview/m;)V

    :cond_9
    if-eqz v1, :cond_a

    .line 203
    iget-object v2, v0, Lcom/applovin/impl/adview/activity/a/c;->b:Landroid/app/Activity;

    iget-object v3, v0, Lcom/applovin/impl/adview/activity/a/c;->a:Lcom/applovin/impl/sdk/p;

    sget-object v6, Lcom/applovin/impl/sdk/c/b;->cJ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v3, v6}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    .line 204
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, v0, Lcom/applovin/impl/adview/activity/a/c;->a:Lcom/applovin/impl/sdk/p;

    sget-object v7, Lcom/applovin/impl/sdk/c/b;->cL:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v3, v2, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 205
    iget-object v2, v0, Lcom/applovin/impl/adview/activity/a/c;->b:Landroid/app/Activity;

    iget-object v6, v0, Lcom/applovin/impl/adview/activity/a/c;->a:Lcom/applovin/impl/sdk/p;

    sget-object v7, Lcom/applovin/impl/sdk/c/b;->cK:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v2, v6}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    .line 206
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 207
    iget-object v2, v0, Lcom/applovin/impl/adview/activity/a/c;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    if-eqz v4, :cond_b

    .line 213
    iget-object v1, v0, Lcom/applovin/impl/adview/activity/a/c;->d:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/applovin/impl/adview/activity/a/c;->e:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    if-eqz v5, :cond_c

    .line 219
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x14

    const/16 v3, 0x50

    const/4 v4, -0x1

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 220
    iget-object v2, v0, Lcom/applovin/impl/adview/activity/a/c;->a:Lcom/applovin/impl/sdk/p;

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->cO:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 222
    iget-object v2, v0, Lcom/applovin/impl/adview/activity/a/c;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    if-eqz v9, :cond_d

    .line 228
    iget-object v1, v0, Lcom/applovin/impl/adview/activity/a/c;->c:Lcom/applovin/impl/sdk/ad/e;

    check-cast v1, Lcom/applovin/impl/c/a;

    .line 230
    invoke-virtual {v1}, Lcom/applovin/impl/c/a;->aS()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 232
    iget-object v2, v0, Lcom/applovin/impl/adview/activity/a/c;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/applovin/impl/c/a;->aR()Lcom/applovin/impl/c/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/c/g;->c()I

    move-result v3

    invoke-static {v2, v3}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    .line 233
    iget-object v3, v0, Lcom/applovin/impl/adview/activity/a/c;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/applovin/impl/c/a;->aR()Lcom/applovin/impl/c/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/c/g;->d()I

    move-result v1

    invoke-static {v3, v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    .line 234
    iget-object v3, v0, Lcom/applovin/impl/adview/activity/a/c;->b:Landroid/app/Activity;

    iget-object v4, v0, Lcom/applovin/impl/adview/activity/a/c;->a:Lcom/applovin/impl/sdk/p;

    sget-object v5, Lcom/applovin/impl/sdk/c/b;->eR:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v4, v5}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    .line 235
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x53

    invoke-direct {v4, v2, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 236
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 238
    iget-object v1, v0, Lcom/applovin/impl/adview/activity/a/c;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1, v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    move-object/from16 v1, p8

    if-eqz v1, :cond_e

    .line 245
    iget-object v2, v0, Lcom/applovin/impl/adview/activity/a/c;->d:Landroid/view/ViewGroup;

    iget-object v3, v0, Lcom/applovin/impl/adview/activity/a/c;->e:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    if-eqz v10, :cond_f

    .line 251
    iget-object v1, v0, Lcom/applovin/impl/adview/activity/a/c;->d:Landroid/view/ViewGroup;

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 255
    :cond_f
    iget-object v1, v0, Lcom/applovin/impl/adview/activity/a/c;->b:Landroid/app/Activity;

    iget-object v2, v0, Lcom/applovin/impl/adview/activity/a/c;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    :goto_5
    return-void
.end method

.method public bridge synthetic a(Lcom/applovin/impl/adview/m;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/applovin/impl/adview/activity/a/a;->a(Lcom/applovin/impl/adview/m;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/adview/m;Lcom/applovin/impl/adview/u;Landroid/view/View;)V
    .locals 1

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/a/c;->d:Landroid/view/ViewGroup;

    invoke-static {v0, p3}, Lcom/applovin/impl/sdk/utils/c;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    if-eqz p1, :cond_2

    .line 276
    iget-object p3, p0, Lcom/applovin/impl/adview/activity/a/c;->c:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/ad/e;->ab()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x3

    goto :goto_0

    :cond_1
    const/4 p3, 0x5

    :goto_0
    or-int/lit8 p3, p3, 0x30

    .line 277
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/a/c;->c:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->X()Lcom/applovin/impl/sdk/ad/e$c;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p1}, Lcom/applovin/impl/adview/activity/a/c;->a(Lcom/applovin/impl/sdk/ad/e$c;ILcom/applovin/impl/adview/m;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 283
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/a/c;->d:Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/applovin/impl/adview/activity/a/c;->e:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method
