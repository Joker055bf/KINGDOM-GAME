.class Lcom/ypx/imagepicker/ImagePicker$1;
.super Ljava/lang/Object;
.source "ImagePicker.java"

# interfaces
.implements Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/ImagePicker;->takePhotoAndCrop(Landroid/app/Activity;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$cropConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;

.field final synthetic val$listener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

.field final synthetic val$presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/ypx/imagepicker/ImagePicker$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ypx/imagepicker/ImagePicker$1;->val$presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    iput-object p3, p0, Lcom/ypx/imagepicker/ImagePicker$1;->val$cropConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;

    iput-object p4, p0, Lcom/ypx/imagepicker/ImagePicker$1;->val$listener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImagePickComplete(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/ypx/imagepicker/ImagePicker$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ypx/imagepicker/ImagePicker$1;->val$presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    iget-object v2, p0, Lcom/ypx/imagepicker/ImagePicker$1;->val$cropConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/bean/ImageItem;

    iget-object v3, p0, Lcom/ypx/imagepicker/ImagePicker$1;->val$listener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->intentCrop(Landroid/app/Activity;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V

    :cond_0
    return-void
.end method
