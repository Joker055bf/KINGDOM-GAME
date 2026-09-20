.class public Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;
.super Landroid/app/Activity;
.source "T4FProfileActivity.java"


# static fields
.field private static final CAMERA_PERMISSION_REQUEST_CODE:I = 0x68

.field public static final INTENT_IMAGE_PROCESS:Ljava/lang/String; = "T4FAlbum.imageProcess"

.field private static NOT_NEED_CAMERA_FOREVER:Ljava/lang/String; = "notNeedCameraForever"

.field private static NOT_NEED_STORAGE_FOREVER:Ljava/lang/String; = "notNeedStorageForever"

.field private static final READ_EXTERNAL_STORAGE_PERMISSION_REQUEST_CODE:I = 0x67

.field private static final READ_MEDIA_IMAGES_PERMISSION_REQUEST_CODE:I = 0x69

.field private static final REQUEST_CAPTURE:I = 0x64

.field private static final REQUEST_CROP_PHOTO:I = 0x66

.field private static final REQUEST_PICK:I = 0x65

.field public static final TAG:Ljava/lang/String; = "tgs.T4FProfile"

.field private static mRetryRequestPermission:Z = false

.field private static profileInterface:Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;


# instance fields
.field private authority:Ljava/lang/String;

.field private compressType:I

.field private final layoutStateChangeCallback:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field mIsClickRequestAvatarPositive:Z

.field mIsClickShowSettingPositive:Z

.field mIsRetryRequestPermission:Z

.field private parseImageProcessSuccess:Z

.field private popupWindow:Landroid/widget/PopupWindow;

.field private tailorConfig:Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;

.field private tempFile:Ljava/io/File;

.field private type:I

.field private userChooseType:Ljava/lang/String;

.field private windowInfoTracker:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;


