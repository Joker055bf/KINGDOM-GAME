.class public Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "MultiImagePreviewActivity.java"

# interfaces
.implements Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$PreviewResult;,
        Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$TouchImageAdapter;,
        Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$SinglePreviewFragment;
    }
.end annotation


# static fields
.field public static final INTENT_KEY_SELECT_LIST:Ljava/lang/String; = "selectList"

.field static currentImageSet:Lcom/ypx/imagepicker/bean/ImageSet;


# instance fields
.field private activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private controllerView:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

.field private dialogInterface:Landroid/content/DialogInterface;

.field private mCurrentItemPosition:I

.field private mImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

.field private selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

.field private uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mCurrentItemPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mCurrentItemPosition:I

    return p0
.end method

.method static synthetic access$002(Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mCurrentItemPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mImageList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;)Lcom/ypx/imagepicker/views/base/PreviewControllerView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->controllerView:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    return-object p0
.end method

.method private filterVideo(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isCanPreviewVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mImageList:Ljava/util/ArrayList;

    return-object v0

    .line 298
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mImageList:Ljava/util/ArrayList;

    .line 302
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ypx/imagepicker/bean/ImageItem;

    .line 303
    invoke-virtual {v3}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/ypx/imagepicker/bean/ImageItem;->isGif()Z

    move-result v4

    if-nez v4, :cond_1

    .line 304
    iget-object v4, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 308
    :goto_1
    iget v3, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mCurrentItemPosition:I

    if-ne v2, v3, :cond_2

    sub-int v0, v2, v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 313
    :cond_3
    iput v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mCurrentItemPosition:I

    .line 314
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mImageList:Ljava/util/ArrayList;

    return-object p1
.end method

.method private initViewPager(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)V"
        }
    .end annotation

    .line 347
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->filterVideo(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mImageList:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 348
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    iget p1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mCurrentItemPosition:I

    const/4 v0, 0x0

    if-gez p1, :cond_1

    .line 354
    iput v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mCurrentItemPosition:I

    .line 356
    :cond_1
    new-instance p1, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$TouchImageAdapter;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mImageList:Ljava/util/ArrayList;

    invoke-direct {p1, v1, v2}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$TouchImageAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;)V

    .line 357
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 358
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 359
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mCurrentItemPosition:I

    invoke-virtual {p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 360
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mImageList:Ljava/util/ArrayList;

    iget v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mCurrentItemPosition:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/bean/ImageItem;

    .line 361
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->controllerView:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    iget v1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mCurrentItemPosition:I

    iget-object v2, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->onPageSelected(ILcom/ypx/imagepicker/bean/ImageItem;I)V

    .line 362
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$2;

    invoke-direct {v0, p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$2;-><init>(Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    goto :goto_1

    .line 349
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->getPresenter()Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    move-result-object p1

    sget v0, Lcom/ypx/imagepicker/R$string;->picker_str_preview_empty:I

    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->tip(Landroid/content/Context;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method public static intent(Landroid/app/Activity;Lcom/ypx/imagepicker/bean/ImageSet;Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;Lcom/ypx/imagepicker/presenter/IPickerPresenter;ILcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$PreviewResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/ypx/imagepicker/bean/ImageSet;",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;",
            "Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;",
            "Lcom/ypx/imagepicker/presenter/IPickerPresenter;",
            "I",
            "Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$PreviewResult;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageSet;->copy()Lcom/ypx/imagepicker/bean/ImageSet;

    move-result-object p1

    sput-object p1, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->currentImageSet:Lcom/ypx/imagepicker/bean/ImageSet;

    .line 103
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "selectList"

    .line 104
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "MultiSelectConfig"

    .line 105
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "IPickerPresenter"

    .line 106
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "currentIndex"

    .line 107
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    invoke-static {p0}, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->init(Landroid/app/Activity;)Lcom/ypx/imagepicker/helper/launcher/PLauncher;

    move-result-object p0

    new-instance p2, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$1;

    invoke-direct {p2, p6}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$1;-><init>(Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$PreviewResult;)V

    invoke-virtual {p0, p1, p2}, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->startActivityForResult(Landroid/content/Intent;Lcom/ypx/imagepicker/helper/launcher/PLauncher$Callback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private isIntentDataFailed()Z
    .locals 4

    .line 150
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "MultiSelectConfig"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "IPickerPresenter"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    .line 155
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    .line 156
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "currentIndex"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mCurrentItemPosition:I

    .line 157
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "selectList"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 158
    iget-object v2, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    if-nez v2, :cond_1

    goto :goto_0

    .line 161
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mSelectList:Ljava/util/ArrayList;

    .line 162
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->getUiConfig(Landroid/content/Context;)Lcom/ypx/imagepicker/views/PickerUiConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    return v3

    :cond_2
    :goto_0
    return v1
.end method

.method private loadMediaPreviewList()V
    .locals 2

    .line 265
    sget-object v0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->currentImageSet:Lcom/ypx/imagepicker/bean/ImageSet;

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mSelectList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->initViewPager(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, v0, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->currentImageSet:Lcom/ypx/imagepicker/bean/ImageSet;

    iget-object v0, v0, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    .line 268
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->currentImageSet:Lcom/ypx/imagepicker/bean/ImageSet;

    iget-object v0, v0, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    .line 269
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->currentImageSet:Lcom/ypx/imagepicker/bean/ImageSet;

    iget v1, v1, Lcom/ypx/imagepicker/bean/ImageSet;->count:I

    if-lt v0, v1, :cond_1

    .line 270
    sget-object v0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->currentImageSet:Lcom/ypx/imagepicker/bean/ImageSet;

    iget-object v0, v0, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->initViewPager(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->getPresenter()Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    move-result-object v0

    sget-object v1, Lcom/ypx/imagepicker/data/ProgressSceneEnum;->loadMediaItem:Lcom/ypx/imagepicker/data/ProgressSceneEnum;

    invoke-interface {v0, p0, v1}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->showProgressDialog(Landroid/app/Activity;Lcom/ypx/imagepicker/data/ProgressSceneEnum;)Landroid/content/DialogInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->dialogInterface:Landroid/content/DialogInterface;

    .line 274
    sget-object v0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->currentImageSet:Lcom/ypx/imagepicker/bean/ImageSet;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    .line 275
    invoke-virtual {v1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->getMimeTypes()Ljava/util/Set;

    move-result-object v1

    .line 274
    invoke-static {p0, v0, v1, p0}, Lcom/ypx/imagepicker/ImagePicker;->provideMediaItemsFromSet(Landroidx/fragment/app/FragmentActivity;Lcom/ypx/imagepicker/bean/ImageSet;Ljava/util/Set;Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemProvider;)V

    :goto_0
    return-void
.end method

.method private notifyCallBack(Z)V
    .locals 3

    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "pickerResult"

    .line 173
    iget-object v2, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mSelectList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const/16 p1, 0x599

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 174
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 175
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->finish()V

    .line 179
    :try_start_0
    invoke-static {}, Lcom/ypx/imagepicker/utils/CommonUtil;->hasContainExoPlayerClass()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 180
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->controllerView:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    if-eqz p1, :cond_6

    .line 181
    invoke-virtual {p1}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->getExoPlayerViews()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 184
    :cond_1
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->controllerView:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->getExoPlayerViews()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 186
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    goto :goto_1

    .line 191
    :cond_3
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->controllerView:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    if-eqz p1, :cond_6

    .line 192
    invoke-virtual {p1}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->getIjkPlayerViews()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 195
    :cond_4
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->controllerView:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->getIjkPlayerViews()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz v0, :cond_5

    .line 197
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :cond_6
    return-void
.end method

.method private setUI()V
    .locals 5

    .line 321
    sget v0, Lcom/ypx/imagepicker/R$id;->viewpager:I

    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 322
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/views/PickerUiConfig;->getPreviewBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setBackgroundColor(I)V

    .line 323
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/views/PickerUiConfig;->getPickerUiProvider()Lcom/ypx/imagepicker/views/PickerUiProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/views/PickerUiProvider;->getPreviewControllerView(Landroid/content/Context;)Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->controllerView:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-direct {v0, p0}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->controllerView:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->controllerView:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->setStatusBar()V

    .line 328
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->controllerView:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    iget-object v2, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    iget-object v3, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->uiConfig:Lcom/ypx/imagepicker/views/PickerUiConfig;

    iget-object v4, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mSelectList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->initData(Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/views/PickerUiConfig;Ljava/util/ArrayList;)V

    .line 329
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->controllerView:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->getCompleteView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->controllerView:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->getCompleteView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$$ExternalSyntheticLambda0;-><init>(Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    :cond_1
    sget v0, Lcom/ypx/imagepicker/R$id;->mPreviewPanel:I

    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 338
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->controllerView:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 424
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 425
    invoke-static {p0}, Lcom/ypx/imagepicker/activity/PickerActivityManager;->removeActivity(Landroid/app/Activity;)V

    .line 426
    sget-object v0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->currentImageSet:Lcom/ypx/imagepicker/bean/ImageSet;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 427
    sget-object v0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->currentImageSet:Lcom/ypx/imagepicker/bean/ImageSet;

    iget-object v0, v0, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 428
    sput-object v0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->currentImageSet:Lcom/ypx/imagepicker/bean/ImageSet;

    :cond_0
    return-void
.end method

.method public getControllerView()Lcom/ypx/imagepicker/views/base/PreviewControllerView;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->controllerView:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    return-object v0
.end method

.method public getPresenter()Lcom/ypx/imagepicker/presenter/IPickerPresenter;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    return-object v0
.end method

.method synthetic lambda$setUI$0$com-ypx-imagepicker-activity-preview-MultiImagePreviewActivity(Landroid/view/View;)V
    .locals 0

    .line 331
    invoke-static {}, Lcom/ypx/imagepicker/utils/PViewSizeUtils;->onDoubleClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 334
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->notifyCallBack(Z)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, v0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->notifyCallBack(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 125
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->isIntentDataFailed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->finish()V

    return-void

    .line 129
    :cond_0
    invoke-static {p0}, Lcom/ypx/imagepicker/activity/PickerActivityManager;->addActivity(Landroid/app/Activity;)V

    .line 130
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 131
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isReverseLandscape()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 130
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->setRequestedOrientation(I)V

    .line 133
    sget p1, Lcom/ypx/imagepicker/R$layout;->picker_activity_preview:I

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->setContentView(I)V

    .line 135
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->setUI()V

    .line 136
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->loadMediaPreviewList()V

    .line 138
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 139
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 140
    invoke-static {}, Lcom/ypx/imagepicker/utils/CommonUtil;->getSystemModel()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Pixel_5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 142
    :cond_3
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isLandscape()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/ypx/imagepicker/utils/CommonUtil;->setNoLimitScreen(Landroid/app/Activity;Z)V

    :cond_4
    return-void
.end method

.method protected onPause()V
    .locals 9

    .line 212
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 215
    :try_start_0
    invoke-static {}, Lcom/ypx/imagepicker/utils/CommonUtil;->hasContainExoPlayerClass()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "mipmap"

    const-string v2, "img_picker_play"

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 216
    :try_start_1
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->controllerView:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    if-eqz v0, :cond_7

    .line 217
    invoke-virtual {v0}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->getExoPlayerViews()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->controllerView:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->getExoPlayerViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v4, :cond_1

    .line 221
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 222
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/exoplayer2/Player;->pause()V

    move v5, v3

    .line 223
    :goto_0
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 224
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/ui/PlayerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 225
    instance-of v7, v6, Landroid/widget/Button;

    if-eqz v7, :cond_2

    .line 226
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v1, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 227
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 234
    :cond_3
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->controllerView:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    if-eqz v0, :cond_7

    .line 235
    invoke-virtual {v0}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->getIjkPlayerViews()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 238
    :cond_4
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->controllerView:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->getIjkPlayerViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz v4, :cond_5

    .line 240
    invoke-virtual {v4}, Lxyz/doikki/videoplayer/player/VideoView;->pause()V

    move v5, v3

    .line 241
    :goto_1
    invoke-virtual {v4}, Lxyz/doikki/videoplayer/player/VideoView;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 242
    invoke-virtual {v4, v5}, Lxyz/doikki/videoplayer/player/VideoView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 243
    instance-of v7, v6, Landroid/widget/Button;

    if-eqz v7, :cond_6

    .line 244
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v1, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 245
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    :cond_7
    return-void
.end method

.method public onPreviewItemClick(Lcom/ypx/imagepicker/bean/ImageItem;)V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 258
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method public providerMediaItems(Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/ImageSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;",
            "Lcom/ypx/imagepicker/bean/ImageSet;",
            ")V"
        }
    .end annotation

    .line 281
    iget-object p2, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->dialogInterface:Landroid/content/DialogInterface;

    if-eqz p2, :cond_0

    .line 282
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 284
    :cond_0
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->initViewPager(Ljava/util/ArrayList;)V

    return-void
.end method
