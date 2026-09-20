.class public Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;
.super Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;
.source "CropSelectConfig.java"


# instance fields
.field private assignGapState:Z

.field private firstImageItem:Lcom/ypx/imagepicker/bean/ImageItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->assignGapState:Z

    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->setSinglePickImageOrVideoType(Z)V

    return-void
.end method


# virtual methods
.method public getFirstImageItem()Lcom/ypx/imagepicker/bean/ImageItem;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->firstImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    return-object v0
.end method

.method public hasFirstImageItem()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->firstImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/ypx/imagepicker/bean/ImageItem;->width:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->firstImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    iget v0, v0, Lcom/ypx/imagepicker/bean/ImageItem;->height:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAssignGapState()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->assignGapState:Z

    return v0
.end method

.method public setAssignGapState(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->assignGapState:Z

    return-void
.end method

.method public setFirstImageItem(Lcom/ypx/imagepicker/bean/ImageItem;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropSelectConfig;->firstImageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    return-void
.end method