# direct methods
.method public static synthetic $r8$lambda$j48hGCedwBtVeEFaaM0IEWOVHWE(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;Landroidx/window/layout/WindowLayoutInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->updateUI(Landroidx/window/layout/WindowLayoutInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->mIsClickRequestAvatarPositive:Z

    .line 76
    iput-boolean v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->mIsRetryRequestPermission:Z

    .line 77
    iput-boolean v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->mIsClickShowSettingPositive:Z

    .line 82
    iput v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->type:I

    const/4 v1, 0x1

    .line 84
    iput v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->compressType:I

    const-string v1, ""

    .line 85
    iput-object v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->userChooseType:Ljava/lang/String;

    .line 88
    iput-boolean v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->parseImageProcessSuccess:Z

    .line 106
    new-instance v0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$$ExternalSyntheticLambda0;-><init>(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V

    iput-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->layoutStateChangeCallback:Landroidx/core/util/Consumer;

    return-void
.end method

.method public static FetchProfile(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "T4FAlbum.imageProcess"

    .line 101
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$000(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->tailorConfig:Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;

    return-object p0
.end method

.method static synthetic access$100(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->openRectangleMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->openCircleMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->gotoCamera()V

    return-void
.end method

.method static synthetic access$400(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->popupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$500(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->gotoPhoto()V

    return-void
.end method

.method static synthetic access$600(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->userCancel()V

    return-void
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    .line 51
    sput-boolean p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->mRetryRequestPermission:Z

    return p0
.end method

.method private cancelBySysCallBack(Ljava/lang/String;)V
    .locals 1

    .line 419
    sget-object v0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->profileInterface:Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;

    invoke-static {v0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileInterfaceCBEntry;->cancel(Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->finish()V

    return-void
.end method

.method private createImageFile()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JPEG_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".jpg"

    .line 410
    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private fetchProfileImage()V
    .locals 8

    .line 214
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/t4f/android/R$layout;->t4f_camera_album_popupwindow:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 215
    sget v1, Lcom/t4f/android/R$id;->btn_camera:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 216
    sget v3, Lcom/t4f/android/R$id;->btn_photo:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 217
    sget v4, Lcom/t4f/android/R$id;->btn_cancel:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 218
    new-instance v5, Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v0, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v5, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 219
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object v5, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 221
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v7, Lcom/t4f/android/R$layout;->activity_t4f_sdkfileserver_profile:I

    invoke-virtual {v5, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 223
    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 225
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->popupWindow:Landroid/widget/PopupWindow;

    sget v5, Lcom/t4f/android/R$style;->T4FAlbum_Bottom_Bar:I

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->popupWindow:Landroid/widget/PopupWindow;

    const/16 v5, 0x50

    invoke-virtual {v0, v2, v5, v6, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 234
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 235
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 236
    iget-object v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v5, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$3;

    invoke-direct {v5, p0, v0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$3;-><init>(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 244
    new-instance v0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$4;

    invoke-direct {v0, p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$4;-><init>(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    new-instance v0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$5;

    invoke-direct {v0, p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$5;-><init>(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    new-instance v0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$6;

    invoke-direct {v0, p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$6;-><init>(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :catch_0
    return-void
.end method

.method private gotoCamera()V
    .locals 5

    const-string v0, "tgs.T4FProfile"

    .line 367
    iget-object v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->tailorConfig:Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;

    invoke-virtual {v1}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->userChooseType:Ljava/lang/String;

    .line 371
    :try_start_0
    invoke-direct {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->createImageFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->tempFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 380
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 382
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 385
    :try_start_1
    iget-object v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->authority:Ljava/lang/String;

    iget-object v3, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->tempFile:Ljava/io/File;

    invoke-static {p0, v2, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, "output"

    .line 392
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v2, 0x64

    .line 397
    :try_start_2
    invoke-virtual {p0, v1, v2}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 399
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_1
    move-exception v1

    .line 387
    sget-object v2, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->profileInterface:Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PERMISSION error at provider.authorities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileInterfaceCBEntry;->error(Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->finish()V

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gotoCamera: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->E(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception v1

    .line 373
    sget-object v2, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->profileInterface:Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "createImageFile error! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileInterfaceCBEntry;->error(Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->finish()V

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gotoCamera: createImageFile"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->E(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private gotoPhoto()V
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->tailorConfig:Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;

    invoke-virtual {v0}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->userChooseType:Ljava/lang/String;

    .line 356
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0x65

    .line 357
    invoke-virtual {p0, v0, v1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gotoPhoto: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tgs.T4FProfile"

    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private openCircleMode()V
    .locals 1

    const/4 v0, 0x1

    .line 202
    iput v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->type:I

    .line 203
    invoke-direct {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->fetchProfileImage()V

    return-void
.end method

.method private openRectangleMode()V
    .locals 1

    const/4 v0, 0x2

    .line 207
    iput v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->type:I

    .line 208
    invoke-direct {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->fetchProfileImage()V

    return-void
.end method

.method private parseImageProcess(Landroid/os/Bundle;)Z
    .locals 6

    const-string v0, "T4FAlbum.imageProcess"

    const-string v1, ""

    .line 516
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 518
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "compressType"

    .line 519
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->compressType:I

    const-string p1, "mime"

    .line 520
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "image/jpeg"

    .line 521
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "image/png"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 522
    sget-object p1, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->profileInterface:Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;

    const-string v1, "mime not image/jpeg or image/png"

    invoke-static {p1, v1}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileInterfaceCBEntry;->error(Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v3, "authorities"

    .line 525
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->authority:Ljava/lang/String;

    const-string v1, "tailor"

    .line 526
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 528
    new-instance v2, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;

    invoke-direct {v2}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;-><init>()V

    iput-object v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->tailorConfig:Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;

    const-string v2, "type"

    const-string v3, "circle"

    .line 529
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "size"

    const-wide/32 v4, 0xc800

    .line 530
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 531
    iget-object v5, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->tailorConfig:Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;

    invoke-virtual {v5, v3, v4}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;->setSize(J)V

    .line 532
    iget-object v3, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->tailorConfig:Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;

    invoke-virtual {v3, v2}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;->setType(Ljava/lang/String;)V

    const-string v2, "width"

    const/16 v3, 0x80

    .line 533
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x200

    if-le v2, v3, :cond_1

    move v2, v3

    :cond_1
    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    move v2, v3

    .line 540
    :cond_2
    iget-object v3, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->tailorConfig:Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;

    invoke-virtual {v3, v2}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;->setWith(I)V

    const-string v2, "quality"

    const/16 v3, 0x64

    .line 541
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v3, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    const/4 v1, 0x1

    if-gez v3, :cond_4

    move v3, v1

    .line 548
    :cond_4
    iget-object v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->tailorConfig:Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;

    invoke-virtual {v2, v3}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;->setQuality(I)V

    const-string v2, "jpeg"

    .line 549
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 550
    iget-object v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->tailorConfig:Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v3}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;->setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)V

    :cond_5
    const-string v2, "png"

    .line 552
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 553
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->tailorConfig:Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v2}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;->setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)V

    :cond_6
    return v1

    .line 557
    :cond_7
    sget-object p1, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->profileInterface:Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;

    const-string v1, "not has tailor set"

    invoke-static {p1, v1}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileInterfaceCBEntry;->error(Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 561
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 562
    sget-object v1, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->profileInterface:Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "image process set error as: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileInterfaceCBEntry;->error(Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;Ljava/lang/String;)V

    return v0
.end method

.method public static setProfileInterface(Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;)V
    .locals 0

    .line 94
    sput-object p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->profileInterface:Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;

    return-void
.end method

.method private updateUI(Landroidx/window/layout/WindowLayoutInfo;)V
    .locals 4

    .line 171
    invoke-virtual {p1}, Landroidx/window/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p1

    .line 174
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Foldable"

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/layout/DisplayFeature;

    .line 176
    instance-of v3, v1, Landroidx/window/layout/FoldingFeature;

    if-eqz v3, :cond_0

    .line 178
    check-cast v1, Landroidx/window/layout/FoldingFeature;

    .line 181
    invoke-interface {v1}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object v0

    sget-object v3, Landroidx/window/layout/FoldingFeature$State;->HALF_OPENED:Landroidx/window/layout/FoldingFeature$State;

    if-ne v0, v3, :cond_1

    const-string v0, "Status: Partially folded/hovering (book mode)"

    .line 182
    invoke-static {v2, v0}, Lcom/t4f/debug/Debug;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 183
    :cond_1
    invoke-interface {v1}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object v0

    sget-object v3, Landroidx/window/layout/FoldingFeature$State;->FLAT:Landroidx/window/layout/FoldingFeature$State;

    if-ne v0, v3, :cond_2

    const-string v0, "Status: Fully expanded (tablet mode)"

    .line 184
    invoke-static {v2, v0}, Lcom/t4f/debug/Debug;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_2
    :goto_1
    invoke-interface {v1}, Landroidx/window/layout/FoldingFeature;->getOrientation()Landroidx/window/layout/FoldingFeature$Orientation;

    move-result-object v0

    sget-object v1, Landroidx/window/layout/FoldingFeature$Orientation;->VERTICAL:Landroidx/window/layout/FoldingFeature$Orientation;

    if-ne v0, v1, :cond_3

    const-string v0, "Direction: Fold left and right."

    .line 189
    invoke-static {v2, v0}, Lcom/t4f/debug/Debug;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v0, "Direction: Fold vertically (up and down)"

    .line 191
    invoke-static {v2, v0}, Lcom/t4f/debug/Debug;->I(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    const-string p1, "No folding features detected (this may be a regular phone, or the foldable screen is in the closed state)."

    .line 197
    invoke-static {v2, p1}, Lcom/t4f/debug/Debug;->I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private userCancel()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->userChooseType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->profileInterface:Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;

    const-string v1, "user choose cancel"

    invoke-static {v0, v1}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileInterfaceCBEntry;->cancel(Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public gotoClipActivity(Landroid/net/Uri;)V
    .locals 3

    if-nez p1, :cond_0

    .line 490
    sget-object p1, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->profileInterface:Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;

    const-string v0, "no image uri to clip"

    invoke-static {p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileInterfaceCBEntry;->error(Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->finish()V

    return-void

    .line 495
    :cond_0
    iget v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->compressType:I

    if-nez v0, :cond_3

    .line 496
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/t4f/tgs/sdkfileserver/profile/utils/FileURIUtil;->getByteArrayFromUri(Landroid/content/Context;Landroid/net/Uri;Z)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 498
    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_0

    .line 501
    :cond_1
    sget-object p1, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->profileInterface:Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;

    iget-object v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->userChooseType:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileInterfaceCBEntry;->success(Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;[BLjava/lang/String;)V

    goto :goto_1

    .line 499
    :cond_2
    :goto_0
    sget-object v0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->profileInterface:Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "decode or compress image failed, uri="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileInterfaceCBEntry;->errorCompress(Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;Ljava/lang/String;)V

    .line 503
    :goto_1
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->finish()V

    return-void

    .line 507
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 508
    const-class v1, Lcom/t4f/tgs/sdkfileserver/profile/ClipImageActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "type"

    .line 509
    iget v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->type:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "tailor_config"

    .line 510
    iget-object v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->tailorConfig:Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 511
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 p1, 0x66

    .line 512
    invoke-virtual {p0, v0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    if-ne p2, v0, :cond_4

    .line 454
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 459
    :cond_0
    iget p2, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->compressType:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_3

    .line 460
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p3}, Lcom/t4f/tgs/sdkfileserver/profile/utils/FileURIUtil;->getByteArrayFromUri(Landroid/content/Context;Landroid/net/Uri;Z)[B

    move-result-object p2

    if-eqz p2, :cond_2

    .line 463
    array-length p3, p2

    if-nez p3, :cond_1

    goto :goto_0

    .line 466
    :cond_1
    sget-object p1, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->profileInterface:Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;

    iget-object p3, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->userChooseType:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileInterfaceCBEntry;->success(Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;[BLjava/lang/String;)V

    goto :goto_1

    .line 464
    :cond_2
    :goto_0
    sget-object p2, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->profileInterface:Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "read cropped image data failed, uri="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileInterfaceCBEntry;->errorCompress(Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;Ljava/lang/String;)V

    .line 469
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->finish()V

    goto/16 :goto_3

    :cond_4
    if-nez p2, :cond_5

    .line 471
    sget-object p1, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->profileInterface:Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;

    const-string p2, "user crop cancel"

    invoke-static {p1, p2}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileInterfaceCBEntry;->cancel(Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->finish()V

    goto :goto_3

    :cond_5
    const/16 p1, 0x3e9

    if-ne p2, p1, :cond_6

    .line 474
    sget-object p1, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->profileInterface:Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;

    const-string p2, "CLIPIMAGEACTIVITY_ERROR"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileInterfaceCBEntry;->errorCompress(Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->finish()V

    goto :goto_3

    .line 477
    :cond_6
    sget-object p1, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->profileInterface:Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "error crop photo by unknown code: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileInterfaceCBEntry;->error(Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->finish()V

    goto :goto_3

    :pswitch_1
    if-ne p2, v0, :cond_9

    if-nez p3, :cond_7

    const/4 p1, 0x0

    goto :goto_2

    .line 437
    :cond_7
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    :goto_2
    if-nez p1, :cond_8

    .line 440
    sget-object p1, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->profileInterface:Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;

    const-string p2, "album returned no data"

    invoke-static {p1, p2}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileInterfaceCBEntry;->error(Lcom/t4f/tgs/sdkfileserver/profile/GetProfileInterface;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->finish()V

    goto :goto_3

    .line 444
    :cond_8
    invoke-virtual {p0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->gotoClipActivity(Landroid/net/Uri;)V

    goto :goto_3

    :cond_9
    const-string p1, "user cancel by album"

    .line 446
    invoke-direct {p0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->cancelBySysCallBack(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_2
    if-ne p2, v0, :cond_a

    .line 428
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->tempFile:Ljava/io/File;

    if-eqz p1, :cond_a

    .line 429
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->gotoClipActivity(Landroid/net/Uri;)V

    goto :goto_3

    :cond_a
    const-string p1, "user cancel by camera"

    .line 431
    invoke-direct {p0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->cancelBySysCallBack(Ljava/lang/String;)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    sget p1, Lcom/t4f/android/R$layout;->activity_t4f_sdkfileserver_profile:I

    invoke-virtual {p0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->setContentView(I)V

    .line 114
    new-instance p1, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    .line 115
    invoke-static {p0}, Landroidx/window/layout/WindowInfoTracker;->getOrCreate(Landroid/content/Context;)Landroidx/window/layout/WindowInfoTracker;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;-><init>(Landroidx/window/layout/WindowInfoTracker;)V

    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->windowInfoTracker:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    .line 118
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "T4FAlbum.imageProcess"

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->parseImageProcess(Landroid/os/Bundle;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->parseImageProcessSuccess:Z

    .line 125
    :cond_0
    iget-boolean p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->parseImageProcessSuccess:Z

    if-eqz p1, :cond_1

    .line 126
    iget-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->userChooseType:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 127
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$1;

    invoke-direct {v0, p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$1;-><init>(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 142
    :cond_1
    new-instance p1, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$2;

    invoke-direct {p1, p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$2;-><init>(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    .line 310
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0x68

    const-string v1, "onRequestPermissionsResult...retryRequestPermission requestCode:"

    const-string v2, "tgs.T4FProfile"

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_0

    .line 312
    array-length p2, p3

    if-lez p2, :cond_0

    aget p2, p3, v3

    if-nez p2, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->gotoCamera()V

    goto :goto_3

    .line 316
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0, p0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->retryRequestPermission(Landroid/app/Activity;I)V

    goto :goto_3

    :cond_1
    const/16 v0, 0x67

    if-eq p1, v0, :cond_2

    const/16 v0, 0x69

    if-ne p1, v0, :cond_7

    .line 321
    :cond_2
    array-length v0, p3

    if-lez v0, :cond_5

    .line 322
    array-length v0, p2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v0, v4, :cond_4

    move v0, v3

    .line 325
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_5

    .line 326
    aget-object v4, p2, v0

    const-string v6, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 327
    aget p2, p3, v0

    if-nez p2, :cond_5

    :goto_1
    move v3, v5

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_4
    aget p2, p3, v3

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 338
    invoke-direct {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->gotoPhoto()V

    goto :goto_3

    .line 340
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0, p0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->retryRequestPermission(Landroid/app/Activity;I)V

    :cond_7
    :goto_3
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 156
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->windowInfoTracker:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    .line 158
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->layoutStateChangeCallback:Landroidx/core/util/Consumer;

    .line 156
    invoke-virtual {v0, p0, v1, v2}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->addWindowLayoutInfoListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 167
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->windowInfoTracker:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    iget-object v1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->layoutStateChangeCallback:Landroidx/core/util/Consumer;

    invoke-virtual {v0, v1}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->removeWindowLayoutInfoListener(Landroidx/core/util/Consumer;)V

    return-void
.end method

.method public requestAvatarPermissions(Landroid/app/Activity;I)V
    .locals 8

    const-string v0, "tgs.T4FProfile"

    const-string v1, "requestAvatarPermissions manifest:"

    :try_start_0
    const-string v2, "requestAvatarPermissions"

    .line 569
    invoke-static {v0, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x68

    const/4 v3, 0x0

    if-ne p2, v2, :cond_1

    .line 574
    sget-object v4, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->NOT_NEED_CAMERA_FOREVER:Ljava/lang/String;

    invoke-static {p1, v4, v3}, Lcom/t4f/tgs/sdkfileserver/profile/utils/SPUtil;->get(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "requestAvatarPermissions...if 1"

    .line 575
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0, p1, p2}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->showSettingPrompt(Landroid/app/Activity;I)V

    return-void

    :cond_1
    const/16 v4, 0x67

    if-ne p2, v4, :cond_2

    .line 580
    sget-object v5, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->NOT_NEED_STORAGE_FOREVER:Ljava/lang/String;

    invoke-static {p1, v5, v3}, Lcom/t4f/tgs/sdkfileserver/profile/utils/SPUtil;->get(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v1, "requestAvatarPermissions...if 2"

    .line 581
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0, p1, p2}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->showSettingPrompt(Landroid/app/Activity;I)V

    return-void

    :cond_2
    const/16 v5, 0x69

    if-ne p2, v5, :cond_3

    .line 586
    sget-object v6, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->NOT_NEED_STORAGE_FOREVER:Ljava/lang/String;

    invoke-static {p1, v6, v3}, Lcom/t4f/tgs/sdkfileserver/profile/utils/SPUtil;->get(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "requestAvatarPermissions...if 3"

    .line 587
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0, p1, p2}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->showSettingPrompt(Landroid/app/Activity;I)V

    return-void

    :cond_3
    const-string v3, "t4f_str_request_camera"

    .line 592
    invoke-static {p1, v3}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 593
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "t4f_str_request_storage"

    if-ne p2, v4, :cond_4

    :try_start_1
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 595
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    invoke-static {p1, v7}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    const-string v4, "android.permission.CAMERA"

    if-ne p2, v2, :cond_5

    .line 598
    :try_start_2
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-ne p2, v5, :cond_7

    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    .line 600
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v2, v3, :cond_6

    const-string v2, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 602
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_6
    invoke-static {p1, v7}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 606
    :cond_7
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 612
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 613
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "t4f_str_request_confirm"

    .line 614
    invoke-static {p1, v1}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$7;

    invoke-direct {v2, p0, p1, v6, p2}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$7;-><init>(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;Landroid/app/Activity;Ljava/util/List;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 627
    new-instance p2, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$8;

    invoke-direct {p2, p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$8;-><init>(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 647
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method

.method public retryRequestPermission(Landroid/app/Activity;I)V
    .locals 9

    const-string v0, "android.permission.CAMERA"

    const-string v1, "tgs.T4FProfile"

    :try_start_0
    const-string v2, "retryRequestPermission"

    .line 655
    invoke-static {v1, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "android.permission.READ_MEDIA_IMAGES"

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    const/16 v5, 0x69

    const/16 v6, 0x67

    if-ne p2, v6, :cond_0

    .line 659
    :try_start_1
    invoke-static {p1, v4}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_0
    if-ne p2, v5, :cond_1

    .line 661
    invoke-static {p1, v3}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    :cond_1
    :goto_0
    const/16 v7, 0x68

    const/4 v8, 0x1

    if-eqz v2, :cond_8

    const-string v2, "retryRequestPermission...if"

    .line 665
    invoke-static {v1, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    sget-boolean v1, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->mRetryRequestPermission:Z

    if-eqz v1, :cond_2

    .line 667
    invoke-virtual {p0, p1, p2}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->showSettingPrompt(Landroid/app/Activity;I)V

    return-void

    .line 671
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "t4f_str_retry_camera_prompt"

    .line 672
    invoke-static {p1, v2}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eq p2, v6, :cond_5

    if-ne p2, v5, :cond_3

    goto :goto_1

    :cond_3
    if-ne p2, v7, :cond_4

    .line 684
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 686
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    :goto_1
    const-string v0, "t4f_str_retry_storage_prompt"

    .line 674
    invoke-static {p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-ne p2, v6, :cond_6

    .line 676
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 678
    :cond_6
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v0, v3, :cond_7

    const-string v0, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 680
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    :cond_7
    :goto_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 690
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 691
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "t4f_str_retry_request_confirm"

    .line 692
    invoke-static {p1, v2}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$10;

    invoke-direct {v3, p0, p1, v1, p2}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$10;-><init>(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;Landroid/app/Activity;Ljava/util/List;I)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 702
    new-instance p2, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$11;

    invoke-direct {p2, p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$11;-><init>(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 722
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_4

    :cond_8
    const-string v0, "retryRequestPermission...else"

    .line 724
    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p2, v7, :cond_9

    const-string v0, "retryRequestPermission...else NOT_NEED_CAMERA_FOREVER"

    .line 726
    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    sget-object v0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->NOT_NEED_CAMERA_FOREVER:Ljava/lang/String;

    invoke-static {p1, v0, v8}, Lcom/t4f/tgs/sdkfileserver/profile/utils/SPUtil;->put(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_9
    if-eq p2, v6, :cond_a

    if-ne p2, v5, :cond_b

    :cond_a
    const-string v0, "retryRequestPermission...else NOT_NEED_ALBUM_FOREVER"

    .line 729
    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    sget-object v0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->NOT_NEED_STORAGE_FOREVER:Ljava/lang/String;

    invoke-static {p1, v0, v8}, Lcom/t4f/tgs/sdkfileserver/profile/utils/SPUtil;->put(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 733
    :cond_b
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->showSettingPrompt(Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    const/4 p1, 0x0

    .line 736
    sput-boolean p1, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->mRetryRequestPermission:Z

    .line 738
    :try_start_2
    invoke-direct {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->userCancel()V

    .line 739
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_4
    return-void
.end method

.method public showSettingPrompt(Landroid/app/Activity;I)V
    .locals 2

    const/4 v0, 0x0

    .line 752
    :try_start_0
    sput-boolean v0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->mRetryRequestPermission:Z

    const-string v0, "t4f_str_camera_permission_prompt"

    .line 754
    invoke-static {p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x67

    if-eq p2, v1, :cond_0

    const/16 v1, 0x69

    if-ne p2, v1, :cond_1

    :cond_0
    const-string p2, "t4f_str_storage_permission_prompt"

    .line 756
    invoke-static {p1, p2}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 759
    :cond_1
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 760
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const/4 v0, 0x1

    .line 761
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const-string v0, "t4f_str_setting"

    .line 762
    invoke-static {p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$13;

    invoke-direct {v0, p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$13;-><init>(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 775
    new-instance p2, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$14;

    invoke-direct {p2, p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$14;-><init>(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 795
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 797
    :catch_0
    invoke-direct {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->userCancel()V

    .line 798
    invoke-virtual {p0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->finish()V

    :goto_0
    return-void
.end method
