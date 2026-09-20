.class Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$3;
.super Ljava/lang/Object;
.source "PBaseLoaderFragment.java"

# interfaces
.implements Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemPreloadProvider;


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

.field final synthetic val$set:Lcom/ypx/imagepicker/bean/ImageSet;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;Landroid/content/DialogInterface;Lcom/ypx/imagepicker/bean/ImageSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 241
    iput-object p1, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$3;->this$0:Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;

    iput-object p2, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$3;->val$finalDialogInterface:Landroid/content/DialogInterface;

    iput-object p3, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$3;->val$set:Lcom/ypx/imagepicker/bean/ImageSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providerMediaItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)V"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$3;->val$finalDialogInterface:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$3;->val$set:Lcom/ypx/imagepicker/bean/ImageSet;

    iput-object p1, v0, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    .line 248
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$3;->this$0:Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$3;->val$set:Lcom/ypx/imagepicker/bean/ImageSet;

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->loadMediaItemsComplete(Lcom/ypx/imagepicker/bean/ImageSet;)V

    return-void
.end method
