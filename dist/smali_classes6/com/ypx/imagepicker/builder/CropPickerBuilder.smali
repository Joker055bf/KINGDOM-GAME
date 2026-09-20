.class public Lcom/ypx/imagepicker/builder/CropPickerBuilder;
.super Ljava/lang/Object;
.source "CropPickerBuilder.java"


# instance fields
.field private presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

.field private selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;


# direct methods
.method public constructor <init>(Lcom/ypx/imagepicker/presenter/IPickerPresenter;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    .line 35
    new-instance p1, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-direct {p1}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;-><init>()V

    iput-object p1, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    return-void
.end method

.method private checkVideoAndImage()V
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->setSinglePickImageOrVideoType(Z)V

    .line 248
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 251
    invoke-virtual {v0, v2}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->setShowVideo(Z)V

    .line 252
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0, v2}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->setShowImage(Z)V

    .line 253
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->getMimeTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ypx/imagepicker/bean/MimeType;

    .line 254
    invoke-static {}, Lcom/ypx/imagepicker/bean/MimeType;->ofVideo()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    iget-object v3, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v3, v1}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->setShowVideo(Z)V

    .line 257
    :cond_2
    invoke-static {}, Lcom/ypx/imagepicker/bean/MimeType;->ofImage()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    iget-object v2, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v2, v1}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->setShowImage(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public assignGapState(Z)Lcom/ypx/imagepicker/builder/CropPickerBuilder;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->setAssignGapState(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 177
    invoke-virtual {p0, p1, p1}, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->setFirstImageItemSize(II)Lcom/ypx/imagepicker/builder/CropPickerBuilder;

    :cond_0
    return-object p0
.end method

.method public filterMimeTypes(Ljava/util/Set;)Lcom/ypx/imagepicker/builder/CropPickerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            ">;)",
            "Lcom/ypx/imagepicker/builder/CropPickerBuilder;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->getMimeTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs filterMimeTypes([Lcom/ypx/imagepicker/bean/MimeType;)Lcom/ypx/imagepicker/builder/CropPickerBuilder;
    .locals 1

    if-eqz p1, :cond_1

    .line 119
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 123
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->filterMimeTypes(Ljava/util/Set;)Lcom/ypx/imagepicker/builder/CropPickerBuilder;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public mimeTypes(Ljava/util/Set;)Lcom/ypx/imagepicker/builder/CropPickerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            ">;)",
            "Lcom/ypx/imagepicker/builder/CropPickerBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 93
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->setMimeTypes(Ljava/util/Set;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public varargs mimeTypes([Lcom/ypx/imagepicker/bean/MimeType;)Lcom/ypx/imagepicker/builder/CropPickerBuilder;
    .locals 1

    if-eqz p1, :cond_1

    .line 106
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 110
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->mimeTypes(Ljava/util/Set;)Lcom/ypx/imagepicker/builder/CropPickerBuilder;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public pick(Landroid/app/Activity;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V
    .locals 2

    .line 217
    invoke-direct {p0}, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->checkVideoAndImage()V

    .line 218
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->getMimeTypes()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->getMimeTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    iget-object v1, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-static {p1, v0, v1, p2}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropActivity;->intent(Landroid/app/Activity;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V

    return-void

    .line 219
    :cond_1
    :goto_0
    sget-object v0, Lcom/ypx/imagepicker/bean/PickerError;->MIMETYPES_EMPTY:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result v0

    invoke-static {p2, v0}, Lcom/ypx/imagepicker/helper/PickerErrorExecutor;->executeError(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;I)V

    .line 220
    iget-object p2, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    sget v0, Lcom/ypx/imagepicker/R$string;->picker_str_tip_mimeTypes_empty:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->tip(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public pickWithFragment(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;
    .locals 4

    .line 233
    invoke-direct {p0}, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->checkVideoAndImage()V

    .line 234
    new-instance v0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;

    invoke-direct {v0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;-><init>()V

    .line 235
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ICropPickerBindPresenter"

    .line 236
    iget-object v3, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "selectConfig"

    .line 237
    iget-object v3, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 238
    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->setArguments(Landroid/os/Bundle;)V

    .line 239
    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->setOnImagePickCompleteListener(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V

    return-object v0
.end method

.method public setColumnCount(I)Lcom/ypx/imagepicker/builder/CropPickerBuilder;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->setColumnCount(I)V

    return-object p0
.end method

.method public setFirstImageItem(Lcom/ypx/imagepicker/bean/ImageItem;)Lcom/ypx/imagepicker/builder/CropPickerBuilder;
    .locals 1

    if-eqz p1, :cond_1

    .line 189
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->hasFirstImageItem()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget v0, p1, Lcom/ypx/imagepicker/bean/ImageItem;->width:I

    if-lez v0, :cond_1

    iget v0, p1, Lcom/ypx/imagepicker/bean/ImageItem;->height:I

    if-lez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->setFirstImageItem(Lcom/ypx/imagepicker/bean/ImageItem;)V

    nop

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setFirstImageItemSize(II)Lcom/ypx/imagepicker/builder/CropPickerBuilder;
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 154
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->hasFirstImageItem()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 157
    :cond_0
    new-instance v0, Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-direct {v0}, Lcom/ypx/imagepicker/bean/ImageItem;-><init>()V

    const/4 v1, 0x0

    .line 158
    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/bean/ImageItem;->setVideo(Z)V

    .line 159
    iput p1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->width:I

    .line 160
    iput p2, v0, Lcom/ypx/imagepicker/bean/ImageItem;->height:I

    sub-int/2addr p1, p2

    .line 161
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 p2, 0x5

    if-ge p1, p2, :cond_1

    .line 162
    sget p1, Lcom/ypx/imagepicker/bean/ImageCropMode;->CropViewScale_FULL:I

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/ImageItem;->setCropMode(I)V

    goto :goto_0

    .line 164
    :cond_1
    sget p1, Lcom/ypx/imagepicker/bean/ImageCropMode;->CropViewScale_FIT:I

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/ImageItem;->setCropMode(I)V

    .line 166
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->setFirstImageItem(Lcom/ypx/imagepicker/bean/ImageItem;)Lcom/ypx/imagepicker/builder/CropPickerBuilder;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    return-object p0
.end method

.method public setMaxCount(I)Lcom/ypx/imagepicker/builder/CropPickerBuilder;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->setMaxCount(I)V

    return-object p0
.end method

.method public setMaxVideoDuration(J)Lcom/ypx/imagepicker/builder/CropPickerBuilder;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0, p1, p2}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->setMaxVideoDuration(J)V

    return-object p0
.end method

.method public setMinVideoDuration(J)Lcom/ypx/imagepicker/builder/CropPickerBuilder;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0, p1, p2}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->setMinVideoDuration(J)V

    return-object p0
.end method

.method public setSinglePickWithAutoComplete(Z)Lcom/ypx/imagepicker/builder/CropPickerBuilder;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->setSinglePickAutoComplete(Z)V

    return-object p0
.end method

.method public setVideoSinglePick(Z)Lcom/ypx/imagepicker/builder/CropPickerBuilder;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->setVideoSinglePick(Z)V

    return-object p0
.end method

.method public showCamera(Z)Lcom/ypx/imagepicker/builder/CropPickerBuilder;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->setShowCamera(Z)V

    return-object p0
.end method

.method public withSelectConfig(Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;)Lcom/ypx/imagepicker/builder/CropPickerBuilder;
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/ypx/imagepicker/builder/CropPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;

    return-object p0
.end method
