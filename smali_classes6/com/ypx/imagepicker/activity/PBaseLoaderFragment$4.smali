.class Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$4;
.super Ljava/lang/Object;
.source "PBaseLoaderFragment.java"

# interfaces
.implements Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->loadMediaItemsFromSet(Lcom/ypx/imagepicker/bean/ImageSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;

.field final synthetic val$finalDialogInterface:Landroid/content/DialogInterface;

.field final synthetic val$selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

.field final synthetic val$set:Lcom/ypx/imagepicker/bean/ImageSet;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;Landroid/content/DialogInterface;Lcom/ypx/imagepicker/bean/ImageSet;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 250
    iput-object p1, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$4;->this$0:Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;

    iput-object p2, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$4;->val$finalDialogInterface:Landroid/content/DialogInterface;

    iput-object p3, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$4;->val$set:Lcom/ypx/imagepicker/bean/ImageSet;

    iput-object p4, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$4;->val$selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providerMediaItems(Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/ImageSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;",
            "Lcom/ypx/imagepicker/bean/ImageSet;",
            ")V"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$4;->val$finalDialogInterface:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 254
    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$4;->val$set:Lcom/ypx/imagepicker/bean/ImageSet;

    iput-object p1, v0, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    .line 257
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$4;->this$0:Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$4;->val$set:Lcom/ypx/imagepicker/bean/ImageSet;

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->loadMediaItemsComplete(Lcom/ypx/imagepicker/bean/ImageSet;)V

    .line 258
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$4;->val$selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowImage()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$4;->val$selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowVideo()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 259
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$4;->this$0:Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;

    invoke-virtual {p1, p2}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->refreshAllVideoSet(Lcom/ypx/imagepicker/bean/ImageSet;)V

    :cond_1
    return-void
.end method
