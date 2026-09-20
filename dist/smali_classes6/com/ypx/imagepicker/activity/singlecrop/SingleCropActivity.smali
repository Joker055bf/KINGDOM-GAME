.class public Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SingleCropActivity.java"


# static fields
.field public static final INTENT_KEY_CURRENT_IMAGE_ITEM:Ljava/lang/String; = "currentImageItem"


# instance fields
.field private cropConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

.field private cropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

.field private currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

.field private dialogInterface:Landroid/content/DialogInterface;

.field private presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;)Landroid/content/DialogInterface;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->dialogInterface:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropComplete(Ljava/lang/String;)V

    return-void
.end method

.method private cropComplete(Ljava/lang/String;)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 170
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Exception:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isNeedPng()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/ypx/imagepicker/bean/MimeType;->PNG:Lcom/ypx/imagepicker/bean/MimeType;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/ypx/imagepicker/bean/MimeType;->JPEG:Lcom/ypx/imagepicker/bean/MimeType;

    :goto_0
    invoke-virtual {v1}, Lcom/ypx/imagepicker/bean/MimeType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->mimeType:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getCropWidth()I

    move-result v1

    iput v1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->width:I

    .line 179
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getCropHeight()I

    move-result v1

    iput v1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->height:I

    .line 180
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/ImageItem;->setCropUrl(Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getInfo()Lcom/ypx/imagepicker/widget/cropimage/Info;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/bean/ImageItem;->setCropRestoreInfo(Lcom/ypx/imagepicker/widget/cropimage/Info;)V

    .line 182
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->notifyOnImagePickComplete(Lcom/ypx/imagepicker/bean/ImageItem;)V

    return-void

    .line 171
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    sget v0, Lcom/ypx/imagepicker/R$string;->picker_str_tip_singleCrop_error:I

    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->tip(Landroid/content/Context;Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->getCropRatioX()I

    move-result v0

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->getCropRatioY()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setCropRatio(II)V

    return-void
.end method

.method public static intentCrop(Landroid/app/Activity;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V
    .locals 2

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "IPickerPresenter"

    .line 80
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "MultiSelectConfig"

    .line 81
    invoke-virtual {p2}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->getCropInfo()Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "currentImageItem"

    .line 82
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 83
    invoke-static {p0}, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->init(Landroid/app/Activity;)Lcom/ypx/imagepicker/helper/launcher/PLauncher;

    move-result-object p0

    invoke-static {p4}, Lcom/ypx/imagepicker/data/PickerActivityCallBack;->create(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)Lcom/ypx/imagepicker/data/PickerActivityCallBack;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->startActivityForResult(Landroid/content/Intent;Lcom/ypx/imagepicker/helper/launcher/PLauncher$Callback;)V

    return-void
.end method

.method public static intentCrop(Landroid/app/Activity;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;Ljava/lang/String;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V
    .locals 0

    .line 71
    invoke-static {p0, p3}, Lcom/ypx/imagepicker/bean/ImageItem;->withPath(Landroid/content/Context;Ljava/lang/String;)Lcom/ypx/imagepicker/bean/ImageItem;

    move-result-object p3

    invoke-static {p0, p1, p2, p3, p4}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->intentCrop(Landroid/app/Activity;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V

    return-void
.end method

.method private notifyOnImagePickComplete(Lcom/ypx/imagepicker/bean/ImageItem;)V
    .locals 2

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "pickerResult"

    .line 246
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v0, 0x599

    .line 247
    invoke-virtual {p0, v0, p1}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->setResult(ILandroid/content/Intent;)V

    .line 248
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->finish()V

    return-void
.end method

.method private saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isNeedPng()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 228
    :goto_0
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isSaveInDCIM()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    invoke-static {p0, p1, p2, v0}, Lcom/ypx/imagepicker/utils/PBitmapUtils;->saveBitmapToDCIM(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 231
    :cond_1
    invoke-static {p0, p1, p2, v0}, Lcom/ypx/imagepicker/utils/PBitmapUtils;->saveBitmapToFile(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private setControllerView()V
    .locals 4

    .line 138
    sget v0, Lcom/ypx/imagepicker/R$id;->mCropPanel:I

    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 139
    iget-object v1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    invoke-interface {v1, p0}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->getUiConfig(Landroid/content/Context;)Lcom/ypx/imagepicker/views/PickerUiConfig;

    move-result-object v1

    .line 140
    sget v2, Lcom/ypx/imagepicker/R$id;->mRoot:I

    invoke-virtual {p0, v2}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ypx/imagepicker/views/PickerUiConfig;->getSingleCropBackgroundColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 141
    invoke-virtual {v1}, Lcom/ypx/imagepicker/views/PickerUiConfig;->getPickerUiProvider()Lcom/ypx/imagepicker/views/PickerUiProvider;

    move-result-object v1

    .line 142
    invoke-virtual {v1, p0}, Lcom/ypx/imagepicker/views/PickerUiProvider;->getSingleCropControllerView(Landroid/content/Context;)Lcom/ypx/imagepicker/views/base/SingleCropControllerView;

    move-result-object v1

    .line 143
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-virtual {v1}, Lcom/ypx/imagepicker/views/base/SingleCropControllerView;->setStatusBar()V

    .line 146
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v0, v2}, Lcom/ypx/imagepicker/views/base/SingleCropControllerView;->setCropViewParams(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 147
    invoke-virtual {v1}, Lcom/ypx/imagepicker/views/base/SingleCropControllerView;->getCompleteView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity$1;

    invoke-direct {v1, p0}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity$1;-><init>(Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 253
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 254
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->dialogInterface:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 257
    :cond_0
    invoke-static {p0}, Lcom/ypx/imagepicker/activity/PickerActivityManager;->removeActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public generateCropFile(Ljava/lang/String;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    sget-object v1, Lcom/ypx/imagepicker/data/ProgressSceneEnum;->crop:Lcom/ypx/imagepicker/data/ProgressSceneEnum;

    invoke-interface {v0, p0, v1}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->showProgressDialog(Landroid/app/Activity;Lcom/ypx/imagepicker/data/ProgressSceneEnum;)Landroid/content/DialogInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->dialogInterface:Landroid/content/DialogInterface;

    .line 195
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isGap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isCircle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->getCropGapBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setBackgroundColor(I)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    iput-object p1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->displayName:Ljava/lang/String;

    .line 199
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object v0

    new-instance v1, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity$$ExternalSyntheticLambda0;-><init>(Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$generateCropFile$0$com-ypx-imagepicker-activity-singlecrop-SingleCropActivity(Ljava/lang/String;)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isGap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->getCropGapBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->generateCropBitmapFromView(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->generateCropBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 206
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 207
    new-instance v0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity$2;-><init>(Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 89
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 91
    sget-object p1, Lcom/ypx/imagepicker/bean/PickerError;->PRESENTER_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result p1

    invoke-static {p0, p1}, Lcom/ypx/imagepicker/helper/PickerErrorExecutor;->executeError(Landroid/app/Activity;I)V

    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "IPickerPresenter"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    iput-object p1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    .line 95
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "MultiSelectConfig"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    iput-object p1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    .line 96
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    if-nez v0, :cond_1

    .line 97
    sget-object p1, Lcom/ypx/imagepicker/bean/PickerError;->PRESENTER_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result p1

    invoke-static {p0, p1}, Lcom/ypx/imagepicker/helper/PickerErrorExecutor;->executeError(Landroid/app/Activity;I)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 101
    sget-object p1, Lcom/ypx/imagepicker/bean/PickerError;->SELECT_CONFIG_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result p1

    invoke-static {p0, p1}, Lcom/ypx/imagepicker/helper/PickerErrorExecutor;->executeError(Landroid/app/Activity;I)V

    return-void

    .line 104
    :cond_2
    invoke-virtual {p0}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "currentImageItem"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/bean/ImageItem;

    iput-object p1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    if-eqz p1, :cond_6

    .line 105
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageItem;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_1

    .line 110
    :cond_3
    invoke-static {p0}, Lcom/ypx/imagepicker/activity/PickerActivityManager;->addActivity(Landroid/app/Activity;)V

    .line 111
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isSingleCropCutNeedTop()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 112
    sget p1, Lcom/ypx/imagepicker/R$layout;->picker_activity_crop_cover:I

    goto :goto_0

    :cond_4
    sget p1, Lcom/ypx/imagepicker/R$layout;->picker_activity_crop:I

    .line 111
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->setContentView(I)V

    .line 115
    sget p1, Lcom/ypx/imagepicker/R$id;->cropView:I

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    iput-object p1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    const/high16 v0, 0x40e00000    # 7.0f

    .line 116
    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setMaxScale(F)V

    .line 117
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setRotateEnable(Z)V

    .line 118
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->enable()V

    .line 119
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isGap()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setBounceEnable(Z)V

    .line 120
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->getCropRectMargin()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setCropMargin(I)V

    .line 121
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isCircle()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setCircle(Z)V

    .line 122
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->getCropRatioX()I

    move-result v1

    iget-object v2, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    invoke-virtual {v2}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->getCropRatioY()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setCropRatio(II)V

    .line 125
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->getCropRestoreInfo()Lcom/ypx/imagepicker/widget/cropimage/Info;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 126
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->getCropRestoreInfo()Lcom/ypx/imagepicker/widget/cropimage/Info;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setRestoreInfo(Lcom/ypx/imagepicker/widget/cropimage/Info;)V

    .line 130
    :cond_5
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->cropView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    iget-object v2, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->currentImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-static {v0, p1, v1, v2}, Lcom/ypx/imagepicker/helper/DetailImageLoadHelper;->displayDetailImage(ZLandroid/widget/ImageView;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/ImageItem;)V

    .line 131
    invoke-direct {p0}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->setControllerView()V

    return-void

    .line 106
    :cond_6
    :goto_1
    sget-object p1, Lcom/ypx/imagepicker/bean/PickerError;->CROP_URL_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result p1

    invoke-static {p0, p1}, Lcom/ypx/imagepicker/helper/PickerErrorExecutor;->executeError(Landroid/app/Activity;I)V

    return-void
.end method
