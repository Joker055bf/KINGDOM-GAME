.class Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$3;
.super Ljava/lang/Object;
.source "MultiImagePickerFragment.java"

# interfaces
.implements Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->intentCrop(Lcom/ypx/imagepicker/bean/ImageItem;)V
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

    .line 499
    iput-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$3;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImagePickComplete(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)V"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$3;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-static {v0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->access$500(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 503
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$3;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-static {v0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->access$600(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 504
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$3;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-static {p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->access$700(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;)Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->notifyDataSetChanged()V

    .line 505
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment$3;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->notifyPickerComplete()V

    return-void
.end method
