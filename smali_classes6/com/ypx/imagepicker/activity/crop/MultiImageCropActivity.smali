.class public Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "MultiImageCropActivity.java"


# static fields
.field public static final INTENT_KEY_DATA_PRESENTER:Ljava/lang/String; = "ICropPickerBindPresenter"

.field public static final INTENT_KEY_SELECT_CONFIG:Ljava/lang/String; = "selectConfig"


# instance fields
.field private mFragment:Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;

.field private presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

.field private selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method public static intent(Landroid/app/Activity;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V
    .locals 2

    .line 52
    invoke-static {}, Lcom/ypx/imagepicker/utils/PViewSizeUtils;->onDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ICropPickerBindPresenter"

    .line 54
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "selectConfig"

    .line 55
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 56
    invoke-static {p0}, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->init(Landroid/app/Activity;)Lcom/ypx/imagepicker/helper/launcher/PLauncher;

    move-result-object p0

    invoke-static {p3}, Lcom/ypx/imagepicker/data/PickerActivityCallBack;->create(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)Lcom/ypx/imagepicker/data/PickerActivityCallBack;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->startActivityForResult(Landroid/content/Intent;Lcom/ypx/imagepicker/helper/launcher/PLauncher$Callback;)V

    :cond_0
    return-void
.end method

.method private isIntentDataFailed()Z
    .locals 3

    .line 64
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ICropPickerBindPresenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    .line 65
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selectConfig"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    .line 66
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 67
    sget-object v0, Lcom/ypx/imagepicker/bean/PickerError;->PRESENTER_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result v0

    invoke-static {p0, v0}, Lcom/ypx/imagepicker/helper/PickerErrorExecutor;->executeError(Landroid/app/Activity;I)V

    return v2

    :cond_0
    if-nez v0, :cond_1

    .line 71
    sget-object v0, Lcom/ypx/imagepicker/bean/PickerError;->SELECT_CONFIG_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result v0

    invoke-static {p0, v0}, Lcom/ypx/imagepicker/helper/PickerErrorExecutor;->executeError(Landroid/app/Activity;I)V

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private setFragment()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    invoke-static {v0}, Lcom/ypx/imagepicker/ImagePicker;->withCrop(Lcom/ypx/imagepicker/presenter/IPickerPresenter;)Lcom/ypx/imagepicker/builder/CropPickerBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    .line 98
    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->withSelectConfig(Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;)Lcom/ypx/imagepicker/builder/CropPickerBuilder;

    move-result-object v0

    new-instance v1, Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity$1;

    invoke-direct {v1, p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity$1;-><init>(Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity;)V

    .line 99
    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->pickWithFragment(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity;->mFragment:Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;

    .line 111
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/ypx/imagepicker/R$id;->fragment_container:I

    iget-object v2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity;->mFragment:Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;

    .line 113
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity;->mFragment:Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity;->isIntentDataFailed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-static {p0}, Lcom/ypx/imagepicker/activity/PickerActivityManager;->addActivity(Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 84
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity;->requestWindowFeature(I)Z

    .line 85
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->isReverseLandscape()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 85
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity;->setRequestedOrientation(I)V

    .line 88
    sget p1, Lcom/ypx/imagepicker/R$layout;->picker_activity_fragment_wrapper:I

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity;->setContentView(I)V

    .line 90
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity;->setFragment()V

    return-void
.end method
