.class public Lcom/ypx/imagepicker/helper/CameraCompat;
.super Ljava/lang/Object;
.source "CameraCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTakePhotoIntent(Landroid/app/Activity;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .line 132
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "output"

    .line 144
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 145
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method private static getTakeVideoIntent(Landroid/app/Activity;Landroid/net/Uri;J)Landroid/content/Intent;
    .locals 2

    .line 151
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "output"

    .line 162
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-wide/16 v0, 0x1

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    const-wide/16 v0, 0x3e8

    .line 164
    div-long/2addr p2, v0

    const-string p1, "android.intent.extra.durationLimit"

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    const/4 p1, 0x2

    .line 166
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    return-object p0
.end method

.method public static takePhoto(Landroid/app/Activity;Ljava/lang/String;ZLcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V
    .locals 10

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/ypx/imagepicker/utils/PBitmapUtils;->getPickerFileDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-static {p0}, Lcom/ypx/imagepicker/utils/PPermissionUtils;->hasCameraPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/ypx/imagepicker/utils/PickerFileProvider;->getUriForFile(Landroid/app/Activity;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 49
    invoke-static {p0}, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->init(Landroid/app/Activity;)Lcom/ypx/imagepicker/helper/launcher/PLauncher;

    move-result-object v0

    invoke-static {p0, v7}, Lcom/ypx/imagepicker/helper/CameraCompat;->getTakePhotoIntent(Landroid/app/Activity;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v8

    new-instance v9, Lcom/ypx/imagepicker/helper/CameraCompat$1;

    move-object v1, v9

    move-object v3, p3

    move v4, p2

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/ypx/imagepicker/helper/CameraCompat$1;-><init>(Ljava/lang/String;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;ZLandroid/app/Activity;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v8, v9}, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->startActivityForResult(Landroid/content/Intent;Lcom/ypx/imagepicker/helper/launcher/PLauncher$Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static takeVideo(Landroid/app/Activity;Ljava/lang/String;JZLcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V
    .locals 8

    .line 95
    invoke-static {p0}, Lcom/ypx/imagepicker/utils/PPermissionUtils;->hasCameraPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/ypx/imagepicker/utils/PBitmapUtils;->getPickerFileDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/ypx/imagepicker/utils/PickerFileProvider;->getUriForFile(Landroid/app/Activity;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 101
    invoke-static {p0}, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->init(Landroid/app/Activity;)Lcom/ypx/imagepicker/helper/launcher/PLauncher;

    move-result-object v0

    invoke-static {p0, v7, p2, p3}, Lcom/ypx/imagepicker/helper/CameraCompat;->getTakeVideoIntent(Landroid/app/Activity;Landroid/net/Uri;J)Landroid/content/Intent;

    move-result-object p2

    new-instance p3, Lcom/ypx/imagepicker/helper/CameraCompat$2;

    move-object v1, p3

    move-object v3, p5

    move v4, p4

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/ypx/imagepicker/helper/CameraCompat$2;-><init>(Ljava/lang/String;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;ZLandroid/app/Activity;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, p2, p3}, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->startActivityForResult(Landroid/content/Intent;Lcom/ypx/imagepicker/helper/launcher/PLauncher$Callback;)V

    :cond_1
    :goto_0
    return-void
.end method
