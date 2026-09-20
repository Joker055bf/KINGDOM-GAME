.class Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable$1;
.super Ljava/lang/Object;
.source "CropConfigParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;
    .locals 1

    .line 64
    new-instance v0, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    invoke-direct {v0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;
    .locals 0

    .line 69
    new-array p1, p1, [Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable$1;->newArray(I)[Lcom/ypx/imagepicker/bean/selectconfig/CropConfigParcelable;

    move-result-object p1

    return-object p1
.end method
