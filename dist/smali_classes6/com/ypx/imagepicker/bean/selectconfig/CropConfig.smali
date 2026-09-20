.class public Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;
.super Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;
.source "CropConfig.java"


# static fields
.field public static final STYLE_FILL:I = 0x1

.field public static final STYLE_GAP:I = 0x2


# instance fields
.field private cropGapBackgroundColor:I

.field private cropRatioX:I

.field private cropRatioY:I

.field private cropRectMargin:I

.field private cropRestoreInfo:Lcom/ypx/imagepicker/widget/cropimage/Info;

.field private cropStyle:I

.field private isCircle:Z

.field private isLessOriginalByte:Z

.field private isSingleCropCutNeedTop:Z

.field private maxOutPutByte:J

.field private outPutSize:Landroid/util/Size;

.field private saveInDCIM:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->cropRatioX:I

    .line 19
    iput v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->cropRatioY:I

    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->isCircle:Z

    .line 21
    iput v1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->cropRectMargin:I

    .line 22
    iput v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->cropStyle:I

    const/high16 v0, -0x1000000

    .line 23
    iput v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->cropGapBackgroundColor:I

    .line 25
    iput-boolean v1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->saveInDCIM:Z

    .line 31
    iput-boolean v1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->isSingleCropCutNeedTop:Z

    return-void
.end method


# virtual methods
.method public getCropGapBackgroundColor()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->cropGapBackgroundColor:I

    return v0
.end method

.method public getCropInfo()Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;
    .locals 3

    .line 142
    new-instance v0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    invoke-direct {v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;-><init>()V

    .line 143
    iget-boolean v1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->isCircle:Z

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->setCircle(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->getCropGapBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->setCropGapBackgroundColor(I)V

    .line 145
    invoke-virtual {p0}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->getCropRatioX()I

    move-result v1

    invoke-virtual {p0}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->getCropRatioY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->setCropRatio(II)V

    .line 146
    invoke-virtual {p0}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->getCropRectMargin()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->setCropRectMargin(I)V

    .line 147
    invoke-virtual {p0}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->getCropRestoreInfo()Lcom/ypx/imagepicker/widget/cropimage/Info;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->setCropRestoreInfo(Lcom/ypx/imagepicker/widget/cropimage/Info;)V

    .line 148
    invoke-virtual {p0}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->getCropStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->setCropStyle(I)V

    .line 149
    invoke-virtual {p0}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->isLessOriginalByte()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->setLessOriginalByte(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->getMaxOutPutByte()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->setMaxOutPutByte(J)V

    .line 151
    invoke-virtual {p0}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->isSaveInDCIM()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->saveInDCIM(Z)V

    return-object v0
.end method

.method public getCropRatioX()I
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->isCircle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 118
    :cond_0
    iget v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->cropRatioX:I

    return v0
.end method

.method public getCropRatioY()I
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->isCircle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 130
    :cond_0
    iget v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->cropRatioY:I

    return v0
.end method

.method public getCropRectMargin()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->cropRectMargin:I

    return v0
.end method

.method public getCropRestoreInfo()Lcom/ypx/imagepicker/widget/cropimage/Info;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->cropRestoreInfo:Lcom/ypx/imagepicker/widget/cropimage/Info;

    return-object v0
.end method

.method public getCropStyle()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->cropStyle:I

    return v0
.end method

.method public getMaxOutPutByte()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->maxOutPutByte:J

    return-wide v0
.end method

.method public getOutPutSize()Landroid/util/Size;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->outPutSize:Landroid/util/Size;

    return-object v0
.end method

.method public isCircle()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->isCircle:Z

    return v0
.end method

.method public isGap()Z
    .locals 2

    .line 134
    iget v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->cropStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLessOriginalByte()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->isLessOriginalByte:Z

    return v0
.end method

.method public isNeedPng()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->isCircle:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->getCropGapBackgroundColor()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSaveInDCIM()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->saveInDCIM:Z

    return v0
.end method

.method public isSingleCropCutNeedTop()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->isSingleCropCutNeedTop:Z

    return v0
.end method

.method public saveInDCIM(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->saveInDCIM:Z

    return-void
.end method

.method public setCircle(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->isCircle:Z

    return-void
.end method

.method public setCropGapBackgroundColor(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->cropGapBackgroundColor:I

    return-void
.end method

.method public setCropRatio(II)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->cropRatioX:I

    .line 123
    iput p2, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->cropRatioY:I

    return-void
.end method

.method public setCropRectMargin(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->cropRectMargin:I

    return-void
.end method

.method public setCropRestoreInfo(Lcom/ypx/imagepicker/widget/cropimage/Info;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->cropRestoreInfo:Lcom/ypx/imagepicker/widget/cropimage/Info;

    return-void
.end method

.method public setCropStyle(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->cropStyle:I

    return-void
.end method

.method public setLessOriginalByte(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->isLessOriginalByte:Z

    return-void
.end method

.method public setMaxOutPutByte(J)V
    .locals 0

    .line 54
    iput-wide p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->maxOutPutByte:J

    return-void
.end method

.method public setOutPutSize(Landroid/util/Size;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->outPutSize:Landroid/util/Size;

    return-void
.end method

.method public setSingleCropCutNeedTop(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfig;->isSingleCropCutNeedTop:Z

    return-void
.end method
