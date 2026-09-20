.class Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$4;
.super Ljava/lang/Object;
.source "MultiImagePickerFragment.java"

# interfaces
.implements Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$PreviewResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->intentPreview(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$4;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 525
    iget-object p2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$4;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-virtual {p2, p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->reloadPickerWithList(Ljava/util/List;)V

    goto :goto_0

    .line 527
    :cond_0
    iget-object p2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$4;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-static {p2}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->access$800(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 528
    iget-object p2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$4;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-static {p2}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->access$900(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 529
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$4;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-static {p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->access$700(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->notifyDataSetChanged()V

    .line 530
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$4;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->notifyPickerComplete()V

    :goto_0
    return-void
.end method
