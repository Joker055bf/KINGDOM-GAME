.class public Lcom/chartboost/sdk/impl/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/f0;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/g0;Lcom/chartboost/sdk/internal/Model/a;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/chartboost/sdk/impl/f0;->a(Lcom/chartboost/sdk/impl/g0;Lcom/chartboost/sdk/internal/Model/a;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/g0;Lcom/chartboost/sdk/internal/Model/a;Ljava/lang/Runnable;Lcom/chartboost/sdk/impl/o1;)V
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/f0;->a(Lcom/chartboost/sdk/impl/g0;Lcom/chartboost/sdk/internal/Model/a;Ljava/lang/Runnable;ZLcom/chartboost/sdk/impl/o1;)V

    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/g0;Lcom/chartboost/sdk/internal/Model/a;Ljava/lang/Runnable;Z)V
    .locals 26

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 23
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 24
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-string v4, "AnimationManager"

    if-eqz v0, :cond_18

    .line 27
    iget-object v6, v0, Lcom/chartboost/sdk/internal/Model/a;->z:Lcom/chartboost/sdk/impl/f4;

    if-nez v6, :cond_0

    goto/16 :goto_f

    .line 33
    :cond_0
    invoke-virtual {v6}, Lcom/chartboost/sdk/impl/f4;->getContentView()Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_2

    if-eqz v1, :cond_1

    .line 36
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    :cond_1
    const-string v0, "Transition of impression canceled due to lack of view"

    .line 37
    invoke-static {v4, v0}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 42
    :cond_2
    iget-object v4, v0, Lcom/chartboost/sdk/internal/Model/a;->a:Lcom/chartboost/sdk/impl/k3;

    sget-object v7, Lcom/chartboost/sdk/impl/k3;->d:Lcom/chartboost/sdk/impl/k3;

    if-eq v4, v7, :cond_3

    sget-object v7, Lcom/chartboost/sdk/impl/k3;->c:Lcom/chartboost/sdk/impl/k3;

    if-ne v4, v7, :cond_4

    .line 43
    :cond_3
    iget-object v6, v0, Lcom/chartboost/sdk/internal/Model/a;->z:Lcom/chartboost/sdk/impl/f4;

    .line 46
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 47
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 59
    sget-object v7, Lcom/chartboost/sdk/impl/f0$b;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x0

    const v10, 0x3ecccccd

    const v11, 0x3e99999a

    const-wide/16 v12, 0x1f4

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    const-wide/16 v4, 0x0

    if-eqz p4, :cond_5

    .line 159
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v15, 0x3f19999a

    const v16, 0x3f8ccccd

    const v17, 0x3f19999a

    const v18, 0x3f8ccccd

    const/16 v19, 0x1

    const/high16 v20, 0x3f000000    # 0.5f

    const/16 v21, 0x1

    const/high16 v22, 0x3f000000    # 0.5f

    move-object v14, v0

    invoke-direct/range {v14 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    long-to-float v7, v12

    const v8, 0x3f19999a

    mul-float/2addr v8, v7

    .line 160
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 161
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 162
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 163
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 165
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v15, 0x3f800000    # 1.0f

    const v16, 0x3f51745c

    const/high16 v17, 0x3f800000    # 1.0f

    const v18, 0x3f51745c

    move-object v14, v0

    invoke-direct/range {v14 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const v4, 0x3e4ccccc

    mul-float/2addr v4, v7

    .line 166
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 168
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-long v4, v4

    .line 169
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 171
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 172
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 174
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v16, 0x3f8e38e4

    const v18, 0x3f8e38e4

    move-object v14, v0

    invoke-direct/range {v14 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const v4, 0x3dccccc8

    mul-float/2addr v4, v7

    .line 175
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    const v4, 0x3f4ccccd

    mul-float/2addr v7, v4

    .line 176
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 177
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 178
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_d

    .line 180
    :cond_5
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/high16 v20, 0x3f000000    # 0.5f

    const/16 v21, 0x1

    const/high16 v22, 0x3f000000    # 0.5f

    move-object v14, v0

    invoke-direct/range {v14 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 181
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 182
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 183
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 184
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_d

    :pswitch_1
    if-eqz p4, :cond_6

    neg-float v4, v0

    goto :goto_0

    :cond_6
    move v4, v9

    :goto_0
    if-eqz p4, :cond_7

    move v0, v9

    goto :goto_1

    :cond_7
    neg-float v0, v0

    .line 185
    :goto_1
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v5, v4, v0, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 186
    invoke-virtual {v5, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 187
    invoke-virtual {v5, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 188
    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_d

    :pswitch_2
    if-eqz p4, :cond_8

    move v4, v0

    goto :goto_2

    :cond_8
    move v4, v9

    :goto_2
    if-eqz p4, :cond_9

    move v0, v9

    .line 189
    :cond_9
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v5, v4, v0, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 190
    invoke-virtual {v5, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 191
    invoke-virtual {v5, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 192
    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_d

    :pswitch_3
    if-eqz p4, :cond_a

    neg-float v0, v4

    goto :goto_3

    :cond_a
    move v0, v9

    :goto_3
    if-eqz p4, :cond_b

    move v4, v9

    goto :goto_4

    :cond_b
    neg-float v4, v4

    .line 193
    :goto_4
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v5, v9, v9, v0, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 194
    invoke-virtual {v5, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 195
    invoke-virtual {v5, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 196
    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_d

    :pswitch_4
    if-eqz p4, :cond_c

    move v0, v4

    goto :goto_5

    :cond_c
    move v0, v9

    :goto_5
    if-eqz p4, :cond_d

    move v4, v9

    .line 197
    :cond_d
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v5, v9, v9, v0, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 198
    invoke-virtual {v5, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 199
    invoke-virtual {v5, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 200
    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_d

    :pswitch_5
    if-eqz p4, :cond_e

    .line 201
    new-instance v7, Lcom/chartboost/sdk/impl/a3;

    div-float v17, v0, v8

    div-float v18, v4, v8

    const/high16 v15, -0x3d900000    # -60.0f

    const/16 v16, 0x0

    const/16 v19, 0x1

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/chartboost/sdk/impl/a3;-><init>(FFFFZ)V

    goto :goto_6

    .line 203
    :cond_e
    new-instance v7, Lcom/chartboost/sdk/impl/a3;

    div-float v23, v0, v8

    div-float v24, v4, v8

    const/16 v21, 0x0

    const/high16 v22, 0x42700000    # 60.0f

    const/16 v25, 0x1

    move-object/from16 v20, v7

    invoke-direct/range {v20 .. v25}, Lcom/chartboost/sdk/impl/a3;-><init>(FFFFZ)V

    .line 204
    :goto_6
    invoke-virtual {v7, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 205
    invoke-virtual {v7, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 206
    invoke-virtual {v2, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p4, :cond_f

    .line 208
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v7, v10, v5, v10, v5}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    goto :goto_7

    .line 209
    :cond_f
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v7, v5, v10, v5, v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 210
    :goto_7
    invoke-virtual {v7, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 211
    invoke-virtual {v7, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 212
    invoke-virtual {v2, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p4, :cond_10

    .line 215
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    neg-float v0, v0

    mul-float/2addr v0, v10

    mul-float/2addr v4, v11

    invoke-direct {v5, v0, v9, v4, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_8

    .line 217
    :cond_10
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    mul-float/2addr v4, v11

    invoke-direct {v5, v9, v0, v9, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 218
    :goto_8
    invoke-virtual {v5, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 219
    invoke-virtual {v5, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 220
    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_d

    :pswitch_6
    if-eqz p4, :cond_11

    .line 221
    new-instance v7, Lcom/chartboost/sdk/impl/a3;

    div-float v17, v0, v8

    div-float v18, v4, v8

    const/high16 v15, -0x3d900000    # -60.0f

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/chartboost/sdk/impl/a3;-><init>(FFFFZ)V

    goto :goto_9

    .line 223
    :cond_11
    new-instance v7, Lcom/chartboost/sdk/impl/a3;

    div-float v23, v0, v8

    div-float v24, v4, v8

    const/16 v21, 0x0

    const/high16 v22, 0x42700000    # 60.0f

    const/16 v25, 0x0

    move-object/from16 v20, v7

    invoke-direct/range {v20 .. v25}, Lcom/chartboost/sdk/impl/a3;-><init>(FFFFZ)V

    .line 224
    :goto_9
    invoke-virtual {v7, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 225
    invoke-virtual {v7, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 226
    invoke-virtual {v2, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p4, :cond_12

    .line 228
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v7, v10, v5, v10, v5}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    goto :goto_a

    .line 229
    :cond_12
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v7, v5, v10, v5, v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 230
    :goto_a
    invoke-virtual {v7, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 231
    invoke-virtual {v7, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 232
    invoke-virtual {v2, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p4, :cond_13

    .line 235
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    mul-float/2addr v0, v11

    neg-float v4, v4

    mul-float/2addr v4, v10

    invoke-direct {v5, v0, v9, v4, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_b

    .line 237
    :cond_13
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    mul-float/2addr v0, v11

    invoke-direct {v5, v9, v0, v9, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 238
    :goto_b
    invoke-virtual {v5, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 239
    invoke-virtual {v5, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 240
    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_d

    :pswitch_7
    if-eqz p4, :cond_14

    .line 241
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v9, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_c

    .line 242
    :cond_14
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 243
    :goto_c
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 244
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 245
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 246
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 370
    :goto_d
    sget-object v0, Lcom/chartboost/sdk/impl/g0;->i:Lcom/chartboost/sdk/impl/g0;

    move-object/from16 v3, p1

    if-ne v3, v0, :cond_16

    if-eqz v1, :cond_15

    .line 372
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    :cond_15
    move-object/from16 v0, p0

    goto :goto_e

    :cond_16
    move-object/from16 v0, p0

    if-eqz v1, :cond_17

    .line 377
    iget-object v3, v0, Lcom/chartboost/sdk/impl/f0;->a:Landroid/os/Handler;

    invoke-virtual {v3, v1, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 379
    :cond_17
    invoke-virtual {v6, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_e
    return-void

    :cond_18
    :goto_f
    move-object/from16 v0, p0

    const-string v2, "Transition of impression canceled due to lack of container"

    .line 380
    invoke-static {v4, v2}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_19

    .line 382
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    :cond_19
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/chartboost/sdk/impl/g0;Lcom/chartboost/sdk/internal/Model/a;Ljava/lang/Runnable;ZLcom/chartboost/sdk/impl/o1;)V
    .locals 9

    .line 3
    sget-object v0, Lcom/chartboost/sdk/impl/g0;->i:Lcom/chartboost/sdk/impl/g0;

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_0

    .line 4
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "AnimationManager"

    if-eqz p2, :cond_5

    .line 9
    iget-object v1, p2, Lcom/chartboost/sdk/internal/Model/a;->z:Lcom/chartboost/sdk/impl/f4;

    if-nez v1, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/f4;->getContentView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    .line 15
    invoke-virtual {p5, p2}, Lcom/chartboost/sdk/impl/o1;->e(Lcom/chartboost/sdk/internal/Model/a;)V

    const-string p1, "Transition of impression canceled due to lack of view"

    .line 16
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p5

    .line 20
    invoke-virtual {p5}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    new-instance v0, Lcom/chartboost/sdk/impl/f0$a;

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/chartboost/sdk/impl/f0$a;-><init>(Lcom/chartboost/sdk/impl/f0;Landroid/view/View;Lcom/chartboost/sdk/impl/g0;Lcom/chartboost/sdk/internal/Model/a;Ljava/lang/Runnable;Z)V

    invoke-virtual {p5, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    const-string p1, "Transition of impression canceled due to lack of container"

    .line 22
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
