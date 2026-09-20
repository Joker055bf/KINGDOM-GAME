.class public Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$SinglePreviewFragment;
.super Landroidx/fragment/app/Fragment;
.source "MultiImagePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SinglePreviewFragment"
.end annotation


# static fields
.field static final KEY_URL:Ljava/lang/String; = "key_url"


# instance fields
.field private imageItem:Lcom/ypx/imagepicker/bean/ImageItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 432
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static newInstance(Lcom/ypx/imagepicker/bean/ImageItem;)Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$SinglePreviewFragment;
    .locals 3

    .line 437
    new-instance v0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$SinglePreviewFragment;

    invoke-direct {v0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$SinglePreviewFragment;-><init>()V

    .line 438
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_url"

    .line 439
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 440
    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$SinglePreviewFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method getControllerView()Lcom/ypx/imagepicker/views/base/PreviewControllerView;
    .locals 1

    .line 455
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$SinglePreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->getControllerView()Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    move-result-object v0

    return-object v0
.end method

.method getPresenter()Lcom/ypx/imagepicker/presenter/IPickerPresenter;
    .locals 1

    .line 459
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$SinglePreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->getPresenter()Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 446
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 447
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$SinglePreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "key_url"

    .line 451
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/bean/ImageItem;

    iput-object p1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$SinglePreviewFragment;->imageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 465
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$SinglePreviewFragment;->getControllerView()Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    move-result-object p1

    iget-object p2, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$SinglePreviewFragment;->imageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$SinglePreviewFragment;->getPresenter()Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    move-result-object p3

    invoke-virtual {p1, p0, p2, p3}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->getItemView(Landroidx/fragment/app/Fragment;Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/presenter/IPickerPresenter;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
