.class public Lcom/ypx/imagepicker/data/MediaSetsDataSource;
.super Ljava/lang/Object;
.source "MediaSetsDataSource.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ypx/imagepicker/data/MediaSetsDataSource$MediaSetProvider;
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
.field private static final LOADER_ID:I = 0x1


# instance fields
.field private isLoadImage:Z

.field private isLoadVideo:Z

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

.field private mediaSetProvider:Lcom/ypx/imagepicker/data/MediaSetsDataSource$MediaSetProvider;

.field private mimeTypeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/ypx/imagepicker/bean/MimeType;->ofAll()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->mimeTypeSet:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->mContext:Ljava/lang/ref/WeakReference;

    .line 73
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object p1

    iput-object p1, p0, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->mLoaderManager:Landroidx/loader/app/LoaderManager;

    return-void
.end method

.method public static create(Landroidx/fragment/app/FragmentActivity;)Lcom/ypx/imagepicker/data/MediaSetsDataSource;
    .locals 1

    .line 68
    new-instance v0, Lcom/ypx/imagepicker/data/MediaSetsDataSource;

    invoke-direct {v0, p0}, Lcom/ypx/imagepicker/data/MediaSetsDataSource;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    return-object v0
.end method

.method private getInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->hasColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 123
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->hasColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 132
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private hasColumn(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 2

    .line 139
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 143
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


# virtual methods
.method public loadMediaSets(Lcom/ypx/imagepicker/data/MediaSetsDataSource$MediaSetProvider;)V
    .locals 2

    .line 63
    iput-object p1, p0, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->mediaSetProvider:Lcom/ypx/imagepicker/data/MediaSetsDataSource$MediaSetProvider;

    .line 64
    iget-object p1, p0, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->mLoaderManager:Landroidx/loader/app/LoaderManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 2
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

    .line 79
    iget-object p1, p0, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 80
    iget-object p2, p0, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->mimeTypeSet:Ljava/util/Set;

    iget-boolean v0, p0, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->isLoadVideo:Z

    iget-boolean v1, p0, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->isLoadImage:Z

    invoke-static {p1, p2, v0, v1}, Lcom/ypx/imagepicker/data/MediaSetsLoader;->create(Landroid/content/Context;Ljava/util/Set;ZZ)Landroidx/loader/content/CursorLoader;

    move-result-object p1

    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 3
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

    .line 85
    iget-object p1, p0, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    if-nez p1, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    :cond_1
    new-instance v1, Lcom/ypx/imagepicker/bean/ImageSet;

    invoke-direct {v1}, Lcom/ypx/imagepicker/bean/ImageSet;-><init>()V

    const-string v2, "bucket_id"

    .line 93
    invoke-direct {p0, p2, v2}, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ypx/imagepicker/bean/ImageSet;->id:Ljava/lang/String;

    const-string v2, "bucket_display_name"

    .line 94
    invoke-direct {p0, p2, v2}, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ypx/imagepicker/bean/ImageSet;->name:Ljava/lang/String;

    const-string v2, "uri"

    .line 95
    invoke-direct {p0, p2, v2}, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ypx/imagepicker/bean/ImageSet;->coverPath:Ljava/lang/String;

    const-string v2, "count"

    .line 96
    invoke-direct {p0, p2, v2}, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/ypx/imagepicker/bean/ImageSet;->count:I

    .line 97
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->mediaSetProvider:Lcom/ypx/imagepicker/data/MediaSetsDataSource$MediaSetProvider;

    if-eqz p1, :cond_3

    .line 102
    invoke-interface {p1, v0}, Lcom/ypx/imagepicker/data/MediaSetsDataSource$MediaSetProvider;->providerMediaSets(Ljava/util/ArrayList;)V

    .line 105
    :cond_3
    iget-object p1, p0, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->mLoaderManager:Landroidx/loader/app/LoaderManager;

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    .line 106
    invoke-virtual {p1, p2}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    :cond_4
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

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

.method public setMimeTypeSet(Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;)Lcom/ypx/imagepicker/data/MediaSetsDataSource;
    .locals 1

    .line 43
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowImage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->isLoadImage:Z

    .line 44
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowVideo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->isLoadVideo:Z

    .line 45
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->getMimeTypes()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->mimeTypeSet:Ljava/util/Set;

    return-object p0
.end method

.method public setMimeTypeSet(Ljava/util/Set;)Lcom/ypx/imagepicker/data/MediaSetsDataSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            ">;)",
            "Lcom/ypx/imagepicker/data/MediaSetsDataSource;"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->mimeTypeSet:Ljava/util/Set;

    .line 51
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ypx/imagepicker/bean/MimeType;

    .line 52
    invoke-static {}, Lcom/ypx/imagepicker/bean/MimeType;->ofVideo()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 53
    iput-boolean v2, p0, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->isLoadVideo:Z

    .line 55
    :cond_1
    invoke-static {}, Lcom/ypx/imagepicker/bean/MimeType;->ofImage()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iput-boolean v2, p0, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->isLoadImage:Z

    goto :goto_0

    :cond_2
    return-object p0
.end method
