.class public Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;
.super Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;
.source "MultiImageCropFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$FolderSelectResult;
.implements Lcom/ypx/imagepicker/adapter/PickerItemAdapter$OnActionResult;


# instance fields
.field private bottomBarContainer:Landroid/widget/FrameLayout;

.field private cropMode:I

.field private cropViewContainerHelper:Lcom/ypx/imagepicker/helper/CropViewContainerHelper;

.field private currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

.field private folderAdapter:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;

.field private imageGridAdapter:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

.field private imageItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private imageListener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

.field private imageSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ypx/imagepicker/bean/ImageSet;",
            ">;"
        }
    .end annotation
.end field

.field private lastPressItem:Lcom/ypx/imagepicker/bean/ImageItem;

.field private mContentView:Landroid/view/View;

.field private mCropContainer:Landroid/widget/FrameLayout;

.field private mCropLayout:Landroid/widget/RelativeLayout;

.field private mCropSize:I

.field private mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

.field private mFolderListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mGridImageRecyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

.field private mImageSetMasker:Landroid/view/View;

.field private mInvisibleContainer:Landroid/widget/LinearLayout;

.field private mTvFullOrGap:Landroid/widget/TextView;

.field private maskView:Landroid/view/View;

.field private presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

.field private pressImageIndex:I

.field private selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

.field private stateBtn:Landroid/widget/ImageButton;

.field private titleBarContainer:Landroid/widget/FrameLayout;

.field private titleBarContainer2:Landroid/widget/FrameLayout;

.field private touchHelper:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

.field private uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

.field private videoViewContainerHelper:Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageSets:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageItems:Ljava/util/List;

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->pressImageIndex:I

    .line 84
    sget v0, Lcom/ypx/imagepicker/bean/ImageCropMode;->CropViewScale_FULL:I

    iput v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->cropMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->checkStateBtn()V

    return-void
.end method

