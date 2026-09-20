.class Lcom/ypx/imagepicker/ImagePicker$2;
.super Ljava/lang/Object;
.source "ImagePicker.java"

# interfaces
.implements Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$PreviewResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/ImagePicker;->preview(Landroid/app/Activity;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Ljava/util/ArrayList;ILcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lcom/ypx/imagepicker/ImagePicker$2;->val$listener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;Z)V"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/ypx/imagepicker/ImagePicker$2;->val$listener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 227
    instance-of p2, v0, Lcom/ypx/imagepicker/data/OnImagePickCompleteListener2;

    if-eqz p2, :cond_0

    .line 228
    check-cast v0, Lcom/ypx/imagepicker/data/OnImagePickCompleteListener2;

    sget-object p1, Lcom/ypx/imagepicker/bean/PickerError;->CANCEL:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-interface {v0, p1}, Lcom/ypx/imagepicker/data/OnImagePickCompleteListener2;->onPickFailed(Lcom/ypx/imagepicker/bean/PickerError;)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-interface {v0, p1}, Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;->onImagePickComplete(Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method
