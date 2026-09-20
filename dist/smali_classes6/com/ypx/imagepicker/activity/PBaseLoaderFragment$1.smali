.class Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$1;
.super Ljava/lang/Object;
.source "PBaseLoaderFragment.java"

# interfaces
.implements Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->takePhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$1;->this$0:Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImagePickComplete(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$1;->this$0:Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-virtual {v1, p1}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->onTakePhotoResult(Lcom/ypx/imagepicker/bean/ImageItem;)V

    :cond_0
    return-void
.end method
