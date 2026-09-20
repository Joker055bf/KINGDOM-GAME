.class public Lcom/ypx/imagepicker/helper/PickerErrorExecutor;
.super Ljava/lang/Object;
.source "PickerErrorExecutor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeError(Landroid/app/Activity;I)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static executeError(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;I)V
    .locals 1

    .line 22
    instance-of v0, p0, Lcom/ypx/imagepicker/data/OnImagePickCompleteListener2;

    if-eqz v0, :cond_0

    .line 23
    check-cast p0, Lcom/ypx/imagepicker/data/OnImagePickCompleteListener2;

    invoke-static {p1}, Lcom/ypx/imagepicker/bean/PickerError;->valueOf(I)Lcom/ypx/imagepicker/bean/PickerError;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/ypx/imagepicker/data/OnImagePickCompleteListener2;->onPickFailed(Lcom/ypx/imagepicker/bean/PickerError;)V

    :cond_0
    return-void
.end method
