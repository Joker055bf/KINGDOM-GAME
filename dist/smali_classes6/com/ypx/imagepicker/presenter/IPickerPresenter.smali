.class public interface abstract Lcom/ypx/imagepicker/presenter/IPickerPresenter;
.super Ljava/lang/Object;
.source "IPickerPresenter.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract displayImage(Landroid/view/View;Lcom/ypx/imagepicker/bean/ImageItem;IZ)V
.end method

.method public abstract getUiConfig(Landroid/content/Context;)Lcom/ypx/imagepicker/views/PickerUiConfig;
.end method

.method public abstract interceptCameraClick(Landroid/app/Activity;Lcom/ypx/imagepicker/data/ICameraExecutor;)Z
.end method

.method public abstract interceptItemClick(Landroid/app/Activity;Lcom/ypx/imagepicker/bean/ImageItem;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;Lcom/ypx/imagepicker/adapter/PickerItemAdapter;ZLcom/ypx/imagepicker/data/IReloadExecutor;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;",
            "Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;",
            "Lcom/ypx/imagepicker/adapter/PickerItemAdapter;",
            "Z",
            "Lcom/ypx/imagepicker/data/IReloadExecutor;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract interceptPickerCancel(Landroid/app/Activity;Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract interceptPickerCompleteClick(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;",
            "Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract overMaxCountTip(Landroid/content/Context;I)V
.end method

.method public abstract showProgressDialog(Landroid/app/Activity;Lcom/ypx/imagepicker/data/ProgressSceneEnum;)Landroid/content/DialogInterface;
.end method

.method public abstract tip(Landroid/content/Context;Ljava/lang/String;)V
.end method
