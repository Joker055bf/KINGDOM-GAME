.class public Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;
.super Landroid/widget/RelativeLayout;
.source "ClipViewLayout.java"


# static fields
.field private static final DRAG:I = 0x1

.field private static final MAX_DECODE_RETRY:I = 0x3

.field public static final MAX_MAP_ZOOM_WIDTH:I = 0x200

.field private static final MAX_SAFE_EDGE:I = 0x1000

.field public static final MIN_MAP_ZOOM_WIDTH:I = 0x40

.field private static final NONE:I = 0x0

.field private static final REQUEST_HEIGHT:I = 0x500

.field private static final REQUEST_WIDTH:I = 0x2d0

.field public static final TAG:Ljava/lang/String; = "TGS...ClipView"

.field private static final ZOOM:I = 0x2


# instance fields
.field private clipView:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;

.field private imageView:Landroid/widget/ImageView;

.field private mHorizontalPadding:F

.field private mVerticalPadding:F

.field private matrix:Landroid/graphics/Matrix;

.field private final matrixValues:[F

.field private maxScale:F

.field private mid:Landroid/graphics/PointF;

.field private minScale:F

.field private mode:I

.field private oldDist:F

.field private savedMatrix:Landroid/graphics/Matrix;

.field private srcPicLoaded:Z

.field private start:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->matrix:Landroid/graphics/Matrix;

    .line 56
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->savedMatrix:Landroid/graphics/Matrix;

    const/4 p3, 0x0

    .line 64
    iput p3, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mode:I

    .line 66
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->start:Landroid/graphics/PointF;

    .line 68
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mid:Landroid/graphics/PointF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 69
    iput v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->oldDist:F

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 71
    iput-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->matrixValues:[F

    const/high16 v0, 0x40800000    # 4.0f

    .line 75
    iput v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->maxScale:F

    .line 77
    iput-boolean p3, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->srcPicLoaded:Z

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 2

    .line 599
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 600
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p2, :cond_1

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 607
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 609
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-ge p2, p0, :cond_2

    move p0, p2

    :cond_2
    const/4 p1, 0x3

    if-ge p0, p1, :cond_3

    goto :goto_1

    :cond_3
    int-to-double p1, p0

    const-wide/high16 v0, 0x401a000000000000L    # 6.5

    cmpg-double p1, p1, v0

    if-gez p1, :cond_4

    const/4 p0, 0x4

    goto :goto_1

    :cond_4
    const/16 p1, 0x8

    if-ge p0, p1, :cond_5

    move p0, p1

    :cond_5
    :goto_1
    return p0
.end method

.method private checkBorder()V
    .locals 9

    .line 381
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->getMatrixRectF(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 385
    iget-object v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    .line 387
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    int-to-float v1, v1

    iget v4, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mHorizontalPadding:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float v4, v1, v4

    cmpl-float v3, v3, v4

    const/4 v4, 0x0

    if-ltz v3, :cond_1

    .line 388
    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mHorizontalPadding:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_0

    .line 389
    iget v3, v0, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget v6, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mHorizontalPadding:F

    add-float/2addr v3, v6

    goto :goto_0

    :cond_0
    move v3, v4

    .line 391
    :goto_0
    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mHorizontalPadding:F

    sub-float v8, v1, v7

    cmpg-float v6, v6, v8

    if-gez v6, :cond_2

    sub-float/2addr v1, v7

    .line 392
    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float v3, v1, v3

    goto :goto_1

    :cond_1
    move v3, v4

    .line 395
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    int-to-float v2, v2

    iget v6, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mVerticalPadding:F

    mul-float/2addr v6, v5

    sub-float v5, v2, v6

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_4

    .line 396
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mVerticalPadding:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_3

    .line 397
    iget v1, v0, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iget v4, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mVerticalPadding:F

    add-float/2addr v4, v1

    .line 399
    :cond_3
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mVerticalPadding:F

    sub-float v6, v2, v5

    cmpg-float v1, v1, v6

    if-gez v1, :cond_4

    sub-float/2addr v2, v5

    .line 400
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v2, v0

    .line 403
    :cond_4
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private static createDecodeOptions(I)Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .line 559
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 560
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x1

    .line 561
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 562
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p0, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method private static decodeBoundsFromUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)V
    .locals 4

    const-string v0, "decodeBoundsFromUri failed: "

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 575
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    .line 577
    :try_start_1
    iput-boolean v3, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 578
    invoke-static {p0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, p0

    goto :goto_1

    :cond_1
    :goto_0
    new-array p1, v3, [Ljava/io/Closeable;

    aput-object p0, p1, v2

    .line 583
    invoke-static {p1}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_1
    :try_start_2
    const-string p0, "TGS...ClipView"

    .line 581
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/t4f/debug/Debug;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-array p0, v3, [Ljava/io/Closeable;

    aput-object v1, p0, v2

    .line 583
    invoke-static {p0}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    :goto_2
    return-void

    :goto_3
    new-array p0, v3, [Ljava/io/Closeable;

    aput-object v1, p0, v2

    invoke-static {p0}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    .line 584
    throw p1

    :cond_2
    :goto_4
    return-void
.end method

.method public static decodeSampledBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 8

    .line 485
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 486
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 489
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 491
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 493
    :cond_1
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v4, :cond_2

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v4, :cond_3

    .line 496
    :cond_2
    invoke-static {p0, p2, v0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->decodeBoundsFromUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)V

    move v2, v3

    .line 498
    :cond_3
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v5, 0x0

    const-string v6, "TGS...ClipView"

    if-lez v4, :cond_b

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v4, :cond_4

    goto/16 :goto_5

    .line 504
    :cond_4
    invoke-static {v0, p3, p4}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 505
    iget p4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v7, 0x1000

    invoke-static {p4, v4, v7}, Lcom/t4f/tgs/sdkfileserver/profile/utils/FileURIUtil;->calculateSafeSampleSize(III)I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 506
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v4, "decodeSampledBitmap: src="

    invoke-direct {p4, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v4, "x"

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " sampleSize="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " fileDecodable="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v6, p4}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    .line 512
    :try_start_0
    invoke-static {p3}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->createDecodeOptions(I)Landroid/graphics/BitmapFactory$Options;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    return-object p1

    :catch_0
    mul-int/lit8 p3, p3, 0x2

    .line 519
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "decodeFile OOM, fallback to stream with sampleSize="

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/t4f/debug/Debug;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz p0, :cond_a

    if-nez p2, :cond_6

    goto/16 :goto_4

    :cond_6
    move p1, v3

    :goto_1
    const/4 p4, 0x3

    if-ge p1, p4, :cond_9

    .line 530
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p4
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p4, :cond_7

    :try_start_2
    const-string v0, "decodeSampledBitmap: openInputStream returned null."

    .line 532
    invoke-static {v6, v0}, Lcom/t4f/debug/Debug;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-array p0, v1, [Ljava/io/Closeable;

    aput-object p4, p0, v3

    .line 548
    invoke-static {p0}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    return-object v5

    .line 535
    :cond_7
    :try_start_3
    invoke-static {p3}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->createDecodeOptions(I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p4, v5, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_8

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeStream returned null. sampleSize="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/t4f/debug/Debug;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_8
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object p4, p0, v3

    .line 548
    invoke-static {p0}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    return-object v0

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    move-object p4, v5

    .line 545
    :goto_2
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "decodeStream failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/t4f/debug/Debug;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    new-array p0, v1, [Ljava/io/Closeable;

    aput-object p4, p0, v3

    .line 548
    invoke-static {p0}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    return-object v5

    :catch_3
    move-object p4, v5

    :catch_4
    mul-int/lit8 p3, p3, 0x2

    .line 543
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decodeStream OOM, retry with sampleSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/t4f/debug/Debug;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    new-array v0, v1, [Ljava/io/Closeable;

    aput-object p4, v0, v3

    .line 548
    invoke-static {v0}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p0

    move-object v5, p4

    :goto_3
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v5, p1, v3

    invoke-static {p1}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    .line 549
    throw p0

    :cond_9
    const-string p0, "decodeSampledBitmap: give up after 3 OOM retries."

    .line 551
    invoke-static {v6, p0}, Lcom/t4f/debug/Debug;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    return-object v5

    .line 499
    :cond_b
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "decodeSampledBitmap: cannot read image bounds, uri="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/t4f/debug/Debug;->E(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method public static getExifOrientation(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)I
    .locals 5

    const-string v0, "getExifOrientation by stream failed: "

    .line 260
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "TGS...ClipView"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getExifOrientation by path failed: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v1, v3

    :goto_0
    const/4 p1, 0x0

    if-nez v1, :cond_2

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    const/4 v4, 0x1

    .line 271
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 273
    new-instance p0, Landroid/media/ExifInterface;

    invoke-direct {p0, v3}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p0

    :cond_1
    new-array p0, v4, [Ljava/io/Closeable;

    aput-object v3, p0, p1

    .line 278
    invoke-static {p0}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 276
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-array p0, v4, [Ljava/io/Closeable;

    aput-object v3, p0, p1

    .line 278
    invoke-static {p0}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    goto :goto_2

    :goto_1
    new-array p2, v4, [Ljava/io/Closeable;

    aput-object v3, p2, p1

    invoke-static {p2}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    .line 279
    throw p0

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    return p1

    :cond_3
    const-string p0, "Orientation"

    const/4 p2, -0x1

    .line 284
    invoke-virtual {v1, p0, p2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p2, 0x3

    if-eq p0, p2, :cond_6

    const/4 p2, 0x6

    if-eq p0, p2, :cond_5

    const/16 p2, 0x8

    if-eq p0, p2, :cond_4

    return p1

    :cond_4
    const/16 p0, 0x10e

    return p0

    :cond_5
    const/16 p0, 0x5a

    return p0

    :cond_6
    const/16 p0, 0xb4

    return p0
.end method

.method private getMatrixRectF(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .line 368
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 369
    iget-object v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 371
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 372
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-object v0
.end method

.method private midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v0, 0x0

    .line 428
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    .line 429
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    add-float/2addr v0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v1, p2

    div-float/2addr v0, p2

    .line 430
    invoke-virtual {p1, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private static rotateIfNeeded(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 7

    .line 233
    invoke-static {p0, p2, p3}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->getExifOrientation(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)I

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    .line 238
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p0

    .line 239
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 241
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_1

    .line 243
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_1
    return-object p1

    .line 249
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "rotateIfNeeded OOM, keep origin bitmap. rotation="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "TGS...ClipView"

    invoke-static {p2, p0}, Lcom/t4f/debug/Debug;->E(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    .line 419
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 420
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 421
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    .line 641
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 642
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 643
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    int-to-float v0, v3

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float v0, v4

    div-float/2addr p2, v0

    .line 646
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 647
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clip()Landroid/graphics/Bitmap;
    .locals 8

    .line 437
    iget-boolean v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->srcPicLoaded:Z

    const/4 v1, 0x0

    const-string v2, "TGS...ClipView"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->imageView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 443
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->buildDrawingCache()V

    .line 444
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->clipView:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;

    invoke-virtual {v0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 448
    :try_start_0
    iget-object v3, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "clip aborted: drawing cache is null."

    .line 450
    invoke-static {v2, v0}, Lcom/t4f/debug/Debug;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    .line 452
    :cond_1
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v3, v4, v5, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v3, 0x200

    .line 453
    :try_start_1
    invoke-static {v0, v3, v3}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :catch_0
    move-exception v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v3, v1

    .line 458
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "clip OOM: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/t4f/debug/Debug;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    move-object v1, v3

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v2, v1

    .line 456
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_2

    .line 461
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 464
    :cond_2
    iget-object v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->destroyDrawingCache()V

    return-object v0

    :cond_3
    :goto_3
    const-string v0, "clip aborted: src pic not loaded."

    .line 439
    invoke-static {v2, v0}, Lcom/t4f/debug/Debug;->E(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getScale()F
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->matrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 411
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->matrixValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 94
    sget-object v0, Lcom/t4f/android/R$styleable;->T4FAlbum_ClipViewLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 97
    sget v0, Lcom/t4f/android/R$styleable;->T4FAlbum_ClipViewLayout_mHorizontalPadding:I

    .line 98
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 97
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mHorizontalPadding:F

    .line 100
    sget v0, Lcom/t4f/android/R$styleable;->T4FAlbum_ClipViewLayout_clipBorderWidth:I

    .line 101
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 100
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 103
    sget v1, Lcom/t4f/android/R$styleable;->T4FAlbum_ClipViewLayout_clipType:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 106
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    new-instance p2, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;

    invoke-direct {p2, p1}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->clipView:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;

    if-ne v1, v2, :cond_0

    .line 109
    sget-object v1, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;->CIRCLE:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;->RECTANGLE:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

    :goto_0
    invoke-virtual {p2, v1}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->setClipType(Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;)V

    .line 111
    iget-object p2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->clipView:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;

    invoke-virtual {p2, v0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->setClipBorderWidth(I)V

    .line 113
    iget-object p2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->clipView:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;

    iget v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mHorizontalPadding:F

    invoke-virtual {p2, v0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->setmHorizontalPadding(F)V

    .line 114
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->imageView:Landroid/widget/ImageView;

    .line 116
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 119
    iget-object p2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2, p1}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object p2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->clipView:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;

    invoke-virtual {p0, p2, p1}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public initSrcPic(Landroid/net/Uri;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/utils/FileURIUtil;->getRealFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "TGS...ClipView"

    if-eqz v1, :cond_1

    const-string v1, "initSrcPic real path is empty, decode by uri stream only."

    .line 171
    invoke-static {v2, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0x2d0

    const/16 v4, 0x500

    invoke-static {v1, v0, p1, v3, v4}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->decodeSampledBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initSrcPic decode failed, uri="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/t4f/debug/Debug;->E(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 182
    :cond_2
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->rotateIfNeeded(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 187
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 192
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 194
    iget-object v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->clipView:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;

    invoke-virtual {v1}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 196
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->minScale:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_4

    goto :goto_0

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 204
    iget-object v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->clipView:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;

    invoke-virtual {v1}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->minScale:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_4

    :goto_0
    move v0, v1

    .line 212
    :cond_4
    iget-object v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 215
    iget-object v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 217
    iget-object v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 219
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    div-float/2addr v5, v4

    float-to-int v0, v5

    .line 222
    iget-object v4, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->matrix:Landroid/graphics/Matrix;

    sub-int/2addr v1, v3

    int-to-float v1, v1

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {v4, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 223
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 224
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 225
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    .line 226
    iput-boolean p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->srcPicLoaded:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    const/4 p1, 0x6

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 p1, 0x0

    .line 318
    iput p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mode:I

    goto/16 :goto_2

    .line 308
    :cond_1
    invoke-direct {p0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->spacing(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->oldDist:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8

    .line 310
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 311
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mid:Landroid/graphics/PointF;

    invoke-direct {p0, v0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 312
    iput v3, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mode:I

    goto/16 :goto_2

    .line 321
    :cond_2
    iget v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mode:I

    if-ne v0, v1, :cond_3

    .line 322
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->start:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->start:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    .line 325
    iget-object v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->clipView:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;

    invoke-virtual {v2}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iput v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mVerticalPadding:F

    .line 326
    iget-object v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 328
    invoke-direct {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->checkBorder()V

    goto/16 :goto_1

    :cond_3
    if-ne v0, v3, :cond_6

    .line 331
    invoke-direct {p0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->spacing(Landroid/view/MotionEvent;)F

    move-result p1

    cmpl-float v0, p1, v2

    if-lez v0, :cond_6

    .line 334
    iget v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->oldDist:F

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    .line 336
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->getScale()F

    move-result v0

    iget v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->minScale:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 337
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 338
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->clipView:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;

    invoke-virtual {v0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mVerticalPadding:F

    .line 339
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mid:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mid:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p1, p1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 341
    :goto_0
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->getScale()F

    move-result p1

    iget v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->minScale:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    .line 344
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->matrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mid:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mid:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const v3, 0x3f8147ae

    invoke-virtual {p1, v3, v3, v0, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    .line 348
    :cond_4
    invoke-direct {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->checkBorder()V

    goto :goto_1

    .line 350
    :cond_5
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->getScale()F

    move-result v0

    iget v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->maxScale:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_6

    .line 351
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 352
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->clipView:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;

    invoke-virtual {v0}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mVerticalPadding:F

    .line 353
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mid:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mid:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p1, p1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 358
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->imageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_2

    .line 301
    :cond_7
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 303
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->start:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 304
    iput v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->mode:I

    :cond_8
    :goto_2
    return v1
.end method

.method public setImageSrc(Landroid/net/Uri;)V
    .locals 2

    .line 137
    iget-boolean v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->srcPicLoaded:Z

    if-eqz v0, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout$1;-><init>(Lcom/t4f/tgs/sdkfileserver/profile/view/ClipViewLayout;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
