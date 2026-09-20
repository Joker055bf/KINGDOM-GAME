.class public Lcom/tgs/aics/utils/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/utils/ImageLoader$ImageLoadTask;
    }
.end annotation


# instance fields
.field private mCaches:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-int v0, v0

    .line 27
    div-int/lit8 v0, v0, 0x4

    .line 29
    new-instance v1, Lcom/tgs/aics/utils/ImageLoader$1;

    invoke-direct {v1, p0, v0}, Lcom/tgs/aics/utils/ImageLoader$1;-><init>(Lcom/tgs/aics/utils/ImageLoader;I)V

    iput-object v1, p0, Lcom/tgs/aics/utils/ImageLoader;->mCaches:Landroid/util/LruCache;

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/utils/ImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/tgs/aics/utils/ImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/tgs/aics/utils/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/utils/ImageLoader;->addBitmap2Cache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private addBitmap2Cache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/tgs/aics/utils/ImageLoader;->mCaches:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/tgs/aics/utils/ImageLoader;->mCaches:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    .line 92
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 94
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 96
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 105
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v1, v0

    .line 101
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v0, :cond_0

    goto :goto_2

    :catch_3
    move-exception p1

    move-object v1, v0

    .line 99
    :goto_1
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 105
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_0
    move-object v0, v1

    :catch_5
    :cond_1
    :goto_3
    return-object v0

    :goto_4
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 109
    :catch_6
    :cond_2
    throw p1
.end method


# virtual methods
.method public load(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/tgs/aics/utils/ImageLoader;->mCaches:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/tgs/aics/utils/ImageLoader$ImageLoadTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/tgs/aics/utils/ImageLoader$ImageLoadTask;-><init>(Lcom/tgs/aics/utils/ImageLoader;Landroid/widget/ImageView;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    invoke-virtual {v0, p1}, Lcom/tgs/aics/utils/ImageLoader$ImageLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
