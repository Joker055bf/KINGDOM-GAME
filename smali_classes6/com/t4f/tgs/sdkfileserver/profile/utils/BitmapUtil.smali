.class public Lcom/t4f/tgs/sdkfileserver/profile/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4

    .line 229
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 230
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p2, :cond_1

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v1, v0

    int-to-float v2, p2

    div-float/2addr v1, v2

    .line 234
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v2, p0

    int-to-float v3, p1

    div-float/2addr v2, v3

    .line 235
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    mul-int/2addr p0, v0

    int-to-float p0, p0

    mul-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    :goto_2
    mul-int p2, v1, v1

    int-to-float p2, p2

    div-float p2, p0, p2

    cmpl-float p2, p2, p1

    if-lez p2, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return v1
.end method

.method static compressImage(Landroid/content/Context;Landroid/net/Uri;FFLandroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap$Config;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7

    .line 188
    invoke-virtual {p4}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p7

    move-object v3, p1

    move-object v5, p8

    move-object/from16 v6, p9

    invoke-static/range {v1 .. v6}, Lcom/t4f/tgs/sdkfileserver/profile/utils/BitmapUtil;->generateFilePath(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 190
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p5

    .line 192
    :try_start_1
    invoke-static {p0, p1, p2, p3, p5}, Lcom/t4f/tgs/sdkfileserver/profile/utils/BitmapUtil;->getScaledBitmap(Landroid/content/Context;Landroid/net/Uri;FFLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, p4

    move v4, p6

    .line 194
    invoke-virtual {v0, p4, p6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 198
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 202
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 208
    :catch_2
    :cond_1
    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :goto_2
    if-eqz v2, :cond_2

    .line 202
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 206
    :catch_3
    :cond_2
    throw v0
.end method

.method private static generateFilePath(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 213
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 215
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 218
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p4, ""

    .line 220
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, p2}, Lcom/t4f/tgs/sdkfileserver/profile/utils/FileUtil;->getFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/FileUtil;->splitFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 221
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getScaledBitmap(Landroid/content/Context;Landroid/net/Uri;FFLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 17

    move/from16 v1, p2

    move/from16 v2, p3

    .line 50
    invoke-static/range {p0 .. p1}, Lcom/t4f/tgs/sdkfileserver/profile/utils/FileUtil;->getRealPathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 53
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    .line 57
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 58
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 62
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-static {v0, v7, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 64
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 72
    :cond_0
    :goto_0
    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 73
    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v0, -0x1

    if-eq v8, v0, :cond_1

    if-ne v9, v0, :cond_2

    .line 77
    :cond_1
    :try_start_1
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v10, "ImageLength"

    .line 78
    invoke-virtual {v0, v10, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v8

    const-string v10, "ImageWidth"

    .line 79
    invoke-virtual {v0, v10, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    if-lez v9, :cond_3

    if-gtz v8, :cond_4

    .line 86
    :cond_3
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 88
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 89
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    :cond_4
    int-to-float v0, v9

    int-to-float v10, v8

    div-float v11, v0, v10

    div-float v12, v1, v2

    cmpl-float v13, v10, v2

    if-gtz v13, :cond_5

    cmpl-float v13, v0, v1

    if-lez v13, :cond_8

    :cond_5
    cmpg-float v8, v11, v12

    if-gez v8, :cond_6

    div-float v1, v2, v10

    mul-float/2addr v1, v0

    float-to-int v9, v1

    float-to-int v8, v2

    goto :goto_3

    :cond_6
    cmpl-float v8, v11, v12

    if-lez v8, :cond_7

    div-float v0, v1, v0

    mul-float/2addr v0, v10

    float-to-int v8, v0

    goto :goto_2

    :cond_7
    float-to-int v8, v2

    :goto_2
    float-to-int v9, v1

    .line 115
    :cond_8
    :goto_3
    invoke-static {v4, v9, v8}, Lcom/t4f/tgs/sdkfileserver/profile/utils/BitmapUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 118
    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 121
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 122
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 123
    iput-object v0, v4, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 127
    :try_start_2
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4

    if-nez v6, :cond_9

    .line 131
    :try_start_3
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-static {v0, v7, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 133
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    :catch_3
    move-exception v0

    .line 135
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :cond_9
    :goto_4
    if-lez v8, :cond_e

    if-gtz v9, :cond_a

    goto/16 :goto_7

    :cond_a
    move-object/from16 v2, p4

    .line 146
    :try_start_5
    invoke-static {v9, v8, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 148
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :goto_5
    int-to-float v0, v9

    .line 151
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, v8

    .line 152
    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 154
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    const/4 v5, 0x0

    .line 155
    invoke-virtual {v4, v0, v2, v5, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 157
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 158
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 159
    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, v6, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 164
    :try_start_6
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v2, "Orientation"

    .line 165
    invoke-virtual {v0, v2, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 166
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    const/high16 v0, 0x42b40000    # 90.0f

    .line 168
    invoke-virtual {v15, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_6

    :cond_b
    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    const/high16 v0, 0x43340000    # 180.0f

    .line 170
    invoke-virtual {v15, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_6

    :cond_c
    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    const/high16 v0, 0x43870000    # 270.0f

    .line 172
    invoke-virtual {v15, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_d
    :goto_6
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 175
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v16, 0x1

    move-object v10, v7

    .line 174
    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_7
    return-object v7
.end method
