.class Lcom/ypx/imagepicker/data/MediaItemsDataSource$3;
.super Ljava/lang/Object;
.source "MediaItemsDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/data/MediaItemsDataSource;->notifyMediaItem(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/ImageSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

.field final synthetic val$allVideoSet:Lcom/ypx/imagepicker/bean/ImageSet;

.field final synthetic val$context:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$imageItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/data/MediaItemsDataSource;Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/ImageSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$3;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    iput-object p2, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$3;->val$context:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$3;->val$imageItems:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$3;->val$allVideoSet:Lcom/ypx/imagepicker/bean/ImageSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$3;->val$context:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$3;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-static {v0}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$1000(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$3;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-static {v0}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$1000(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$3;->val$imageItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$3;->val$allVideoSet:Lcom/ypx/imagepicker/bean/ImageSet;

    invoke-interface {v0, v1, v2}, Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemProvider;->providerMediaItems(Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/ImageSet;)V

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$3;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-static {v0}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$1100(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$3;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-static {v0}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$1100(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    :cond_2
    return-void
.end method
