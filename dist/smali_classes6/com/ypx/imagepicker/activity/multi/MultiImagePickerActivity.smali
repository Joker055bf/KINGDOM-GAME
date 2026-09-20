.class public Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "MultiImagePickerActivity.java"


# static fields
.field public static final INTENT_KEY_CURRENT_IMAGE:Ljava/lang/String; = "currentImage"

.field public static final INTENT_KEY_CURRENT_INDEX:Ljava/lang/String; = "currentIndex"

.field public static final INTENT_KEY_PRESENTER:Ljava/lang/String; = "IPickerPresenter"

.field public static final INTENT_KEY_SELECT_CONFIG:Ljava/lang/String; = "MultiSelectConfig"


# instance fields
.field private fragment:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

.field private presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

.field private selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method public static intent(Landroid/app/Activity;Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V
    .locals 2

    .line 61
    invoke-static {}, Lcom/ypx/imagepicker/utils/PViewSizeUtils;->onDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 64
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "MultiSelectConfig"

    .line 65
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "IPickerPresenter"

    .line 66
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 67
    invoke-static {p0}, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->init(Landroid/app/Activity;)Lcom/ypx/imagepicker/helper/launcher/PLauncher;

    move-result-object p0

    invoke-static {p3}, Lcom/ypx/imagepicker/data/PickerActivityCallBack;->create(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)Lcom/ypx/imagepicker/data/PickerActivityCallBack;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->startActivityForResult(Landroid/content/Intent;Lcom/ypx/imagepicker/helper/launcher/PLauncher$Callback;)V

    return-void
.end method

.method private isIntentDataFailed()Z
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MultiSelectConfig"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    .line 75
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IPickerPresenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 77
    sget-object v0, Lcom/ypx/imagepicker/bean/PickerError;->PRESENTER_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result v0

    invoke-static {p0, v0}, Lcom/ypx/imagepicker/helper/PickerErrorExecutor;->executeError(Landroid/app/Activity;I)V

    return v1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    if-nez v0, :cond_1

    .line 81
    sget-object v0, Lcom/ypx/imagepicker/bean/PickerError;->SELECT_CONFIG_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result v0

    invoke-static {p0, v0}, Lcom/ypx/imagepicker/helper/PickerErrorExecutor;->executeError(Landroid/app/Activity;I)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private setFragment()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    invoke-static {v0}, Lcom/ypx/imagepicker/ImagePicker;->withMulti(Lcom/ypx/imagepicker/presenter/IPickerPresenter;)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    .line 120
    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->withMultiSelectConfig(Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;

    move-result-object v0

    new-instance v1, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity$1;

    invoke-direct {v1, p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity$1;-><init>(Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;)V

    .line 121
    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->pickWithFragment(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->fragment:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    .line 133
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/ypx/imagepicker/R$id;->fragment_container:I

    iget-object v2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->fragment:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    .line 135
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->fragment:Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 149
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 151
    iget-object v2, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v2}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->getLanguageInGame()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ypx/imagepicker/utils/LanguageUtil;->switch2SystemLanguage(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 152
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 153
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 89
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->isIntentDataFailed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 95
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->getLanguageInGame()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ypx/imagepicker/utils/LanguageUtil;->switch2SystemLanguage(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 97
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 99
    invoke-static {p0}, Lcom/ypx/imagepicker/activity/PickerActivityManager;->addActivity(Landroid/app/Activity;)V

    .line 100
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 101
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

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

    .line 100
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->setRequestedOrientation(I)V

    .line 103
    sget p1, Lcom/ypx/imagepicker/R$layout;->picker_activity_fragment_wrapper:I

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->setContentView(I)V

    .line 105
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->setFragment()V

    .line 107
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 108
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 109
    invoke-static {}, Lcom/ypx/imagepicker/utils/CommonUtil;->getSystemModel()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Pixel_5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 111
    :cond_3
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isLandscape()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/ypx/imagepicker/utils/CommonUtil;->setNoLimitScreen(Landroid/app/Activity;Z)V

    :cond_4
    return-void
.end method
