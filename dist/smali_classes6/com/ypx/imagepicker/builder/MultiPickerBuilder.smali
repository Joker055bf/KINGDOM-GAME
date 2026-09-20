.class public Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
.super Ljava/lang/Object;
.source "MultiPickerBuilder.java"


# instance fields
.field private presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

.field private selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;


# direct methods
.method public constructor <init>(Lcom/ypx/imagepicker/presenter/IPickerPresenter;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    .line 38
    new-instance p1, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-direct {p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;-><init>()V

    iput-object p1, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    return-void
.end method

.method private checkVideoAndImage()V
    .locals 4

    .line 393
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 396
    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setShowVideo(Z)V

    .line 397
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setShowImage(Z)V

    .line 398
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->getMimeTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ypx/imagepicker/bean/MimeType;

    .line 399
    invoke-static {}, Lcom/ypx/imagepicker/bean/MimeType;->ofVideo()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 400
    iget-object v2, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v2, v3}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setShowVideo(Z)V

    .line 402
    :cond_2
    invoke-static {}, Lcom/ypx/imagepicker/bean/MimeType;->ofImage()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    iget-object v1, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v1, v3}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setShowImage(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private transitArray(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 413
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 414
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 415
    new-instance v2, Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-direct {v2}, Lcom/ypx/imagepicker/bean/ImageItem;-><init>()V

    .line 416
    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    .line 417
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 418
    :cond_0
    instance-of v2, v1, Lcom/ypx/imagepicker/bean/ImageItem;

    if-eqz v2, :cond_1

    .line 419
    check-cast v1, Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "ImageList item must be instanceof String or ImageItem"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public crop(Landroid/app/Activity;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V
    .locals 3

    const/4 v0, 0x1

    .line 369
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->setMaxCount(I)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;

    .line 370
    invoke-static {}, Lcom/ypx/imagepicker/bean/MimeType;->ofVideo()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->filterMimeTypes(Ljava/util/Set;)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;

    const/4 v1, 0x0

    .line 371
    invoke-virtual {p0, v1}, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->setSinglePickImageOrVideoType(Z)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;

    .line 372
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->setSinglePickWithAutoComplete(Z)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;

    .line 373
    invoke-virtual {p0, v1}, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->setVideoSinglePick(Z)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;

    const/4 v2, 0x0

    .line 374
    invoke-virtual {p0, v2}, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->setShieldList(Ljava/util/ArrayList;)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;

    .line 375
    invoke-virtual {p0, v2}, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->setLastImageList(Ljava/util/ArrayList;)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;

    .line 376
    invoke-virtual {p0, v1}, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->setPreview(Z)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;

    .line 377
    iget-object v1, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setSelectMode(I)V

    .line 378
    iget-object v1, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isCircle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v1, v0, v0}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setCropRatio(II)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->getMimeTypes()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->getMimeTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    iget-object v1, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    invoke-static {p1, v0, v1, p2}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->intent(Landroid/app/Activity;Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V

    return-void

    .line 382
    :cond_2
    :goto_0
    sget-object v0, Lcom/ypx/imagepicker/bean/PickerError;->MIMETYPES_EMPTY:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result v0

    invoke-static {p2, v0}, Lcom/ypx/imagepicker/helper/PickerErrorExecutor;->executeError(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;I)V

    .line 383
    iget-object p2, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    sget v0, Lcom/ypx/imagepicker/R$string;->picker_str_tip_mimeTypes_empty:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->tip(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public cropAsCircle()Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setCircle(Z)V

    return-object p0
.end method

.method public cropGapBackgroundColor(I)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setCropGapBackgroundColor(I)V

    return-object p0
.end method

.method public cropRectMinMargin(I)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setCropRectMargin(I)V

    return-object p0
.end method

.method public cropSaveInDCIM(Z)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->saveInDCIM(Z)V

    return-object p0
.end method

.method public cropStyle(I)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setCropStyle(I)V

    return-object p0
.end method

.method public filterMimeTypes(Ljava/util/Set;)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            ">;)",
            "Lcom/ypx/imagepicker/builder/MultiPickerBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->getMimeTypes()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->getMimeTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public varargs filterMimeTypes([Lcom/ypx/imagepicker/bean/MimeType;)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    if-eqz p1, :cond_1

    .line 124
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 128
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->filterMimeTypes(Ljava/util/Set;)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public mimeTypes(Ljava/util/Set;)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            ">;)",
            "Lcom/ypx/imagepicker/builder/MultiPickerBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 137
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setMimeTypes(Ljava/util/Set;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public varargs mimeTypes([Lcom/ypx/imagepicker/bean/MimeType;)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    if-eqz p1, :cond_1

    .line 99
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->mimeTypes(Ljava/util/Set;)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public pick(Landroid/app/Activity;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V
    .locals 2

    .line 353
    invoke-direct {p0}, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->checkVideoAndImage()V

    .line 354
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->getMimeTypes()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->getMimeTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    iget-object v1, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    invoke-static {p1, v0, v1, p2}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerActivity;->intent(Landroid/app/Activity;Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V

    return-void

    .line 355
    :cond_1
    :goto_0
    sget-object v0, Lcom/ypx/imagepicker/bean/PickerError;->MIMETYPES_EMPTY:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result v0

    invoke-static {p2, v0}, Lcom/ypx/imagepicker/helper/PickerErrorExecutor;->executeError(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;I)V

    .line 356
    iget-object p2, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    sget v0, Lcom/ypx/imagepicker/R$string;->picker_str_tip_mimeTypes_empty:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->tip(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public pickWithFragment(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;
    .locals 4

    .line 336
    invoke-direct {p0}, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->checkVideoAndImage()V

    .line 337
    new-instance v0, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;

    invoke-direct {v0}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;-><init>()V

    .line 338
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MultiSelectConfig"

    .line 339
    iget-object v3, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "IPickerPresenter"

    .line 340
    iget-object v3, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->presenter:Lcom/ypx/imagepicker/presenter/IPickerPresenter;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 341
    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 342
    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/activity/multi/MultiImagePickerFragment;->setOnImagePickCompleteListener(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V

    return-object v0
.end method

.method public setColumnCount(I)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setColumnCount(I)V

    return-object p0
.end method

.method public setCropRatio(II)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, p1, p2}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setCropRatio(II)V

    return-object p0
.end method

.method public setDefaultOriginal(Z)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setDefaultOriginal(Z)V

    return-object p0
.end method

.method public setLandscapeOrientation(ZZ)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setLandscape(Z)V

    .line 64
    iget-object p1, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {p1, p2}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setReverseLandscape(Z)V

    return-object p0
.end method

.method public setLanguageInGame(Ljava/lang/String;)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setLanguageInGame(Ljava/lang/String;)V

    return-object p0
.end method

.method public setLastImageList(Ljava/util/ArrayList;)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Lcom/ypx/imagepicker/builder/MultiPickerBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 237
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->transitArray(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setLastImageList(Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setMaxCount(I)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setMaxCount(I)V

    return-object p0
.end method

.method public setMaxVideoDuration(J)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, p1, p2}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setMaxVideoDuration(J)V

    return-object p0
.end method

.method public setMinVideoDuration(J)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, p1, p2}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setMinVideoDuration(J)V

    return-object p0
.end method

.method public setOriginal(Z)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setShowOriginalCheckBox(Z)V

    return-object p0
.end method

.method public setPreview(Z)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setPreview(Z)V

    return-object p0
.end method

.method public setPreviewVideo(Z)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setCanPreviewVideo(Z)V

    return-object p0
.end method

.method public setSelectMode(I)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setSelectMode(I)V

    return-object p0
.end method

.method public setShieldList(Ljava/util/ArrayList;)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Lcom/ypx/imagepicker/builder/MultiPickerBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 225
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->transitArray(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setShieldImageList(Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setSingleCropCutNeedTop(Z)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setSingleCropCutNeedTop(Z)V

    return-object p0
.end method

.method public setSinglePickImageOrVideoType(Z)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setSinglePickImageOrVideoType(Z)V

    return-object p0
.end method

.method public setSinglePickWithAutoComplete(Z)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setSinglePickAutoComplete(Z)V

    return-object p0
.end method

.method public setVideoSinglePick(Z)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setVideoSinglePick(Z)V

    return-object p0
.end method

.method public showCamera(Z)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setShowCamera(Z)V

    return-object p0
.end method

.method public showCameraOnlyInAllMediaSet(Z)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    invoke-virtual {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->setShowCameraInAllMedia(Z)V

    return-object p0
.end method

.method public withMultiSelectConfig(Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;)Lcom/ypx/imagepicker/builder/MultiPickerBuilder;
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/ypx/imagepicker/builder/MultiPickerBuilder;->selectConfig:Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;

    return-object p0
.end method
