.class public Lcom/ypx/imagepicker/data/PickerActivityCallBack;
.super Ljava/lang/Object;
.source "PickerActivityCallBack.java"

# interfaces
.implements Lcom/ypx/imagepicker/helper/launcher/PLauncher$Callback;


# instance fields
.field private listener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;


# direct methods
.method private constructor <init>(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/ypx/imagepicker/data/PickerActivityCallBack;->listener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

    return-void
.end method

.method public static create(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)Lcom/ypx/imagepicker/data/PickerActivityCallBack;
    .locals 1

    .line 20
    new-instance v0, Lcom/ypx/imagepicker/data/PickerActivityCallBack;

    invoke-direct {v0, p0}, Lcom/ypx/imagepicker/data/PickerActivityCallBack;-><init>(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V

    return-object v0
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/ypx/imagepicker/data/PickerActivityCallBack;->listener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

    if-eqz v0, :cond_0

    const/16 v0, 0x599

    if-ne p1, v0, :cond_0

    const-string v0, "pickerResult"

    .line 31
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 33
    iget-object p2, p0, Lcom/ypx/imagepicker/data/PickerActivityCallBack;->listener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

    invoke-interface {p2, p1}, Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;->onImagePickComplete(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object p2, p0, Lcom/ypx/imagepicker/data/PickerActivityCallBack;->listener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

    instance-of p2, p2, Lcom/ypx/imagepicker/data/OnImagePickCompleteListener2;

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    .line 36
    sget-object p1, Lcom/ypx/imagepicker/bean/PickerError;->CANCEL:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result p1

    .line 38
    :cond_1
    iget-object p2, p0, Lcom/ypx/imagepicker/data/PickerActivityCallBack;->listener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

    check-cast p2, Lcom/ypx/imagepicker/data/OnImagePickCompleteListener2;

    invoke-static {p1}, Lcom/ypx/imagepicker/bean/PickerError;->valueOf(I)Lcom/ypx/imagepicker/bean/PickerError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ypx/imagepicker/data/OnImagePickCompleteListener2;->onPickFailed(Lcom/ypx/imagepicker/bean/PickerError;)V

    :cond_2
    :goto_0
    return-void
.end method
