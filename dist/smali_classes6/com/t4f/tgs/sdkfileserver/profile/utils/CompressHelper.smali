.class public Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;
.super Ljava/lang/Object;
.source "CompressHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper$Builder;
    }
.end annotation


# static fields
.field private static volatile INSTANCE:Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;


# instance fields
.field private bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private context:Landroid/content/Context;

.field private destinationDirectoryPath:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private fileNamePrefix:Ljava/lang/String;

.field private maxHeight:F

.field private maxWidth:F

.field private quality:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x44340000    # 720.0f

    .line 40
    iput v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->maxWidth:F

    const/high16 v0, 0x44700000    # 960.0f

    .line 44
    iput v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->maxHeight:F

    .line 48
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 53
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    const/16 v0, 0x50

    .line 57
    iput v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->quality:I

    .line 84
    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->context:Landroid/content/Context;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "CompressHelper"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->destinationDirectoryPath:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$102(Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;F)F
    .locals 0

    .line 33
    iput p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->maxWidth:F

    return p1
.end method

.method static synthetic access$202(Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;F)F
    .locals 0

    .line 33
    iput p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->maxHeight:F

    return p1
.end method

.method static synthetic access$302(Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;Landroid/graphics/Bitmap$CompressFormat;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object p1
.end method

.method static synthetic access$402(Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object p1
.end method

.method static synthetic access$502(Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->quality:I

    return p1
.end method

.method static synthetic access$602(Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->destinationDirectoryPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->fileNamePrefix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->fileName:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;
    .locals 2

    .line 72
    sget-object v0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->INSTANCE:Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;

    if-nez v0, :cond_1

    .line 73
    const-class v0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->INSTANCE:Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;

    invoke-direct {v1, p0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->INSTANCE:Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;

    .line 77
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 79
    :cond_1
    :goto_0
    sget-object p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->INSTANCE:Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;

    return-object p0
.end method


# virtual methods
.method public compressToBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iget v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->maxWidth:F

    iget v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->maxHeight:F

    iget-object v3, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/t4f/tgs/sdkfileserver/profile/utils/BitmapUtil;->getScaledBitmap(Landroid/content/Context;Landroid/net/Uri;FFLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public compressToFile(Ljava/io/File;)Ljava/io/File;
    .locals 10

    .line 94
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->maxWidth:F

    iget v3, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->maxHeight:F

    iget-object v4, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v5, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    iget v6, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->quality:I

    iget-object v7, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->destinationDirectoryPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->fileNamePrefix:Ljava/lang/String;

    iget-object v9, p0, Lcom/t4f/tgs/sdkfileserver/profile/utils/CompressHelper;->fileName:Ljava/lang/String;

    invoke-static/range {v0 .. v9}, Lcom/t4f/tgs/sdkfileserver/profile/utils/BitmapUtil;->compressImage(Landroid/content/Context;Landroid/net/Uri;FFLandroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap$Config;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
