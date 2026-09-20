.class public Lcom/t4f/anim/loader/DefaultVideoContentLoader;
.super Ljava/lang/Object;
.source "DefaultVideoContentLoader.java"

# interfaces
.implements Lcom/t4f/anim/loader/VideoContentLoader;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultVideoContentLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Landroid/content/Context;Lcom/t4f/anim/source/MediaSource;)Landroid/net/Uri;
    .locals 9

    const-string v0, "DefaultVideoContentLoader"

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 28
    :try_start_0
    sget-object v4, Lcom/t4f/anim/loader/DefaultVideoContentLoader$1;->$SwitchMap$com$t4f$anim$source$MediaSource$SourceType:[I

    invoke-virtual {p2}, Lcom/t4f/anim/source/MediaSource;->getSourceType()Lcom/t4f/anim/source/MediaSource$SourceType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/t4f/anim/source/MediaSource$SourceType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v3, :cond_4

    const/4 v5, 0x3

    if-eq v4, v1, :cond_2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 56
    invoke-virtual {p2}, Lcom/t4f/anim/source/MediaSource;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/t4f/anim/util/ExternalFilesResolver;->resolveFileInExternalFiles(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 57
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "load(EXTERNAL_FILES): file=%s, uri=%s"

    new-array v6, v1, [Ljava/lang/Object;

    .line 58
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v4, "unsupported source type: %s"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/t4f/anim/source/MediaSource;->getSourceType()Lcom/t4f/anim/source/MediaSource$SourceType;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_1
    invoke-virtual {p2}, Lcom/t4f/anim/source/MediaSource;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v4, "load(FILE): uri=%s"

    new-array v5, v3, [Ljava/lang/Object;

    .line 52
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 36
    :cond_2
    invoke-virtual {p2}, Lcom/t4f/anim/source/MediaSource;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "raw"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v4, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    .line 41
    new-instance v7, Landroid/net/Uri$Builder;

    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    const-string v8, "android.resource"

    .line 42
    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 44
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    const-string v7, "load(RAW): name=%s, id=%s, uri=%s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v2

    .line 46
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 39
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v5, "the raw resource does not exist: %s"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_4
    invoke-virtual {p2}, Lcom/t4f/anim/source/MediaSource;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/t4f/anim/util/AssetCopyUtil;->copyAssetToCache(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "load(ASSET): file=%s, uri=%s"

    new-array v6, v1, [Ljava/lang/Object;

    .line 32
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception p1

    new-array v1, v1, [Ljava/lang/Object;

    .line 65
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v4, "Failed to load video Uri from source: %s, error=%s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_5

    .line 67
    check-cast p1, Ljava/lang/IllegalArgumentException;

    throw p1

    .line 69
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    const-string p2, "load video uri failed: %s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 25
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context or source is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
