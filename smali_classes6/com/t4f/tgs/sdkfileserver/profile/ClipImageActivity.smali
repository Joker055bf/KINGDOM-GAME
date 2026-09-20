.class public Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;
.super Landroid/app/Activity;
.source "ClipImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DEFAULT_MAX_IMAGE_SIZE:I = 0xc800

.field public static final DEFAULT_MAX_QUALITY:I = 0x64

.field public static final EXTRA_ERROR_CROP_PHOTO_KEY:Ljava/lang/String; = "CLIPIMAGEACTIVITY_ERROR"

.field public static final RESULT_ERROR_CROP_PHOTO:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "TGS...ClipImageActivity"

.field public static final TYPE_QQ:I = 0x1

.field public static final TYPE_WECHAT:I = 0x2


# instance fields
.field private back:Landroid/widget/ImageView;

.field private btnCancel:Landroid/widget/TextView;

.field private btnOk:Landroid/widget/TextView;

.field private clipViewLayout1:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;

.field private clipViewLayout2:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;

.field private statusBarHeight:I

.field private tailorConfig:Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->tailorConfig:Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;

    return-void
.end method

.method private cancelAndBack()V
    .locals 2

    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 151
    invoke-virtual {p0, v1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 152
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->finish()V

    return-void
.end method

.method private compressImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    if-nez p4, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    .line 226
    :cond_1
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    const/16 v0, 0x64

    if-lez p3, :cond_2

    if-gt p3, v0, :cond_2

    goto :goto_1

    :cond_2
    move p3, v0

    .line 228
    :goto_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 229
    invoke-virtual {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-wide/16 v1, 0x0

    cmp-long v3, p5, v1

    if-lez v3, :cond_3

    goto :goto_2

    :cond_3
    const-wide/32 p5, 0xc800

    :goto_2
    if-lez p3, :cond_4

    .line 232
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v1, v1

    cmp-long v3, v1, p5

    if-lez v3, :cond_4

    .line 233
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 234
    invoke-virtual {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    add-int/lit8 p3, p3, -0xa

    goto :goto_2

    .line 237
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Compress image.size="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " options="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " length="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TGS...ClipImageActivity"

    invoke-static {p2, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private errorAndBack(Ljava/lang/String;)V
    .locals 2

    .line 156
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "CLIPIMAGEACTIVITY_ERROR"

    .line 157
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x3e9

    .line 158
    invoke-virtual {p0, p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 159
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->finish()V

    return-void
.end method

.method private generateUriAndReturn()V
    .locals 13

    const-string v0, ",ex="

    const-string v1, "Cannot open file: "

    const-string v2, "Compress image file."

    .line 168
    iget v3, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 169
    iget-object v3, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->clipViewLayout1:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;

    invoke-virtual {v3}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->clip()Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 171
    :cond_0
    iget-object v3, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->clipViewLayout2:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;

    invoke-virtual {v3}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->clip()Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_0
    move-object v5, v3

    const-string v3, "TGS...ClipImageActivity"

    if-nez v5, :cond_1

    const-string v0, "zoomedCropBitmap == null"

    .line 174
    invoke-static {v3, v0}, Lcom/t4f/debug/Debug;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, v0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->errorAndBack(Ljava/lang/String;)V

    return-void

    .line 178
    :cond_1
    new-instance v11, Ljava/io/File;

    invoke-static {p0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/FileUtil;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cropped_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_for_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v11, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 183
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->tailorConfig:Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;->getSize()J

    move-result-wide v6

    goto :goto_1

    :cond_2
    const-wide/16 v6, -0x1

    :goto_1
    move-wide v9, v6

    .line 185
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 187
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    move-object v4, p0

    move-object v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->compressImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v4, v2

    goto/16 :goto_5

    :catch_1
    move-exception v4

    move-object v12, v4

    move-object v4, v2

    move-object v2, v12

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v2

    .line 192
    :goto_2
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->errorAndBack(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_3

    .line 197
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 204
    :cond_3
    :goto_3
    :try_start_5
    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 206
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 207
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 208
    invoke-virtual {p0, v0, v1}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 209
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->finish()V

    goto :goto_4

    :cond_4
    const-string v0, "crop image not exist"

    .line 211
    invoke-direct {p0, v0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->errorAndBack(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "crop image error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->errorAndBack(Ljava/lang/String;)V

    :goto_4
    return-void

    :goto_5
    if-eqz v4, :cond_5

    .line 197
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception v1

    .line 199
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 202
    :cond_5
    :goto_6
    throw v0
.end method

.method private getStatusBarHeight()I
    .locals 4

    .line 54
    iget v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->statusBarHeight:I

    if-eqz v0, :cond_0

    return v0

    .line 60
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 64
    :goto_0
    iput v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->statusBarHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 67
    :catch_0
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public initView()V
    .locals 1

    .line 110
    sget v0, Lcom/t4f/android/R$id;->clipViewLayout1:I

    invoke-virtual {p0, v0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;

    iput-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->clipViewLayout1:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;

    .line 111
    sget v0, Lcom/t4f/android/R$id;->clipViewLayout2:I

    invoke-virtual {p0, v0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;

    iput-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->clipViewLayout2:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;

    .line 112
    sget v0, Lcom/t4f/android/R$id;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->back:Landroid/widget/ImageView;

    .line 113
    sget v0, Lcom/t4f/android/R$id;->btn_cancel:I

    invoke-virtual {p0, v0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->btnCancel:Landroid/widget/TextView;

    .line 114
    sget v0, Lcom/t4f/android/R$id;->bt_ok:I

    invoke-virtual {p0, v0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->btnOk:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->back:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->btnCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->btnOk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$onCreate$0$com-t4f-tgs-sdkfileserver-profile-ClipImageActivity(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 81
    invoke-virtual {p3}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p2

    .line 82
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 85
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p2

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p1, v1, p2, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p2

    .line 88
    invoke-direct {p0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->getStatusBarHeight()I

    move-result v1

    .line 89
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    .line 87
    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_0
    return-object p3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 140
    sget v0, Lcom/t4f/android/R$id;->iv_back:I

    if-ne p1, v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->cancelAndBack()V

    goto :goto_0

    .line 142
    :cond_0
    sget v0, Lcom/t4f/android/R$id;->btn_cancel:I

    if-ne p1, v0, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->cancelAndBack()V

    goto :goto_0

    .line 144
    :cond_1
    sget v0, Lcom/t4f/android/R$id;->bt_ok:I

    if-ne p1, v0, :cond_2

    .line 145
    invoke-direct {p0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->generateUriAndReturn()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, v0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->setRequestedOrientation(I)V

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    sget p1, Lcom/t4f/android/R$layout;->activity_t4f_sdkfileserver_clip_image:I

    invoke-virtual {p0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->setContentView(I)V

    .line 78
    sget p1, Lcom/t4f/android/R$id;->clip_image_activity_root_layout:I

    invoke-virtual {p0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 79
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x23

    if-lt v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_0

    .line 80
    new-instance v1, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity$$ExternalSyntheticLambda0;-><init>(Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 94
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestApplyInsets()V

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->type:I

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "tailor_config"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;

    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->tailorConfig:Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->tailorConfig:Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->initView()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 124
    iget v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->type:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->clipViewLayout1:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;

    invoke-virtual {v0, v3}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->clipViewLayout2:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;

    invoke-virtual {v0, v2}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->clipViewLayout1:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;

    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->setImageSrc(Landroid/net/Uri;)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->clipViewLayout2:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;

    invoke-virtual {v0, v3}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->clipViewLayout1:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;

    invoke-virtual {v0, v2}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->clipViewLayout2:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;

    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->setImageSrc(Landroid/net/Uri;)V

    :goto_0
    return-void
.end method
