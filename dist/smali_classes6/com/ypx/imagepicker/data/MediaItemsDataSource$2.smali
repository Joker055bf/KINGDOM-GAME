.class Lcom/ypx/imagepicker/data/MediaItemsDataSource$2;
.super Ljava/lang/Object;
.source "MediaItemsDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/data/MediaItemsDataSource;->notifyPreloadItem(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

.field final synthetic val$context:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$imageItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/data/MediaItemsDataSource;Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$2;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    iput-object p2, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$2;->val$context:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$2;->val$imageItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$2;->val$context:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$2;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-static {v0}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$600(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemPreloadProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$2;->val$imageItems:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemPreloadProvider;->providerMediaItems(Ljava/util/ArrayList;)V

    .line 216
    iget-object v0, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$2;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$602(Lcom/ypx/imagepicker/data/MediaItemsDataSource;Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemPreloadProvider;)Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemPreloadProvider;

    return-void
.end method
