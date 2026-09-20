.class public Lcom/ypx/imagepicker/widget/cropimage/Info;
.super Ljava/lang/Object;
.source "Info.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ypx/imagepicker/widget/cropimage/Info;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCropX:F

.field public mCropY:F

.field public mDegrees:F

.field public mImgRect:Landroid/graphics/RectF;

.field public mScale:F

.field public mScaleType:Ljava/lang/String;

.field public mWidgetRect:Landroid/graphics/RectF;

.field public transitX:F

.field public transitY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/ypx/imagepicker/widget/cropimage/Info$1;

    invoke-direct {v0}, Lcom/ypx/imagepicker/widget/cropimage/Info$1;-><init>()V

    sput-object v0, Lcom/ypx/imagepicker/widget/cropimage/Info;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FLjava/lang/String;FFFFF)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mImgRect:Landroid/graphics/RectF;

    .line 19
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mWidgetRect:Landroid/graphics/RectF;

    .line 37
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 38
    iget-object p1, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 39
    iput-object p4, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mScaleType:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mDegrees:F

    .line 41
    iput p5, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mCropX:F

    .line 42
    iput p6, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mCropY:F

    .line 43
    iput p7, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->transitX:F

    .line 44
    iput p8, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->transitY:F

    .line 45
    iput p9, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mScale:F

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mImgRect:Landroid/graphics/RectF;

    .line 19
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mWidgetRect:Landroid/graphics/RectF;

    .line 49
    const-class v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mImgRect:Landroid/graphics/RectF;

    .line 50
    const-class v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mWidgetRect:Landroid/graphics/RectF;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mScaleType:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mDegrees:F

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mCropX:F

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mCropY:F

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->transitX:F

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->transitY:F

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mScale:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mScaleType:Ljava/lang/String;

    invoke-static {v0}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 97
    iget-object v0, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 98
    iget-object p2, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mScaleType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget p2, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mDegrees:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 100
    iget p2, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mCropX:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 101
    iget p2, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mCropY:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 102
    iget p2, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->transitX:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 103
    iget p2, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->transitY:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 104
    iget p2, p0, Lcom/ypx/imagepicker/widget/cropimage/Info;->mScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
