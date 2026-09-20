.class Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity$1;
.super Ljava/lang/Object;
.source "MultiImagePickerActivity.java"

# interfaces
.implements Lcom/ypx/imagepicker/data/OnImagePickCompleteListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->setFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity$1;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImagePickComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)V"
        }
    .end annotation

    .line 130
    invoke-static {p1}, Lcom/ypx/imagepicker/ImagePicker;->closePickerWithCallback(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onPickFailed(Lcom/ypx/imagepicker/bean/PickerError;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity$1;->this$0:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result p1

    invoke-static {v0, p1}, Lcom/ypx/imagepicker/helper/PickerErrorExecutor;->executeError(Landroid/app/Activity;I)V

    .line 125
    invoke-static {}, Lcom/ypx/imagepicker/activity/PickerActivityManager;->clear()V

    return-void
.end method