.method static synthetic access$100(Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->resetCropViewSize(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->titleBarContainer2:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->titleBarContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private addImageItemToCropViewList(Lcom/ypx/imagepicker/bean/ImageItem;)V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->cropViewContainerHelper:Lcom/ypx/imagepicker/helper/CropViewContainerHelper;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {v0, v1, p1}, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->addCropView(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Lcom/ypx/imagepicker/bean/ImageItem;)V

    .line 432
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->refreshCompleteState()V

    return-void
.end method

.method private checkStateBtn()V
    .locals 4

    .line 449
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->stateBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mTvFullOrGap:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/ImageItem;->getWidthHeightType()I

    move-result v0

    if-nez v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->stateBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mTvFullOrGap:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->hasFirstImageItem()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 462
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->stateBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->isAssignGapState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 464
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    .line 465
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ypx/imagepicker/bean/ImageItem;

    iget-object v3, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-virtual {v0, v3}, Lcom/ypx/imagepicker/bean/ImageItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mTvFullOrGap:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/ImageItem;->getCropMode()I

    move-result v0

    sget v1, Lcom/ypx/imagepicker/bean/ImageCropMode;->ImageScale_GAP:I

    if-ne v0, v1, :cond_3

    .line 470
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 471
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setBackgroundColor(I)V

    goto :goto_1

    .line 473
    :cond_3
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 474
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {v0, v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setBackgroundColor(I)V

    goto :goto_1

    .line 466
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->setImageScaleState()V

    goto :goto_1

    .line 478
    :cond_5
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->setImageScaleState()V

    :goto_1
    return-void

    .line 484
    :cond_6
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 486
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    iget-object v3, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_7

    .line 487
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->stateBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mTvFullOrGap:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 490
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    iget v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->cropMode:I

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/bean/ImageItem;->setCropMode(I)V

    goto :goto_2

    .line 493
    :cond_7
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->stateBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 494
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->setImageScaleState()V

    goto :goto_2

    .line 497
    :cond_8
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->stateBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mTvFullOrGap:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private fullOrFit()V
    .locals 8

    .line 534
    iget v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->cropMode:I

    sget v1, Lcom/ypx/imagepicker/bean/ImageCropMode;->CropViewScale_FIT:I

    if-ne v0, v1, :cond_0

    .line 535
    sget v0, Lcom/ypx/imagepicker/bean/ImageCropMode;->CropViewScale_FULL:I

    iput v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->cropMode:I

    .line 536
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->stateBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    invoke-virtual {v2}, Lcom/ypx/imagepicker/views/PickerUiConfig;->getFitIconID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 538
    :cond_0
    sget v0, Lcom/ypx/imagepicker/bean/ImageCropMode;->CropViewScale_FIT:I

    iput v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->cropMode:I

    .line 539
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->stateBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    invoke-virtual {v2}, Lcom/ypx/imagepicker/views/PickerUiConfig;->getFullIconID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 541
    :goto_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    if-eqz v0, :cond_1

    .line 542
    iget v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->cropMode:I

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/bean/ImageItem;->setCropMode(I)V

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 546
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->resetCropViewSize(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Z)V

    .line 548
    iget-object v2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->cropViewContainerHelper:Lcom/ypx/imagepicker/helper/CropViewContainerHelper;

    iget-object v3, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    iget-object v4, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mInvisibleContainer:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->cropMode:I

    sget v6, Lcom/ypx/imagepicker/bean/ImageCropMode;->CropViewScale_FIT:I

    if-ne v0, v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    move v6, v1

    new-instance v7, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment$2;

    invoke-direct {v7, p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment$2;-><init>(Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;)V

    invoke-virtual/range {v2 .. v7}, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->refreshAllState(Lcom/ypx/imagepicker/bean/ImageItem;Ljava/util/List;Landroid/view/ViewGroup;ZLcom/ypx/imagepicker/helper/CropViewContainerHelper$ResetSizeExecutor;)V

    return-void
.end method

.method private fullOrGap()V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/ImageItem;->getCropMode()I

    move-result v0

    sget v1, Lcom/ypx/imagepicker/bean/ImageCropMode;->ImageScale_FILL:I

    if-ne v0, v1, :cond_0

    .line 592
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    sget v1, Lcom/ypx/imagepicker/bean/ImageCropMode;->ImageScale_GAP:I

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/bean/ImageItem;->setCropMode(I)V

    .line 593
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 594
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->gapState()V

    goto :goto_0

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    sget v1, Lcom/ypx/imagepicker/bean/ImageCropMode;->ImageScale_FILL:I

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/bean/ImageItem;->setCropMode(I)V

    .line 598
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 599
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->fullState()V

    .line 601
    :goto_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->resetCropViewSize(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Z)V

    return-void
.end method

.method private fullState()V
    .locals 3

    .line 618
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mTvFullOrGap:Landroid/widget/TextView;

    sget v1, Lcom/ypx/imagepicker/R$string;->picker_str_redBook_gap:I

    invoke-virtual {p0, v1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setBackgroundColor(I)V

    .line 620
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mTvFullOrGap:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    .line 621
    invoke-virtual {v2}, Lcom/ypx/imagepicker/views/PickerUiConfig;->getGapIconID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    .line 620
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private gapState()V
    .locals 3

    .line 608
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mTvFullOrGap:Landroid/widget/TextView;

    sget v1, Lcom/ypx/imagepicker/R$string;->picker_str_redBook_full:I

    invoke-virtual {p0, v1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setBackgroundColor(I)V

    .line 610
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mTvFullOrGap:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    .line 611
    invoke-virtual {v2}, Lcom/ypx/imagepicker/views/PickerUiConfig;->getFillIconID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    .line 610
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private getCanPressItemPosition()I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 733
    :goto_0
    iget-object v2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 734
    iget-object v2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ypx/imagepicker/bean/ImageItem;

    .line 735
    invoke-virtual {v2}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v3}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->isVideoSinglePickAndAutoComplete()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 738
    :cond_0
    iget-object v3, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    iget-object v4, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    invoke-static {v2, v3, v4, v0}, Lcom/ypx/imagepicker/bean/PickerItemDisableCode;->getItemDisableCode(Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;Ljava/util/ArrayList;Z)I

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private initGridImagesAndImageSets()V
    .locals 8

    .line 232
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v2}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->getColumnCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 233
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mGridImageRecyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    invoke-virtual {v1, v0}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 234
    new-instance v0, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    iget-object v3, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageItems:Ljava/util/List;

    iget-object v5, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    iget-object v6, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    iget-object v7, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/List;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/views/PickerUiConfig;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageGridAdapter:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    const/4 v1, 0x1

    .line 235
    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->setHasStableIds(Z)V

    .line 236
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mGridImageRecyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageGridAdapter:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 238
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mFolderListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 239
    new-instance v0, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    iget-object v2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    invoke-direct {v0, v1, v2}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;-><init>(Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/views/PickerUiConfig;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->folderAdapter:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;

    .line 240
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mFolderListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 241
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->folderAdapter:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageSets:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->refreshData(Ljava/util/List;)V

    .line 242
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mFolderListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->folderAdapter:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;

    invoke-virtual {v0, p0}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->setFolderSelectResult(Lcom/ypx/imagepicker/adapter/PickerFolderAdapter$FolderSelectResult;)V

    .line 244
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageGridAdapter:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    invoke-virtual {v0, p0}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->setOnActionResult(Lcom/ypx/imagepicker/adapter/PickerItemAdapter$OnActionResult;)V

    return-void
.end method

.method private initUI()V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->titleBarContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->inflateControllerView(Landroid/view/ViewGroup;ZLcom/ypx/imagepicker/views/PickerUiConfig;)Lcom/ypx/imagepicker/views/base/PickerControllerView;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    .line 208
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->bottomBarContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->inflateControllerView(Landroid/view/ViewGroup;ZLcom/ypx/imagepicker/views/PickerUiConfig;)Lcom/ypx/imagepicker/views/base/PickerControllerView;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->bottomBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    .line 210
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->getViewHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ypx/imagepicker/utils/PViewSizeUtils;->setMarginTop(Landroid/view/View;I)V

    .line 212
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->touchHelper:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->getViewHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->setStickHeight(I)Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->bottomBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mGridImageRecyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->bottomBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->getViewHeight()I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/ypx/imagepicker/utils/PViewSizeUtils;->setMarginTopAndBottom(Landroid/view/View;II)V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/views/PickerUiConfig;->getCropViewBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 220
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mGridImageRecyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/views/PickerUiConfig;->getPickerBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/TouchRecyclerView;->setBackgroundColor(I)V

    .line 221
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->stateBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    invoke-virtual {v3}, Lcom/ypx/imagepicker/views/PickerUiConfig;->getFullIconID()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mTvFullOrGap:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    .line 223
    invoke-virtual {v3}, Lcom/ypx/imagepicker/views/PickerUiConfig;->getFillIconID()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x0

    .line 222
    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mFolderListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mImageSetMasker:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->setFolderListHeight(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Z)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mContentView:Landroid/view/View;

    sget v1, Lcom/ypx/imagepicker/R$id;->titleBarContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->titleBarContainer:Landroid/widget/FrameLayout;

    .line 160
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mContentView:Landroid/view/View;

    sget v1, Lcom/ypx/imagepicker/R$id;->titleBarContainer2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->titleBarContainer2:Landroid/widget/FrameLayout;

    .line 161
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mContentView:Landroid/view/View;

    sget v1, Lcom/ypx/imagepicker/R$id;->bottomBarContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->bottomBarContainer:Landroid/widget/FrameLayout;

    .line 162
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mContentView:Landroid/view/View;

    sget v1, Lcom/ypx/imagepicker/R$id;->mTvFullOrGap:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mTvFullOrGap:Landroid/widget/TextView;

    .line 163
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mContentView:Landroid/view/View;

    sget v1, Lcom/ypx/imagepicker/R$id;->mImageSetMasker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mImageSetMasker:Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mContentView:Landroid/view/View;

    sget v1, Lcom/ypx/imagepicker/R$id;->v_mask:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->maskView:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mContentView:Landroid/view/View;

    sget v1, Lcom/ypx/imagepicker/R$id;->mCroupContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropContainer:Landroid/widget/FrameLayout;

    .line 166
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mContentView:Landroid/view/View;

    sget v1, Lcom/ypx/imagepicker/R$id;->mInvisibleContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mInvisibleContainer:Landroid/widget/LinearLayout;

    .line 167
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mContentView:Landroid/view/View;

    sget v1, Lcom/ypx/imagepicker/R$id;->topView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 168
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mContentView:Landroid/view/View;

    sget v2, Lcom/ypx/imagepicker/R$id;->mCropLayout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropLayout:Landroid/widget/RelativeLayout;

    .line 169
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mContentView:Landroid/view/View;

    sget v2, Lcom/ypx/imagepicker/R$id;->stateBtn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->stateBtn:Landroid/widget/ImageButton;

    .line 170
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mContentView:Landroid/view/View;

    sget v2, Lcom/ypx/imagepicker/R$id;->mRecyclerView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    iput-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mGridImageRecyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    .line 171
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mContentView:Landroid/view/View;

    sget v2, Lcom/ypx/imagepicker/R$id;->mImageSetRecyclerView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mFolderListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 172
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mTvFullOrGap:Landroid/widget/TextView;

    const-string v2, "#80000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {p0, v3}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->stateBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->maskView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mImageSetMasker:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mTvFullOrGap:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 181
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->maskView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 182
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->maskView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 184
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ypx/imagepicker/utils/PViewSizeUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropSize:I

    .line 185
    iget-object v2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropLayout:Landroid/widget/RelativeLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v1, v3}, Lcom/ypx/imagepicker/utils/PViewSizeUtils;->setViewSize(Landroid/view/View;IF)V

    .line 187
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mGridImageRecyclerView:Lcom/ypx/imagepicker/widget/TouchRecyclerView;

    invoke-static {v1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->create(Lcom/ypx/imagepicker/widget/TouchRecyclerView;)Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    move-result-object v1

    .line 188
    invoke-virtual {v1, v0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->setTopView(Landroid/view/View;)Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->maskView:Landroid/view/View;

    .line 189
    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->setMaskView(Landroid/view/View;)Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    move-result-object v0

    iget v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropSize:I

    .line 190
    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->setCanScrollHeight(I)Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->build()Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->touchHelper:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    .line 193
    new-instance v0, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropContainer:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->cropViewContainerHelper:Lcom/ypx/imagepicker/helper/CropViewContainerHelper;

    .line 195
    new-instance v0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;

    invoke-direct {v0}, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->videoViewContainerHelper:Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;

    .line 197
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->hasFirstImageItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->getFirstImageItem()Lcom/ypx/imagepicker/bean/ImageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/ImageItem;->getCropMode()I

    move-result v0

    iput v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->cropMode:I

    :cond_0
    return-void
.end method

.method private isIntentDataValid()Z
    .locals 3

    .line 137
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ICropPickerBindPresenter"

    .line 139
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    iput-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    const-string v1, "selectConfig"

    .line 140
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageListener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

    sget-object v2, Lcom/ypx/imagepicker/bean/PickerError;->PRESENTER_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {v2}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/ypx/imagepicker/helper/PickerErrorExecutor;->executeError(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;I)V

    return v1

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    if-nez v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageListener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

    sget-object v2, Lcom/ypx/imagepicker/bean/PickerError;->SELECT_CONFIG_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {v2}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/ypx/imagepicker/helper/PickerErrorExecutor;->executeError(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;I)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private isInterceptItemClick(Lcom/ypx/imagepicker/bean/ImageItem;Z)Z
    .locals 10

    .line 310
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageGridAdapter:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->isPreformClick()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getWeakActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageItems:Ljava/util/List;

    move-object v5, v0

    check-cast v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    iget-object v7, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageGridAdapter:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    const/4 v9, 0x0

    move-object v3, p1

    move v8, p2

    invoke-interface/range {v1 .. v9}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->interceptItemClick(Landroid/app/Activity;Lcom/ypx/imagepicker/bean/ImageItem;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;Lcom/ypx/imagepicker/adapter/PickerItemAdapter;ZLcom/ypx/imagepicker/data/IReloadExecutor;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private loadCropView()V
    .locals 6

    .line 414
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->cropViewContainerHelper:Lcom/ypx/imagepicker/helper/CropViewContainerHelper;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    iget v3, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropSize:I

    iget-object v4, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    new-instance v5, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment$1;

    invoke-direct {v5, p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment$1;-><init>(Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;)V

    invoke-virtual/range {v0 .. v5}, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->loadCropView(Landroid/content/Context;Lcom/ypx/imagepicker/bean/ImageItem;ILcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/helper/CropViewContainerHelper$onLoadComplete;)Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    const/4 v1, 0x0

    .line 421
    invoke-direct {p0, v0, v1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->resetCropViewSize(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Z)V

    return-void
.end method

.method private onPressImage(Lcom/ypx/imagepicker/bean/ImageItem;Z)V
    .locals 5

    .line 321
    iput-object p1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    .line 322
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->lastPressItem:Lcom/ypx/imagepicker/bean/ImageItem;

    if-eqz v0, :cond_1

    .line 324
    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/ImageItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->lastPressItem:Lcom/ypx/imagepicker/bean/ImageItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/bean/ImageItem;->setPress(Z)V

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/bean/ImageItem;->setPress(Z)V

    .line 332
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 333
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->isVideoSinglePickAndAutoComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->notifyOnSingleImagePickComplete(Lcom/ypx/imagepicker/bean/ImageItem;)V

    return-void

    .line 338
    :cond_2
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->videoViewContainerHelper:Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    iget-object v3, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    iget-object v4, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->loadVideoView(Landroid/view/ViewGroup;Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/views/PickerUiConfig;)V

    goto :goto_0

    .line 341
    :cond_3
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->loadCropView()V

    .line 343
    :goto_0
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->checkStateBtn()V

    .line 344
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageGridAdapter:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->notifyDataSetChanged()V

    .line 345
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->touchHelper:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    iget v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->pressImageIndex:I

    invoke-virtual {p1, v1, v0, p2}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->transitTopWithAnim(ZIZ)V

    .line 346
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    iput-object p1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->lastPressItem:Lcom/ypx/imagepicker/bean/ImageItem;

    return-void
.end method

.method private removeImageItemFromCropViewList(Lcom/ypx/imagepicker/bean/ImageItem;)V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 440
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->cropViewContainerHelper:Lcom/ypx/imagepicker/helper/CropViewContainerHelper;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->removeCropView(Lcom/ypx/imagepicker/bean/ImageItem;)V

    .line 441
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->refreshCompleteState()V

    return-void
.end method

.method private resetCropViewSize(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Z)V
    .locals 3

    .line 506
    iget v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropSize:I

    .line 508
    iget v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->cropMode:I

    sget v2, Lcom/ypx/imagepicker/bean/ImageCropMode;->CropViewScale_FIT:I

    if-ne v1, v2, :cond_4

    .line 511
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->hasFirstImageItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->getFirstImageItem()Lcom/ypx/imagepicker/bean/ImageItem;

    move-result-object v0

    goto :goto_0

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ypx/imagepicker/bean/ImageItem;

    goto :goto_0

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    .line 522
    :goto_0
    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/ImageItem;->getWidthHeightType()I

    move-result v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropSize:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropSize:I

    .line 524
    :goto_1
    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/ImageItem;->getWidthHeightType()I

    move-result v0

    if-gez v0, :cond_3

    iget v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropSize:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropSize:I

    goto :goto_2

    :cond_4
    move v1, v0

    .line 526
    :goto_2
    invoke-virtual {p1, p2, v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->changeSize(ZII)V

    return-void
.end method

.method private selectImageSet(IZ)V
    .locals 3

    .line 389
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/bean/ImageSet;

    if-nez p1, :cond_0

    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ypx/imagepicker/bean/ImageSet;

    const/4 v2, 0x0

    .line 394
    iput-boolean v2, v1, Lcom/ypx/imagepicker/bean/ImageSet;->isSelected:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 396
    iput-boolean v0, p1, Lcom/ypx/imagepicker/bean/ImageSet;->isSelected:Z

    .line 397
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->folderAdapter:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->notifyDataSetChanged()V

    .line 398
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->titleBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->onImageSetSelected(Lcom/ypx/imagepicker/bean/ImageSet;)V

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->bottomBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    if-eqz v0, :cond_3

    .line 402
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->bottomBar:Lcom/ypx/imagepicker/views/base/PickerControllerView;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/views/base/PickerControllerView;->onImageSetSelected(Lcom/ypx/imagepicker/bean/ImageSet;)V

    :cond_3
    if-eqz p2, :cond_4

    .line 405
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->toggleFolderList()V

    .line 407
    :cond_4
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->loadMediaItemsFromSet(Lcom/ypx/imagepicker/bean/ImageSet;)V

    return-void
.end method

.method private setImageScaleState()V
    .locals 2

    .line 564
    iget v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->cropMode:I

    sget v1, Lcom/ypx/imagepicker/bean/ImageCropMode;->CropViewScale_FIT:I

    if-ne v0, v1, :cond_0

    .line 566
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mTvFullOrGap:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mTvFullOrGap:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 571
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 572
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/ImageItem;->getCropMode()I

    move-result v0

    sget v1, Lcom/ypx/imagepicker/bean/ImageCropMode;->ImageScale_FILL:I

    if-ne v0, v1, :cond_1

    .line 573
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->fullState()V

    goto :goto_0

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/ImageItem;->getCropMode()I

    move-result v0

    sget v1, Lcom/ypx/imagepicker/bean/ImageCropMode;->ImageScale_GAP:I

    if-ne v0, v1, :cond_3

    .line 575
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->gapState()V

    goto :goto_0

    .line 579
    :cond_2
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->fullState()V

    .line 580
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    sget v1, Lcom/ypx/imagepicker/bean/ImageCropMode;->ImageScale_FILL:I

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/bean/ImageItem;->setCropMode(I)V

    .line 581
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public folderSelected(Lcom/ypx/imagepicker/bean/ImageSet;I)V
    .locals 0

    const/4 p1, 0x1

    .line 380
    invoke-direct {p0, p2, p1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectImageSet(IZ)V

    return-void
.end method

.method protected getPresenter()Lcom/ypx/imagepicker/presenter/IPickerPresenter;
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    return-object v0
.end method

.method protected getSelectConfig()Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    return-object v0
.end method

.method protected getUiConfig()Lcom/ypx/imagepicker/views/PickerUiConfig;
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    return-object v0
.end method

.method protected intentPreview(ZI)V
    .locals 0

    return-void
.end method

.method protected loadMediaItemsComplete(Lcom/ypx/imagepicker/bean/ImageSet;)V
    .locals 2

    .line 716
    iget-object v0, p1, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 717
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 718
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageItems:Ljava/util/List;

    iget-object p1, p1, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 719
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageGridAdapter:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->notifyDataSetChanged()V

    .line 720
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getCanPressItemPosition()I

    move-result p1

    if-gez p1, :cond_0

    return-void

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->isShowCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 725
    :goto_0
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/bean/ImageItem;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->onClickItem(Lcom/ypx/imagepicker/bean/ImageItem;II)V

    :cond_2
    return-void
.end method

.method protected loadMediaSetsComplete(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ypx/imagepicker/bean/ImageSet;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 704
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ypx/imagepicker/bean/ImageSet;

    iget v0, v0, Lcom/ypx/imagepicker/bean/ImageSet;->count:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 709
    :cond_0
    iput-object p1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageSets:Ljava/util/List;

    .line 710
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->folderAdapter:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->refreshData(Ljava/util/List;)V

    .line 711
    invoke-direct {p0, v2, v2}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectImageSet(IZ)V

    return-void

    .line 706
    :cond_1
    :goto_0
    sget p1, Lcom/ypx/imagepicker/R$string;->picker_str_tip_media_empty:I

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->tip(Ljava/lang/String;)V

    return-void
.end method

.method protected notifyPickerComplete()V
    .locals 4

    .line 631
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    .line 639
    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    .line 640
    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mCropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    .line 641
    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-nez v0, :cond_3

    .line 642
    :cond_2
    sget v0, Lcom/ypx/imagepicker/R$string;->picker_str_tip_shield:I

    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->tip(Ljava/lang/String;)V

    return-void

    .line 645
    :cond_3
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->cropViewContainerHelper:Lcom/ypx/imagepicker/helper/CropViewContainerHelper;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->cropMode:I

    invoke-virtual {v0, v1, v2}, Lcom/ypx/imagepicker/helper/CropViewContainerHelper;->generateCropUrls(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    .line 649
    :goto_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getWeakActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-interface {v0, v1, v2, v3}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->interceptPickerCompleteClick(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 650
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageListener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

    if-eqz v0, :cond_4

    .line 651
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;->onImagePickComplete(Ljava/util/ArrayList;)V

    :cond_4
    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .line 763
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mFolderListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->toggleFolderList()V

    return v1

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getWeakActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    invoke-interface {v0, v2, v3}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->interceptPickerCancel(Landroid/app/Activity;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageListener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

    sget-object v1, Lcom/ypx/imagepicker/bean/PickerError;->CANCEL:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ypx/imagepicker/helper/PickerErrorExecutor;->executeError(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;I)V

    const/4 v0, 0x0

    return v0
.end method

.method public onCheckItem(Lcom/ypx/imagepicker/bean/ImageItem;I)V
    .locals 1

    const/4 v0, 0x1

    .line 358
    invoke-virtual {p0, p2, v0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->interceptClickDisableItem(IZ)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 363
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->isInterceptItemClick(Lcom/ypx/imagepicker/bean/ImageItem;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 368
    :cond_1
    iget-object p2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 369
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->removeImageItemFromCropViewList(Lcom/ypx/imagepicker/bean/ImageItem;)V

    .line 370
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->checkStateBtn()V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 372
    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->onPressImage(Lcom/ypx/imagepicker/bean/ImageItem;Z)V

    .line 373
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->addImageItemToCropViewList(Lcom/ypx/imagepicker/bean/ImageItem;)V

    .line 375
    :goto_0
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageGridAdapter:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageItems:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->onDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/ypx/imagepicker/R$string;->picker_str_tip_action_frequently:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->tip(Ljava/lang/String;)V

    return-void

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->stateBtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_2

    .line 257
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->fullOrFit()V

    goto :goto_0

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->maskView:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 259
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->touchHelper:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    iget v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->pressImageIndex:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0, v1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->transitTopWithAnim(ZIZ)V

    goto :goto_0

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mTvFullOrGap:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    .line 261
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->fullOrGap()V

    goto :goto_0

    .line 262
    :cond_4
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mImageSetMasker:Landroid/view/View;

    if-ne v0, p1, :cond_5

    .line 263
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->toggleFolderList()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onClickItem(Lcom/ypx/imagepicker/bean/ImageItem;II)V
    .locals 1

    if-gtz p2, :cond_1

    .line 277
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->isShowCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getWeakActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->interceptCameraClick(Landroid/app/Activity;Lcom/ypx/imagepicker/data/ICameraExecutor;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->checkTakePhotoOrVideo()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, p3, v0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->interceptClickDisableItem(IZ)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    .line 292
    :cond_2
    iput p2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->pressImageIndex:I

    .line 294
    iget-object p2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageItems:Ljava/util/List;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageItems:Ljava/util/List;

    .line 295
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget p3, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->pressImageIndex:I

    if-gt p2, p3, :cond_3

    goto :goto_0

    .line 300
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->isInterceptItemClick(Lcom/ypx/imagepicker/bean/ImageItem;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    :cond_4
    const/4 p2, 0x1

    .line 305
    invoke-direct {p0, p1, p2}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->onPressImage(Lcom/ypx/imagepicker/bean/ImageItem;Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 115
    sget p3, Lcom/ypx/imagepicker/R$layout;->picker_activity_multi_crop:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mContentView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 803
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->videoViewContainerHelper:Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;

    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {v0}, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->onDestroy()V

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/views/PickerUiConfig;->setPickerUiProvider(Lcom/ypx/imagepicker/views/PickerUiProvider;)V

    .line 807
    iput-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    .line 808
    iput-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    .line 809
    invoke-super {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 822
    invoke-super {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->onPause()V

    .line 823
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->videoViewContainerHelper:Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;

    if-eqz v0, :cond_0

    .line 824
    invoke-virtual {v0}, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 814
    invoke-super {p0}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->onResume()V

    .line 815
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->videoViewContainerHelper:Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;

    if-eqz v0, :cond_0

    .line 816
    invoke-virtual {v0}, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->onResume()V

    :cond_0
    return-void
.end method

.method public onTakePhotoResult(Lcom/ypx/imagepicker/bean/ImageItem;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 778
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageSets:Ljava/util/List;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageItems:Ljava/util/List;

    invoke-virtual {p0, v0, v1, p1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->addItemInImageSets(Ljava/util/List;Ljava/util/List;Lcom/ypx/imagepicker/bean/ImageItem;)V

    const/4 v0, 0x0

    .line 779
    invoke-virtual {p0, p1, v0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->onCheckItem(Lcom/ypx/imagepicker/bean/ImageItem;I)V

    .line 780
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageGridAdapter:Lcom/ypx/imagepicker/adapter/PickerItemAdapter;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/adapter/PickerItemAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 121
    invoke-super {p0, p1, p2}, Lcom/ypx/imagepicker/activity/PBaseLoaderFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 122
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->isIntentDataValid()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 123
    sput-boolean p1, Lcom/ypx/imagepicker/ImagePicker;->isOriginalImage:Z

    .line 124
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getWeakActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->getUiConfig(Landroid/content/Context;)Lcom/ypx/imagepicker/views/PickerUiConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    .line 125
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->setStatusBar()V

    .line 126
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->initView()V

    .line 127
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->initUI()V

    .line 128
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->initGridImagesAndImageSets()V

    const/4 p1, 0x1

    .line 129
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->loadMediaSets(Z)V

    :cond_0
    return-void
.end method

.method protected refreshAllVideoSet(Lcom/ypx/imagepicker/bean/ImageSet;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 749
    iget-object v0, p1, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    .line 751
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageSets:Ljava/util/List;

    .line 752
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageSets:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 754
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->folderAdapter:Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageSets:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/adapter/PickerFolderAdapter;->refreshData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected refuseStoragePermissionCallback()V
    .locals 0

    return-void
.end method

.method public setOnImagePickCompleteListener(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->imageListener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

    return-void
.end method

.method protected toggleFolderList()V
    .locals 5

    .line 659
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mFolderListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 660
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->titleBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 664
    :cond_0
    iget-object v2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->titleBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 665
    iget-object v2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->titleBarContainer2:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 666
    iget-object v2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->titleBarContainer2:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 668
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mImageSetMasker:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 669
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->controllerViewOnTransitImageSet(Z)V

    .line 670
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mFolderListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 671
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mFolderListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 672
    iget-object v2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    invoke-virtual {v2}, Lcom/ypx/imagepicker/views/PickerUiConfig;->isShowFromBottom()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/ypx/imagepicker/R$anim;->picker_show2bottom:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/ypx/imagepicker/R$anim;->picker_anim_in:I

    .line 671
    :goto_0
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 675
    :cond_2
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->titleBarContainer2:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 679
    :cond_3
    iget-object v3, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mImageSetMasker:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 680
    invoke-virtual {p0, v1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->controllerViewOnTransitImageSet(Z)V

    .line 681
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mFolderListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 682
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->mFolderListRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 683
    iget-object v3, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    invoke-virtual {v3}, Lcom/ypx/imagepicker/views/PickerUiConfig;->isShowFromBottom()Z

    move-result v3

    if-eqz v3, :cond_4

    sget v3, Lcom/ypx/imagepicker/R$anim;->picker_hide2bottom:I

    goto :goto_1

    :cond_4
    sget v3, Lcom/ypx/imagepicker/R$anim;->picker_anim_up:I

    .line 682
    :goto_1
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 685
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->titleBarContainer2:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment$3;-><init>(Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;Landroid/view/View;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void
.end method
