.class public Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;
.super Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;
.source "MultiSelectConfig.java"


# instance fields
.field private isCanEditPic:Z

.field private isCanPreviewVideo:Z

.field private isDefaultOriginal:Z

.field private isPreview:Z

.field private isShowOriginalCheckBox:Z

.field private lastImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private selectMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isCanPreviewVideo:Z

    .line 19
    iput-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isPreview:Z

    .line 21
    iput v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->selectMode:I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->lastImageList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getLastImageList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->lastImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectMode()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->selectMode:I

    return v0
.end method

.method public isCanEditPic()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isCanEditPic:Z

    return v0
.end method

.method public isCanPreviewVideo()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isCanPreviewVideo:Z

    return v0
.end method

.method public isDefaultOriginal()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isDefaultOriginal:Z

    return v0
.end method

.method public isLastItem(Lcom/ypx/imagepicker/bean/ImageItem;)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->lastImageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->lastImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPreview()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isPreview:Z

    return v0
.end method

.method public isShowOriginalCheckBox()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isShowOriginalCheckBox:Z

    return v0
.end method

.method public setCanEditPic(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isCanEditPic:Z

    return-void
.end method

.method public setCanPreviewVideo(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isCanPreviewVideo:Z

    return-void
.end method

.method public setDefaultOriginal(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isDefaultOriginal:Z

    return-void
.end method

.method public setLastImageList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->lastImageList:Ljava/util/ArrayList;

    return-void
.end method

.method public setPreview(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isPreview:Z

    return-void
.end method

.method public setSelectMode(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->selectMode:I

    return-void
.end method

.method public setShowOriginalCheckBox(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;->isShowOriginalCheckBox:Z

    return-void
.end method
