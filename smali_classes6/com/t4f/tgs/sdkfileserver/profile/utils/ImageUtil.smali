.class public Lcom/t4f/tgs/sdkfileserver/profile/utils/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    .line 88
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 89
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-gt v0, p2, :cond_0

    if-le p0, p1, :cond_1

    .line 92
    :cond_0
    div-int/lit8 v0, v0, 0x2

    .line 93
    div-int/lit8 p0, p0, 0x2

    .line 96
    :goto_0
    div-int v2, v0, v1

    if-le v2, p2, :cond_1

    div-int v2, p0, v1

    if-le v2, p1, :cond_1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;Ljava/lang/String;II)I
    .locals 3

    .line 52
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 53
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-ne p0, v2, :cond_1

    .line 56
    :cond_0
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "ImageLength"

    .line 57
    invoke-virtual {v2, p1, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    const-string p1, "ImageWidth"

    .line 58
    invoke-virtual {v2, p1, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    if-gt v0, p3, :cond_2

    if-le p0, p2, :cond_3

    .line 65
    :cond_2
    div-int/lit8 v0, v0, 0x2

    .line 66
    div-int/lit8 p0, p0, 0x2

    .line 69
    :goto_1
    div-int p1, v0, v1

    if-le p1, p3, :cond_3

    div-int p1, p0, v1

    if-le p1, p2, :cond_3

    mul-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_3
    return v1
.end method

.method private static createScaleBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 0

    .line 134
    rem-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 p3, 0x0

    .line 141
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p0, p1, :cond_2

    .line 143
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-object p1
.end method

.method public static decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 157
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 158
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 159
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 160
    invoke-static {v0, p0, p1, p2}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ImageUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 161
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 162
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 163
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p0, p1, p2, v0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ImageUtil;->createScaleBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 2

    .line 114
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 115
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 116
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 117
    invoke-static {v0, p2, p3}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ImageUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 119
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 120
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 121
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p0, p2, p3, p1}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ImageUtil;->createScaleBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static deleteTempFile(Ljava/lang/String;)V
    .locals 1

    .line 171
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method
