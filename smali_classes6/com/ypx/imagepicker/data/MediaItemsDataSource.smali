.class public Lcom/ypx/imagepicker/data/MediaItemsDataSource;
.super Ljava/lang/Object;
.source "MediaItemsDataSource.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemProvider;,
        Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemPreloadProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOADER_ID:I = 0x2


# instance fields
.field private cursor:Landroid/database/Cursor;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderManager:Landroidx/loader/app/LoaderManager;

.field private mediaItemProvider:Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemProvider;

.field private mimeTypeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            ">;"
        }
    .end annotation
.end field

.field private preloadProvider:Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemPreloadProvider;

.field private preloadSize:I

.field private runnable:Ljava/lang/Runnable;

.field private set:Lcom/ypx/imagepicker/bean/ImageSet;


# direct methods
.method private constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/ypx/imagepicker/bean/ImageSet;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x28

    .line 47
    iput v0, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->preloadSize:I

    .line 48
    invoke-static {}, Lcom/ypx/imagepicker/bean/MimeType;->ofAll()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->mimeTypeSet:Ljava/util/Set;

    .line 105
    new-instance v0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$1;

    invoke-direct {v0, p0}, Lcom/ypx/imagepicker/data/MediaItemsDataSource$1;-><init>(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->runnable:Ljava/lang/Runnable;

    .line 77
    iput-object p2, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->set:Lcom/ypx/imagepicker/bean/ImageSet;

    .line 78
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->mContext:Ljava/lang/ref/WeakReference;

    .line 79
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object p1

    iput-object p1, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->mLoaderManager:Landroidx/loader/app/LoaderManager;

    return-void
.end method

.method static synthetic access$000(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->mContext:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Landroid/database/Cursor;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->cursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemProvider;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->mediaItemProvider:Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemProvider;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Landroidx/loader/app/LoaderManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->mLoaderManager:Landroidx/loader/app/LoaderManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ypx/imagepicker/data/MediaItemsDataSource;Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$300(Lcom/ypx/imagepicker/data/MediaItemsDataSource;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ypx/imagepicker/data/MediaItemsDataSource;Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Lcom/ypx/imagepicker/bean/ImageSet;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->set:Lcom/ypx/imagepicker/bean/ImageSet;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemPreloadProvider;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->preloadProvider:Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemPreloadProvider;

    return-object p0
.end method

.method static synthetic access$602(Lcom/ypx/imagepicker/data/MediaItemsDataSource;Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemPreloadProvider;)Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemPreloadProvider;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->preloadProvider:Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemPreloadProvider;

    return-object p1
.end method

.method static synthetic access$700(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->preloadSize:I

    return p0
.end method

.method static synthetic access$800(Lcom/ypx/imagepicker/data/MediaItemsDataSource;Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->notifyPreloadItem(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/ypx/imagepicker/data/MediaItemsDataSource;Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/ImageSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->notifyMediaItem(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/ImageSet;)V

    return-void
.end method

.method public static create(Landroidx/fragment/app/FragmentActivity;Lcom/ypx/imagepicker/bean/ImageSet;)Lcom/ypx/imagepicker/data/MediaItemsDataSource;
    .locals 1

    .line 71
    new-instance v0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-direct {v0, p0, p1}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/ypx/imagepicker/bean/ImageSet;)V

    return-object v0
.end method

.method private getInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 281
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->hasColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 283
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    return v0
.end method

.method private getLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 3

    const-wide/16 v0, 0x0

    .line 268
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->hasColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 270
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    :cond_0
    return-wide v0
.end method

.method private getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 294
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->hasColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 296
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    return-object v0
.end method

.method private hasColumn(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 2

    .line 306
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 310
    :cond_0
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1
.end method

.method private notifyMediaItem(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/ImageSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;",
            "Lcom/ypx/imagepicker/bean/ImageSet;",
            ")V"
        }
    .end annotation

    .line 230
    new-instance v0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ypx/imagepicker/data/MediaItemsDataSource$3;-><init>(Lcom/ypx/imagepicker/data/MediaItemsDataSource;Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/ImageSet;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyPreloadItem(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)V"
        }
    .end annotation

    .line 209
    new-instance v0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/ypx/imagepicker/data/MediaItemsDataSource$2;-><init>(Lcom/ypx/imagepicker/data/MediaItemsDataSource;Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public loadMediaItems(Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemProvider;)V
    .locals 2

    .line 66
    iput-object p1, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->mediaItemProvider:Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemProvider;

    .line 67
    iget-object p1, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->mLoaderManager:Landroidx/loader/app/LoaderManager;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object p1, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 89
    :cond_0
    iget-object p2, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->set:Lcom/ypx/imagepicker/bean/ImageSet;

    iget-object v0, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->mimeTypeSet:Ljava/util/Set;

    invoke-static {p1, p2, v0}, Lcom/ypx/imagepicker/data/MediaItemsLoader;->newInstance(Landroid/content/Context;Lcom/ypx/imagepicker/bean/ImageSet;Ljava/util/Set;)Landroidx/loader/content/CursorLoader;

    move-result-object p1

    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 96
    iget-object p1, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    or-int/2addr p1, v0

    if-nez p1, :cond_3

    .line 97
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 100
    :cond_2
    iput-object p2, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->cursor:Landroid/database/Cursor;

    .line 101
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public preloadSize(I)Lcom/ypx/imagepicker/data/MediaItemsDataSource;
    .locals 0

    .line 61
    iput p1, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->preloadSize:I

    return-object p0
.end method

.method public setMimeTypeSet(Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;)Lcom/ypx/imagepicker/data/MediaItemsDataSource;
    .locals 0

    .line 51
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->getMimeTypes()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->mimeTypeSet:Ljava/util/Set;

    return-object p0
.end method

.method public setMimeTypeSet(Ljava/util/Set;)Lcom/ypx/imagepicker/data/MediaItemsDataSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            ">;)",
            "Lcom/ypx/imagepicker/data/MediaItemsDataSource;"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->mimeTypeSet:Ljava/util/Set;

    return-object p0
.end method

.method public setPreloadProvider(Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemPreloadProvider;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->preloadProvider:Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemPreloadProvider;

    return-void
.end method
