.class public Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;
.super Ljava/lang/Object;
.source "CropConfigParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;",
            ">;"
        }
    .end annotation
.end field

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

.field private saveInDCIM:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable$1;

    invoke-direct {v0}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable$1;-><init>()V

    sput-object v0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropRatioX:I

    .line 21
    iput v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropRatioY:I

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isCircle:Z

    .line 23
    iput v1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropRectMargin:I

    .line 24
    iput v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropStyle:I

    const/high16 v0, -0x1000000

    .line 25
    iput v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropGapBackgroundColor:I

    .line 27
    iput-boolean v1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->saveInDCIM:Z

    .line 33
    iput-boolean v1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isSingleCropCutNeedTop:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropRatioX:I

    .line 21
    iput v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropRatioY:I

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isCircle:Z

    .line 23
    iput v1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropRectMargin:I

    .line 24
    iput v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropStyle:I

    const/high16 v2, -0x1000000

    .line 25
    iput v2, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropGapBackgroundColor:I

    .line 27
    iput-boolean v1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->saveInDCIM:Z

    .line 33
    iput-boolean v1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isSingleCropCutNeedTop:Z

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropRatioX:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropRatioY:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isCircle:Z

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropRectMargin:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropStyle:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropGapBackgroundColor:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->saveInDCIM:Z

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->maxOutPutByte:J

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isLessOriginalByte:Z

    .line 57
    const-class v2, Lcom/ypx/imagepicker/widget/cropimage/Info;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/ypx/imagepicker/widget/cropimage/Info;

    iput-object v2, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropRestoreInfo:Lcom/ypx/imagepicker/widget/cropimage/Info;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isSingleCropCutNeedTop:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCropGapBackgroundColor()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropGapBackgroundColor:I

    return v0
.end method

.method public getCropRatioX()I
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isCircle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 143
    :cond_0
    iget v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropRatioX:I

    return v0
.end method

.method public getCropRatioY()I
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isCircle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 155
    :cond_0
    iget v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropRatioY:I

    return v0
.end method

.method public getCropRectMargin()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropRectMargin:I

    return v0
.end method

.method public getCropRestoreInfo()Lcom/ypx/imagepicker/widget/cropimage/Info;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropRestoreInfo:Lcom/ypx/imagepicker/widget/cropimage/Info;

    return-object v0
.end method

.method public getCropStyle()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropStyle:I

    return v0
.end method

.method public getMaxOutPutByte()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->maxOutPutByte:J

    return-wide v0
.end method

.method public isCircle()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isCircle:Z

    return v0
.end method

.method public isGap()Z
    .locals 2

    .line 159
    iget v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropStyle:I

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

    .line 83
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isLessOriginalByte:Z

    return v0
.end method

.method public isNeedPng()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isCircle:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->getCropGapBackgroundColor()I

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

    .line 99
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->saveInDCIM:Z

    return v0
.end method

.method public isSingleCropCutNeedTop()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isSingleCropCutNeedTop:Z

    return v0
.end method

.method public saveInDCIM(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->saveInDCIM:Z

    return-void
.end method

.method public setCircle(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isCircle:Z

    return-void
.end method

.method public setCropGapBackgroundColor(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropGapBackgroundColor:I

    return-void
.end method

.method public setCropRatio(II)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropRatioX:I

    .line 148
    iput p2, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropRatioY:I

    return-void
.end method

.method public setCropRectMargin(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropRectMargin:I

    return-void
.end method

.method public setCropRestoreInfo(Lcom/ypx/imagepicker/widget/cropimage/Info;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropRestoreInfo:Lcom/ypx/imagepicker/widget/cropimage/Info;

    return-void
.end method

.method public setCropStyle(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropStyle:I

    return-void
.end method

.method public setLessOriginalByte(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isLessOriginalByte:Z

    return-void
.end method

.method public setMaxOutPutByte(J)V
    .locals 0

    .line 79
    iput-wide p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->maxOutPutByte:J

    return-void
.end method

.method public setSingleCropCutNeedTop(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isSingleCropCutNeedTop:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 190
    iget v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropRatioX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropRatioY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isCircle:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 193
    iget v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropRectMargin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropGapBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->saveInDCIM:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 197
    iget-wide v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->maxOutPutByte:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 198
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isLessOriginalByte:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 199
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->cropRestoreInfo:Lcom/ypx/imagepicker/widget/cropimage/Info;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 200
    iget-boolean p2, p0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;->isSingleCropCutNeedTop:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
