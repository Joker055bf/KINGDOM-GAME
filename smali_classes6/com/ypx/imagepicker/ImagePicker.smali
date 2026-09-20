.class public Lcom/ypx/imagepicker/ImagePicker;
.super Ljava/lang/Object;
.source "ImagePicker.java"


# static fields
.field public static DEFAULT_FILE_NAME:Ljava/lang/String; = "imagePicker"

.field public static final INTENT_KEY_PICKER_RESULT:Ljava/lang/String; = "pickerResult"

.field public static final REQ_CAMERA:I = 0x597

.field public static final REQ_PICKER_RESULT_CODE:I = 0x599

.field public static final REQ_STORAGE:I = 0x598

.field public static isOriginalImage:Z = false

.field public static isUseIjkPlayer:Z = false

.field private static previewWithHighQuality:Z = false

.field private static themeColor:I = -0x10000


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllCache()V
    .locals 0

    return-void
.end method

.method public static closePickerWithCallback(Lcom/ypx/imagepicker/bean/ImageItem;)V
    .locals 1

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-static {v0}, Lcom/ypx/imagepicker/ImagePicker;->closePickerWithCallback(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static closePickerWithCallback(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)V"
        }
    .end annotation

    .line 353
    invoke-static {}, Lcom/ypx/imagepicker/activity/PickerActivityManager;->getLastActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 354
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "pickerResult"

    .line 358
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 p0, 0x599

    .line 359
    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 360
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 361
    invoke-static {}, Lcom/ypx/imagepicker/activity/PickerActivityManager;->clear()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static crop(Landroid/app/Activity;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->intentCrop(Landroid/app/Activity;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V

    return-void

    .line 200
    :cond_1
    :goto_0
    sget-object p1, Lcom/ypx/imagepicker/bean/PickerError;->PRESENTER_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result p1

    invoke-static {p0, p1}, Lcom/ypx/imagepicker/helper/PickerErrorExecutor;->executeError(Landroid/app/Activity;I)V

    return-void
.end method

.method public static crop(Landroid/app/Activity;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;Ljava/lang/String;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->intentCrop(Landroid/app/Activity;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;Ljava/lang/String;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V

    return-void

    .line 181
    :cond_1
    :goto_0
    sget-object p1, Lcom/ypx/imagepicker/bean/PickerError;->PRESENTER_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result p1

    invoke-static {p0, p1}, Lcom/ypx/imagepicker/helper/PickerErrorExecutor;->executeError(Landroid/app/Activity;I)V

    return-void
.end method

.method public static getThemeColor()I
    .locals 1

    .line 376
    sget v0, Lcom/ypx/imagepicker/ImagePicker;->themeColor:I

    return v0
.end method

.method public static isPreviewWithHighQuality()Z
    .locals 1

    .line 75
    sget-boolean v0, Lcom/ypx/imagepicker/ImagePicker;->previewWithHighQuality:Z

    return v0
.end method

.method public static preview(Landroid/app/Activity;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Ljava/util/ArrayList;ILcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/Activity;",
            "Lcom/ypx/imagepicker/presenter/IPickerPresenter;",
            "Ljava/util/ArrayList<",
            "TT;>;I",
            "Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 217
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    new-instance v4, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-direct {v4}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;-><init>()V

    .line 221
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setMaxCount(I)V

    const/4 v2, 0x0

    .line 222
    invoke-static {p0, p2}, Lcom/ypx/imagepicker/ImagePicker;->transitArray(Landroid/app/Activity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v7, Lcom/ypx/imagepicker/ImagePicker$2;

    invoke-direct {v7, p4}, Lcom/ypx/imagepicker/ImagePicker$2;-><init>(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V

    move-object v1, p0

    move-object v5, p1

    move v6, p3

    invoke-static/range {v1 .. v7}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->intent(Landroid/app/Activity;Lcom/ypx/imagepicker/bean/ImageSet;Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;Lcom/ypx/imagepicker/presenter/IPickerPresenter;ILcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$PreviewResult;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static provideAllMediaItems(Landroidx/fragment/app/FragmentActivity;Ljava/util/Set;Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/util/Set<",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            ">;",
            "Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemProvider;",
            ")V"
        }
    .end annotation

    .line 333
    new-instance v0, Lcom/ypx/imagepicker/bean/ImageSet;

    invoke-direct {v0}, Lcom/ypx/imagepicker/bean/ImageSet;-><init>()V

    const-string v1, "-1"

    .line 334
    iput-object v1, v0, Lcom/ypx/imagepicker/bean/ImageSet;->id:Ljava/lang/String;

    .line 335
    invoke-static {p0, v0, p1, p2}, Lcom/ypx/imagepicker/ImagePicker;->provideMediaItemsFromSet(Landroidx/fragment/app/FragmentActivity;Lcom/ypx/imagepicker/bean/ImageSet;Ljava/util/Set;Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemProvider;)V

    return-void
.end method

.method public static provideMediaItemsFromSet(Landroidx/fragment/app/FragmentActivity;Lcom/ypx/imagepicker/bean/ImageSet;Ljava/util/Set;Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lcom/ypx/imagepicker/bean/ImageSet;",
            "Ljava/util/Set<",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            ">;",
            "Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemProvider;",
            ")V"
        }
    .end annotation

    .line 292
    invoke-static {p0}, Lcom/ypx/imagepicker/utils/PPermissionUtils;->hasStoragePermissions(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-static {p0, p1}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->create(Landroidx/fragment/app/FragmentActivity;Lcom/ypx/imagepicker/bean/ImageSet;)Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->setMimeTypeSet(Ljava/util/Set;)Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->loadMediaItems(Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemProvider;)V

    :cond_0
    return-void
.end method

.method public static provideMediaItemsFromSetWithPreload(Landroidx/fragment/app/FragmentActivity;Lcom/ypx/imagepicker/bean/ImageSet;Ljava/util/Set;ILcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemPreloadProvider;Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lcom/ypx/imagepicker/bean/ImageSet;",
            "Ljava/util/Set<",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            ">;I",
            "Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemPreloadProvider;",
            "Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemProvider;",
            ")V"
        }
    .end annotation

    .line 313
    invoke-static {p0}, Lcom/ypx/imagepicker/utils/PPermissionUtils;->hasStoragePermissions(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-static {p0, p1}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->create(Landroidx/fragment/app/FragmentActivity;Lcom/ypx/imagepicker/bean/ImageSet;)Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    move-result-object p0

    .line 315
    invoke-virtual {p0, p2}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->setMimeTypeSet(Ljava/util/Set;)Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    move-result-object p0

    .line 316
    invoke-virtual {p0, p3}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->preloadSize(I)Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    move-result-object p0

    .line 317
    invoke-virtual {p0, p4}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->setPreloadProvider(Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemPreloadProvider;)V

    .line 318
    invoke-virtual {p0, p5}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->loadMediaItems(Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemProvider;)V

    :cond_0
    return-void
.end method

.method public static provideMediaSets(Landroidx/fragment/app/FragmentActivity;Ljava/util/Set;Lcom/ypx/imagepicker/data/MediaSetsDataSource$MediaSetProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/util/Set<",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            ">;",
            "Lcom/ypx/imagepicker/data/MediaSetsDataSource$MediaSetProvider;",
            ")V"
        }
    .end annotation

    .line 275
    invoke-static {p0}, Lcom/ypx/imagepicker/utils/PPermissionUtils;->hasStoragePermissions(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-static {p0}, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->create(Landroidx/fragment/app/FragmentActivity;)Lcom/ypx/imagepicker/data/MediaSetsDataSource;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->setMimeTypeSet(Ljava/util/Set;)Lcom/ypx/imagepicker/data/MediaSetsDataSource;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ypx/imagepicker/data/MediaSetsDataSource;->loadMediaSets(Lcom/ypx/imagepicker/data/MediaSetsDataSource$MediaSetProvider;)V

    :cond_0
    return-void
.end method

.method public static setPreviewWithHighQuality(Z)V
    .locals 0

    .line 71
    sput-boolean p0, Lcom/ypx/imagepicker/ImagePicker;->previewWithHighQuality:Z

    return-void
.end method

.method public static setThemeColor(I)V
    .locals 0

    .line 380
    sput p0, Lcom/ypx/imagepicker/ImagePicker;->themeColor:I

    return-void
.end method

.method public static takePhoto(Landroid/app/Activity;Ljava/lang/String;ZLcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Img_"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 113
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/ypx/imagepicker/helper/CameraCompat;->takePhoto(Landroid/app/Activity;Ljava/lang/String;ZLcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V

    return-void
.end method

.method public static takePhotoAndCrop(Landroid/app/Activity;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V
    .locals 1

    if-nez p1, :cond_0

    .line 151
    sget-object p1, Lcom/ypx/imagepicker/bean/PickerError;->PRESENTER_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result p1

    invoke-static {p0, p1}, Lcom/ypx/imagepicker/helper/PickerErrorExecutor;->executeError(Landroid/app/Activity;I)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 155
    sget-object p1, Lcom/ypx/imagepicker/bean/PickerError;->SELECT_CONFIG_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result p1

    invoke-static {p0, p1}, Lcom/ypx/imagepicker/helper/PickerErrorExecutor;->executeError(Landroid/app/Activity;I)V

    return-void

    .line 158
    :cond_1
    new-instance v0, Lcom/ypx/imagepicker/ImagePicker$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ypx/imagepicker/ImagePicker$1;-><init>(Landroid/app/Activity;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/ypx/imagepicker/ImagePicker;->takePhoto(Landroid/app/Activity;Ljava/lang/String;ZLcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V

    return-void
.end method

.method public static takeVideo(Landroid/app/Activity;Ljava/lang/String;JZLcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Video_"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v1, p1

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    .line 134
    invoke-static/range {v0 .. v5}, Lcom/ypx/imagepicker/helper/CameraCompat;->takeVideo(Landroid/app/Activity;Ljava/lang/String;JZLcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V

    return-void
.end method

.method public static transitArray(Landroid/app/Activity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 245
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 246
    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/ypx/imagepicker/bean/ImageItem;->withPath(Landroid/content/Context;Ljava/lang/String;)Lcom/ypx/imagepicker/bean/ImageItem;

    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    :cond_0
    instance-of v2, v1, Lcom/ypx/imagepicker/bean/ImageItem;

    if-eqz v2, :cond_1

    .line 249
    check-cast v1, Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    :cond_1
    instance-of v2, v1, Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 251
    check-cast v1, Landroid/net/Uri;

    .line 252
    new-instance v2, Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-direct {v2}, Lcom/ypx/imagepicker/bean/ImageItem;-><init>()V

    .line 253
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    .line 254
    invoke-static {p0, v1}, Lcom/ypx/imagepicker/utils/PBitmapUtils;->getMimeTypeFromUri(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ypx/imagepicker/bean/ImageItem;->mimeType:Ljava/lang/String;

    .line 255
    iget-object v3, v2, Lcom/ypx/imagepicker/bean/ImageItem;->mimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/ypx/imagepicker/bean/MimeType;->isVideo(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ypx/imagepicker/bean/ImageItem;->setVideo(Z)V

    .line 256
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ypx/imagepicker/bean/ImageItem;->setUriPath(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ImageList item must be instanceof String or Uri or ImageItem"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object v0
.end method

.method public static withCrop(Lcom/ypx/imagepicker/presenter/IPickerPresenter;)Lcom/ypx/imagepicker/builder/CropPickerBuilder;
    .locals 1

    .line 84
    new-instance v0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;

    invoke-direct {v0, p0}, Lcom/ypx/imagepicker/builder/CropPickerBuilder;-><init>(Lcom/ypx/imagepicker/presenter/IPickerPresenter;)V

    return-object v0
.end method

.method public static withMulti(Lcom/ypx/imagepicker/presenter/IPickerPresenter;)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    .line 94
    new-instance v0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;

    invoke-direct {v0, p0}, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;-><init>(Lcom/ypx/imagepicker/presenter/IPickerPresenter;)V

    return-object v0
.end method
