.class public abstract Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;
.super Landroidx/fragment/app/Fragment;
.source "PBaseLoaderFragment.java"

# interfaces
.implements Lcom/ypx/imagepicker/data/ICameraExecutor;


# instance fields
.field protected bottomBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

.field private lastTime:J

.field protected selectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field protected titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->selectList:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 544
    iput-wide v0, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->lastTime:J

    return-void
.end method

.method private isOverMaxCount()Z
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getSelectConfig()Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->getMaxCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getPresenter()Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getSelectConfig()Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->getMaxCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->overMaxCountTip(Landroid/content/Context;I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected addItemInImageSets(Ljava/util/List;Ljava/util/List;Lcom/ypx/imagepicker/bean/ImageItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ypx/imagepicker/bean/ImageSet;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 495
    invoke-interface {p2, v0, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 496
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 498
    invoke-virtual {p3}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/ypx/imagepicker/R$string;->picker_str_folder_item_video:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/ypx/imagepicker/R$string;->picker_str_folder_item_image:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 503
    :goto_0
    invoke-static {v0}, Lcom/ypx/imagepicker/bean/ImageSet;->allImageSet(Ljava/lang/String;)Lcom/ypx/imagepicker/bean/ImageSet;

    move-result-object v0

    .line 504
    iput-object p3, v0, Lcom/ypx/imagepicker/bean/ImageSet;->cover:Lcom/ypx/imagepicker/bean/ImageItem;

    .line 505
    iget-object p3, p3, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    iput-object p3, v0, Lcom/ypx/imagepicker/bean/ImageSet;->coverPath:Ljava/lang/String;

    .line 506
    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, v0, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    .line 507
    iget-object p2, v0, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, v0, Lcom/ypx/imagepicker/bean/ImageSet;->count:I

    .line 508
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 510
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ypx/imagepicker/bean/ImageSet;

    move-object v2, p2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v1, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    .line 511
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ypx/imagepicker/bean/ImageSet;

    iput-object p3, v1, Lcom/ypx/imagepicker/bean/ImageSet;->cover:Lcom/ypx/imagepicker/bean/ImageItem;

    .line 512
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ypx/imagepicker/bean/ImageSet;

    iget-object p3, p3, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    iput-object p3, v1, Lcom/ypx/imagepicker/bean/ImageSet;->coverPath:Ljava/lang/String;

    .line 513
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/bean/ImageSet;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p1, Lcom/ypx/imagepicker/bean/ImageSet;->count:I

    :goto_1
    return-void
.end method

.method protected checkTakePhotoOrVideo()V
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getSelectConfig()Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getSelectConfig()Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->takeVideo()V

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->takePhoto()V

    :goto_0
    return-void
.end method

.method protected controllerViewOnImageSetSelected(Lcom/ypx/imagepicker/bean/ImageSet;)V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->onImageSetSelected(Lcom/ypx/imagepicker/bean/ImageSet;)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->bottomBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->onImageSetSelected(Lcom/ypx/imagepicker/bean/ImageSet;)V

    :cond_1
    return-void
.end method

.method protected controllerViewOnTransitImageSet(Z)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->onTransitImageSet(Z)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->bottomBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->onTransitImageSet(Z)V

    :cond_1
    return-void
.end method

.method public final dp(F)I
    .locals 4

    .line 537
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 540
    :cond_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p1, v0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract getPresenter()Lcom/ypx/imagepicker/presenter/IPickerPresenter;
.end method

.method protected abstract getSelectConfig()Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;
.end method

.method protected abstract getUiConfig()Lcom/ypx/imagepicker/views/PickerUiConfig;
.end method

.method protected getWeakActivity()Landroid/app/Activity;
    .locals 2

    .line 523
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->weakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 525
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->weakReference:Ljava/lang/ref/WeakReference;

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected inflateControllerView(Landroid/view/ViewGroup;ZLcom/ypx/imagepicker/views/PickerUiConfig;)Lcom/ypx/imagepicker/views/base/PickerControllerView;
    .locals 2

    .line 338
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getSelectConfig()Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    .line 339
    invoke-virtual {p3}, Lcom/ypx/imagepicker/views/PickerUiConfig;->getPickerUiProvider()Lcom/ypx/imagepicker/views/PickerUiProvider;

    move-result-object p3

    if-eqz p2, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getWeakActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/ypx/imagepicker/views/PickerUiProvider;->getTitleBar(Landroid/content/Context;)Lcom/ypx/imagepicker/views/base/PickerControllerView;

    move-result-object p2

    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getWeakActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/ypx/imagepicker/views/PickerUiProvider;->getBottomBar(Landroid/content/Context;)Lcom/ypx/imagepicker/views/base/PickerControllerView;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_3

    .line 342
    invoke-virtual {p2}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->isAddInParent()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 343
    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    new-instance p1, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$$ExternalSyntheticLambda0;-><init>(Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;)V

    .line 366
    invoke-virtual {p2}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->getCanClickToCompleteView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 367
    invoke-virtual {p2}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->getCanClickToCompleteView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    :cond_1
    invoke-virtual {p2}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->getCanClickToToggleFolderListView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 371
    invoke-virtual {p2}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->getCanClickToToggleFolderListView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    :cond_2
    invoke-virtual {p2}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->getCanClickToIntentPreviewView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 375
    invoke-virtual {p2}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->getCanClickToIntentPreviewView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-object p2
.end method

.method protected abstract intentPreview(ZI)V
.end method

.method protected interceptClickDisableItem(IZ)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    return v0

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getPresenter()Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getSelectConfig()Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/ypx/imagepicker/bean/PickerItemDisableCode;->getMessageFormCode(Landroid/content/Context;ILcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;)Ljava/lang/String;

    move-result-object p1

    .line 475
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 476
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getPresenter()Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    move-result-object p2

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getWeakActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->tip(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method synthetic lambda$inflateControllerView$1$com-ypx-imagepicker-activity-PBaseLoaderFragment(Landroid/view/View;)V
    .locals 0

    .line 358
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->notifyPickerComplete()V

    return-void
.end method

.method synthetic lambda$onRequestPermissionsResult$0$com-ypx-imagepicker-activity-PBaseLoaderFragment(Landroid/view/View;)V
    .locals 0

    .line 310
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ypx/imagepicker/utils/PPermissionUtils;->create(Landroid/content/Context;)Lcom/ypx/imagepicker/utils/PPermissionUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ypx/imagepicker/utils/PPermissionUtils;->gotoPermissionSet()V

    return-void
.end method

.method protected abstract loadMediaItemsComplete(Lcom/ypx/imagepicker/bean/ImageSet;)V
.end method

.method protected loadMediaItemsFromSet(Lcom/ypx/imagepicker/bean/ImageSet;)V
    .locals 8

    .line 232
    iget-object v0, p1, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->loadMediaItemsComplete(Lcom/ypx/imagepicker/bean/ImageSet;)V

    goto :goto_2

    .line 234
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageSet;->isAllMedia()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p1, Lcom/ypx/imagepicker/bean/ImageSet;->count:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_2

    .line 235
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getPresenter()Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getWeakActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/ypx/imagepicker/data/ProgressSceneEnum;->loadMediaItem:Lcom/ypx/imagepicker/data/ProgressSceneEnum;

    invoke-interface {v0, v1, v2}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->showProgressDialog(Landroid/app/Activity;Lcom/ypx/imagepicker/data/ProgressSceneEnum;)Landroid/content/DialogInterface;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 238
    :goto_1
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getSelectConfig()Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    move-result-object v1

    .line 240
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->getMimeTypes()Ljava/util/Set;

    move-result-object v4

    const/16 v5, 0x28

    new-instance v6, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$3;

    invoke-direct {v6, p0, v0, p1}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$3;-><init>(Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;Landroid/content/DialogInterface;Lcom/ypx/imagepicker/bean/ImageSet;)V

    new-instance v7, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$4;

    invoke-direct {v7, p0, v0, p1, v1}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$4;-><init>(Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;Landroid/content/DialogInterface;Lcom/ypx/imagepicker/bean/ImageSet;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;)V

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/ypx/imagepicker/ImagePicker;->provideMediaItemsFromSetWithPreload(Landroidx/fragment/app/FragmentActivity;Lcom/ypx/imagepicker/bean/ImageSet;Ljava/util/Set;ILcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemPreloadProvider;Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemProvider;)V

    :goto_2
    return-void
.end method

.method protected loadMediaSets(Z)V
    .locals 2

    .line 205
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x21

    if-ge p1, v0, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getSelectConfig()Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->getMimeTypes()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$$ExternalSyntheticLambda2;-><init>(Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;)V

    invoke-static {p1, v0, v1}, Lcom/ypx/imagepicker/ImagePicker;->provideMediaSets(Landroidx/fragment/app/FragmentActivity;Ljava/util/Set;Lcom/ypx/imagepicker/data/MediaSetsDataSource$MediaSetProvider;)V

    goto :goto_0

    .line 213
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt p1, v1, :cond_2

    .line 215
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getSelectConfig()Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->getMimeTypes()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$$ExternalSyntheticLambda2;-><init>(Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;)V

    invoke-static {p1, v0, v1}, Lcom/ypx/imagepicker/ImagePicker;->provideMediaSets(Landroidx/fragment/app/FragmentActivity;Ljava/util/Set;Lcom/ypx/imagepicker/data/MediaSetsDataSource$MediaSetProvider;)V

    goto :goto_0

    .line 216
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_3

    .line 218
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getSelectConfig()Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->getMimeTypes()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$$ExternalSyntheticLambda2;-><init>(Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;)V

    invoke-static {p1, v0, v1}, Lcom/ypx/imagepicker/ImagePicker;->provideMediaSets(Landroidx/fragment/app/FragmentActivity;Ljava/util/Set;Lcom/ypx/imagepicker/data/MediaSetsDataSource$MediaSetProvider;)V

    goto :goto_0

    .line 221
    :cond_3
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getSelectConfig()Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->getMimeTypes()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$$ExternalSyntheticLambda2;-><init>(Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;)V

    invoke-static {p1, v0, v1}, Lcom/ypx/imagepicker/ImagePicker;->provideMediaSets(Landroidx/fragment/app/FragmentActivity;Ljava/util/Set;Lcom/ypx/imagepicker/data/MediaSetsDataSource$MediaSetProvider;)V

    :goto_0
    return-void
.end method

.method protected abstract loadMediaSetsComplete(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ypx/imagepicker/bean/ImageSet;",
            ">;)V"
        }
    .end annotation
.end method

.method protected notifyOnSingleImagePickComplete(Lcom/ypx/imagepicker/bean/ImageItem;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->notifyPickerComplete()V

    return-void
.end method

.method protected abstract notifyPickerComplete()V
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDoubleClick()Z
    .locals 4

    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->lastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 553
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->lastTime:J

    xor-int/2addr v0, v1

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 10

    const-string v0, "refused_storage_permission"

    const-string v1, "PermissionRecordPreference"

    const/16 v2, 0x597

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    .line 272
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v3

    if-nez v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->takePhoto()V

    goto/16 :goto_3

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ypx/imagepicker/utils/PPermissionUtils;->create(Landroid/content/Context;)Lcom/ypx/imagepicker/utils/PPermissionUtils;

    move-result-object v0

    sget v1, Lcom/ypx/imagepicker/R$string;->picker_str_camera_permission:I

    .line 277
    invoke-virtual {p0, v1}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/utils/PPermissionUtils;->showSetPermissionDialog(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    const/16 v2, 0x598

    if-ne p1, v2, :cond_8

    .line 282
    array-length v2, p3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lez v2, :cond_5

    .line 283
    array-length v2, p2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_2

    move v2, v3

    .line 286
    :goto_0
    array-length v6, p2

    if-ge v2, v6, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    :cond_2
    array-length v2, p2

    if-ne v2, v4, :cond_4

    .line 290
    aget v2, p3, v3

    if-eqz v2, :cond_3

    aget v2, p3, v5

    if-nez v2, :cond_5

    :cond_3
    :goto_1
    move v2, v5

    goto :goto_2

    .line 293
    :cond_4
    aget v2, p3, v3

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    move v2, v3

    :goto_2
    if-eqz v2, :cond_6

    .line 299
    invoke-virtual {p0, v5}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->loadMediaSets(Z)V

    goto/16 :goto_3

    .line 301
    :cond_6
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->refuseStoragePermissionCallback()V

    .line 303
    :try_start_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v6, Lcom/ypx/imagepicker/R$string;->picker_str_storage_refuse_tip1:I

    invoke-static {v2, v6, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v2

    .line 304
    invoke-virtual {v2}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v6

    .line 305
    sget v7, Lcom/google/android/material/R$id;->snackbar_text:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/4 v8, 0x5

    .line 306
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    const/high16 v8, 0x41800000    # 16.0f

    .line 307
    invoke-virtual {v7, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 308
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 309
    sget v7, Lcom/ypx/imagepicker/R$string;->picker_str_storage_refuse_tip2:I

    invoke-virtual {v2, v7}, Lcom/google/android/material/snackbar/Snackbar;->setText(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 310
    sget v7, Lcom/ypx/imagepicker/R$string;->picker_str_storage_refuse_button_text:I

    new-instance v9, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$$ExternalSyntheticLambda1;-><init>(Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;)V

    invoke-virtual {v2, v7, v9}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    const-string v7, "#038CF4"

    .line 311
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 312
    sget v7, Lcom/google/android/material/R$id;->snackbar_action:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 313
    invoke-virtual {v6, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 315
    :cond_7
    invoke-virtual {v2}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 316
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 318
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 322
    :cond_8
    :goto_3
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected abstract refreshAllVideoSet(Lcom/ypx/imagepicker/bean/ImageSet;)V
.end method

.method protected refreshCompleteState()V
    .locals 3

    .line 414
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    if-eqz v0, :cond_0

    .line 415
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getSelectConfig()Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->refreshCompleteViewState(Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;)V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->bottomBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    if-eqz v0, :cond_1

    .line 419
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getSelectConfig()Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->refreshCompleteViewState(Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;)V

    :cond_1
    return-void
.end method

.method protected abstract refuseStoragePermissionCallback()V
.end method

.method protected setFolderListHeight(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Z)V
    .locals 7

    .line 431
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 432
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 433
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getUiConfig()Lcom/ypx/imagepicker/views/PickerUiConfig;

    move-result-object v2

    .line 434
    invoke-virtual {v2}, Lcom/ypx/imagepicker/views/PickerUiConfig;->getFolderListOpenMaxMargin()I

    move-result v3

    .line 435
    invoke-virtual {v2}, Lcom/ypx/imagepicker/views/PickerUiConfig;->getFolderListOpenDirection()I

    move-result v2

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-ne v2, v4, :cond_5

    const/16 v2, 0xc

    .line 436
    invoke-virtual {v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-eqz p3, :cond_4

    .line 438
    iget-object p3, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->bottomBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->getViewHeight()I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, v6

    :goto_0
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 439
    iget-object p3, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->getViewHeight()I

    move-result p3

    goto :goto_1

    :cond_1
    move p3, v6

    :goto_1
    add-int/2addr p3, v3

    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 440
    iget-object p3, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->getViewHeight()I

    move-result p3

    goto :goto_2

    :cond_2
    move p3, v6

    :goto_2
    iput p3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 441
    iget-object p3, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->bottomBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->getViewHeight()I

    move-result v6

    :cond_3
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_6

    .line 443
    :cond_4
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 444
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_6

    :cond_5
    const/16 v2, 0xa

    .line 447
    invoke-virtual {v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-eqz p3, :cond_a

    .line 449
    iget-object p3, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->bottomBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->getViewHeight()I

    move-result p3

    goto :goto_3

    :cond_6
    move p3, v6

    :goto_3
    add-int/2addr v3, p3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 450
    iget-object p3, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->getViewHeight()I

    move-result p3

    goto :goto_4

    :cond_7
    move p3, v6

    :goto_4
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 451
    iget-object p3, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->getViewHeight()I

    move-result p3

    goto :goto_5

    :cond_8
    move p3, v6

    :goto_5
    iput p3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 452
    iget-object p3, p0, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->bottomBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->getViewHeight()I

    move-result v6

    :cond_9
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_6

    .line 454
    :cond_a
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 455
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 458
    :goto_6
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected setStatusBar()V
    .locals 4

    .line 561
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 563
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getUiConfig()Lcom/ypx/imagepicker/views/PickerUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ypx/imagepicker/views/PickerUiConfig;->isShowStatusBar()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ypx/imagepicker/utils/PStatusBarUtil;->hasNotchInScreen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ypx/imagepicker/utils/PStatusBarUtil;->fullScreen(Landroid/app/Activity;)V

    goto :goto_1

    .line 564
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getUiConfig()Lcom/ypx/imagepicker/views/PickerUiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ypx/imagepicker/views/PickerUiConfig;->getStatusBarColor()I

    move-result v1

    .line 565
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getUiConfig()Lcom/ypx/imagepicker/views/PickerUiConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ypx/imagepicker/views/PickerUiConfig;->getStatusBarColor()I

    move-result v2

    invoke-static {v2}, Lcom/ypx/imagepicker/utils/PStatusBarUtil;->isDarkColor(I)Z

    move-result v2

    const/4 v3, 0x0

    .line 564
    invoke-static {v0, v1, v3, v2}, Lcom/ypx/imagepicker/utils/PStatusBarUtil;->setStatusBar(Landroid/app/Activity;IZZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public takePhoto()V
    .locals 4

    .line 163
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->isOverMaxCount()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x597

    invoke-virtual {p0, v0, v1}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$1;

    invoke-direct {v1, p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$1;-><init>(Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/ypx/imagepicker/ImagePicker;->takePhoto(Landroid/app/Activity;Ljava/lang/String;ZLcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public takeVideo()V
    .locals 8

    .line 183
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->isOverMaxCount()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x597

    invoke-virtual {p0, v0, v1}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getSelectConfig()Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->getMaxVideoDuration()J

    move-result-wide v4

    const/4 v6, 0x1

    new-instance v7, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$2;

    invoke-direct {v7, p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment$2;-><init>(Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;)V

    invoke-static/range {v2 .. v7}, Lcom/ypx/imagepicker/ImagePicker;->takeVideo(Landroid/app/Activity;Ljava/lang/String;JZLcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected tip(Ljava/lang/String;)V
    .locals 2

    .line 533
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getPresenter()Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->getWeakActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->tip(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract toggleFolderList()V
.end method
