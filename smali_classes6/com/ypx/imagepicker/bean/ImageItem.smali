.class public Lcom/ypx/imagepicker/bean/ImageItem;
.super Ljava/lang/Object;
.source "ImageItem.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x2f974a2c63a59b4eL


# instance fields
.field private cropMode:I

.field private cropRestoreInfo:Lcom/ypx/imagepicker/widget/cropimage/Info;

.field private cropUrl:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public duration:J

.field public durationFormat:Ljava/lang/String;

.field public height:I

.field public id:J

.field private imageFilterPath:Ljava/lang/String;

.field public isOriginalImage:Z

.field private isPress:Z

.field private isSelect:Z

.field private isVideo:Z

.field public mimeType:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field private selectIndex:I

.field public time:J

.field public timeFormat:Ljava/lang/String;

.field private uriPath:Ljava/lang/String;

.field private videoImageUri:Ljava/lang/String;

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    new-instance v0, Lcom/ypx/imagepicker/bean/ImageItem$1;

    invoke-direct {v0}, Lcom/ypx/imagepicker/bean/ImageItem$1;-><init>()V

    sput-object v0, Lcom/ypx/imagepicker/bean/ImageItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo:Z

    const/4 v1, 0x1

    .line 43
    iput-boolean v1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isOriginalImage:Z

    const-string v1, ""

    .line 50
    iput-object v1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->imageFilterPath:Ljava/lang/String;

    .line 62
    iput-boolean v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isSelect:Z

    .line 63
    iput-boolean v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isPress:Z

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->selectIndex:I

    .line 65
    sget v0, Lcom/ypx/imagepicker/bean/ImageCropMode;->ImageScale_FILL:I

    iput v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->cropMode:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo:Z

    const/4 v1, 0x1

    .line 43
    iput-boolean v1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isOriginalImage:Z

    const-string v2, ""

    .line 50
    iput-object v2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->imageFilterPath:Ljava/lang/String;

    .line 62
    iput-boolean v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isSelect:Z

    .line 63
    iput-boolean v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isPress:Z

    const/4 v2, -0x1

    .line 64
    iput v2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->selectIndex:I

    .line 65
    sget v2, Lcom/ypx/imagepicker/bean/ImageCropMode;->ImageScale_FILL:I

    iput v2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->cropMode:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->id:J

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->width:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->height:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->time:J

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->duration:J

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->mimeType:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->timeFormat:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->durationFormat:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo:Z

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->videoImageUri:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->imageFilterPath:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->uriPath:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->cropUrl:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isSelect:Z

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isPress:Z

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->selectIndex:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->cropMode:I

    .line 130
    const-class v2, Lcom/ypx/imagepicker/widget/cropimage/Info;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/ypx/imagepicker/widget/cropimage/Info;

    iput-object v2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->cropRestoreInfo:Lcom/ypx/imagepicker/widget/cropimage/Info;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    iput-boolean v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isOriginalImage:Z

    return-void
.end method

.method public static withPath(Landroid/content/Context;Ljava/lang/String;)Lcom/ypx/imagepicker/bean/ImageItem;
    .locals 4

    .line 73
    new-instance v0, Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-direct {v0}, Lcom/ypx/imagepicker/bean/ImageItem;-><init>()V

    .line 74
    iput-object p1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    .line 75
    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/ImageItem;->isUriPath()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 76
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/bean/ImageItem;->setUriPath(Ljava/lang/String;)V

    .line 78
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/ypx/imagepicker/utils/PBitmapUtils;->getMimeTypeFromUri(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 79
    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/ImageItem;->isImage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    iget-object v1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/ypx/imagepicker/bean/MimeType;->isVideo(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/bean/ImageItem;->setVideo(Z)V

    .line 81
    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/ImageItem;->isImage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    invoke-static {p0, p1}, Lcom/ypx/imagepicker/utils/PBitmapUtils;->getImageWidthHeight(Landroid/content/Context;Landroid/net/Uri;)[I

    move-result-object p0

    .line 83
    aget p1, p0, v3

    iput p1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->width:I

    .line 84
    aget p0, p0, v2

    iput p0, v0, Lcom/ypx/imagepicker/bean/ImageItem;->height:I

    goto :goto_1

    .line 88
    :cond_0
    iget-object v1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/ypx/imagepicker/utils/PBitmapUtils;->getMimeTypeFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 90
    invoke-static {v1}, Lcom/ypx/imagepicker/bean/MimeType;->isVideo(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/bean/ImageItem;->setVideo(Z)V

    .line 92
    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/ImageItem;->isImage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    invoke-static {p0, p1}, Lcom/ypx/imagepicker/utils/PBitmapUtils;->getImageContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 94
    invoke-static {p1}, Lcom/ypx/imagepicker/utils/PBitmapUtils;->getImageWidthHeight(Ljava/lang/String;)[I

    move-result-object p1

    .line 95
    aget v1, p1, v3

    iput v1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->width:I

    .line 96
    aget p1, p1, v2

    iput p1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->height:I

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {p0, p1}, Lcom/ypx/imagepicker/utils/PBitmapUtils;->getVideoContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 99
    invoke-static {p1}, Lcom/ypx/imagepicker/utils/PBitmapUtils;->getLocalVideoDuration(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->duration:J

    :goto_0
    if-eqz p0, :cond_2

    .line 102
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ypx/imagepicker/bean/ImageItem;->setUriPath(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public copy()Lcom/ypx/imagepicker/bean/ImageItem;
    .locals 3

    .line 380
    new-instance v0, Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-direct {v0}, Lcom/ypx/imagepicker/bean/ImageItem;-><init>()V

    .line 381
    iget-object v1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    iput-object v1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    .line 382
    iget-boolean v1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo:Z

    iput-boolean v1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo:Z

    .line 383
    iget-wide v1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->duration:J

    iput-wide v1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->duration:J

    .line 384
    iget v1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->height:I

    iput v1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->height:I

    .line 385
    iget v1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->width:I

    iput v1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->width:I

    .line 386
    iget v1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->cropMode:I

    iput v1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->cropMode:I

    .line 387
    iget-object v1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->cropUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->cropUrl:Ljava/lang/String;

    .line 388
    iget-object v1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->durationFormat:Ljava/lang/String;

    iput-object v1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->durationFormat:Ljava/lang/String;

    .line 389
    iget-wide v1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->id:J

    iput-wide v1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->id:J

    const/4 v1, 0x0

    .line 390
    iput-boolean v1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->isPress:Z

    .line 391
    iput-boolean v1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->isSelect:Z

    .line 392
    iget-object v1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->cropRestoreInfo:Lcom/ypx/imagepicker/widget/cropimage/Info;

    iput-object v1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->cropRestoreInfo:Lcom/ypx/imagepicker/widget/cropimage/Info;

    .line 393
    iget-boolean v1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isOriginalImage:Z

    iput-boolean v1, v0, Lcom/ypx/imagepicker/bean/ImageItem;->isOriginalImage:Z

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 364
    :cond_0
    :try_start_0
    move-object v2, p1

    check-cast v2, Lcom/ypx/imagepicker/bean/ImageItem;

    .line 365
    iget-object v2, v2, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    if-nez v2, :cond_1

    return v1

    .line 368
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 370
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 372
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCropMode()I
    .locals 1

    .line 262
    iget v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->cropMode:I

    return v0
.end method

.method public getCropRestoreInfo()Lcom/ypx/imagepicker/widget/cropimage/Info;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->cropRestoreInfo:Lcom/ypx/imagepicker/widget/cropimage/Info;

    return-object v0
.end method

.method public getCropUrl()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->cropUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationFormat()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->durationFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 226
    iget-wide v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->id:J

    return-wide v0
.end method

.method public getImageFilterPath()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->imageFilterPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->imageFilterPath:Ljava/lang/String;

    return-object v0

    .line 196
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getLastImageFilterPath()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->imageFilterPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectIndex()I
    .locals 1

    .line 278
    iget v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->selectIndex:I

    return v0
.end method

.method public getTimeFormat()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->timeFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->uriPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->uriPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/bean/ImageItem;->isUriPath()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->mimeType:Ljava/lang/String;

    iget-wide v1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->id:J

    invoke-static {v0, v1, v2}, Lcom/ypx/imagepicker/utils/PBitmapUtils;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getVideoImageUri()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->videoImageUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->videoImageUri:Ljava/lang/String;

    return-object v0

    .line 185
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getWidthHeightRatio()F
    .locals 3

    .line 335
    iget v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->height:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 338
    :cond_0
    iget v2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->width:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    div-float/2addr v2, v0

    return v2
.end method

.method public getWidthHeightType()I
    .locals 2

    .line 347
    invoke-virtual {p0}, Lcom/ypx/imagepicker/bean/ImageItem;->getWidthHeightRatio()F

    move-result v0

    const v1, 0x3f828f5c

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/ypx/imagepicker/bean/ImageItem;->getWidthHeightRatio()F

    move-result v0

    const v1, 0x3f7ae148

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->uriPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 403
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isGif()Z
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/ypx/imagepicker/bean/MimeType;->isGif(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isImage()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isLongImage()Z
    .locals 4

    .line 250
    invoke-virtual {p0}, Lcom/ypx/imagepicker/bean/ImageItem;->getWidthHeightRatio()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/ypx/imagepicker/bean/ImageItem;->getWidthHeightRatio()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

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

.method public isOriginalImage()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isOriginalImage:Z

    return v0
.end method

.method public isOver2KImage()Z
    .locals 2

    .line 398
    iget v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->width:I

    const/16 v1, 0xbb8

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->height:I

    if-le v0, v1, :cond_0

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

.method public isPress()Z
    .locals 1

    .line 286
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isPress:Z

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 294
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isSelect:Z

    return v0
.end method

.method public isUriPath()Z
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideo()Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo:Z

    return v0
.end method

.method public setCropMode(I)V
    .locals 0

    .line 266
    iput p1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->cropMode:I

    return-void
.end method

.method public setCropRestoreInfo(Lcom/ypx/imagepicker/widget/cropimage/Info;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->cropRestoreInfo:Lcom/ypx/imagepicker/widget/cropimage/Info;

    return-void
.end method

.method public setCropUrl(Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->cropUrl:Ljava/lang/String;

    return-void
.end method

.method public setDurationFormat(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->durationFormat:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 2

    int-to-long v0, p1

    .line 230
    iput-wide v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->id:J

    return-void
.end method

.method public setImageFilterPath(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->imageFilterPath:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setOriginalImage(Z)V
    .locals 0

    .line 210
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isOriginalImage:Z

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    return-void
.end method

.method public setPress(Z)V
    .locals 0

    .line 290
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isPress:Z

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 298
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isSelect:Z

    return-void
.end method

.method public setSelectIndex(I)V
    .locals 0

    .line 282
    iput p1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->selectIndex:I

    return-void
.end method

.method public setTimeFormat(Ljava/lang/String;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->timeFormat:Ljava/lang/String;

    return-void
.end method

.method public setUriPath(Ljava/lang/String;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->uriPath:Ljava/lang/String;

    return-void
.end method

.method public setVideo(Z)V
    .locals 0

    .line 242
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo:Z

    return-void
.end method

.method public setVideoImageUri(Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/ypx/imagepicker/bean/ImageItem;->videoImageUri:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 136
    iget-wide v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 137
    iget v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-wide v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 140
    iget-wide v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->timeFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->durationFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 145
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->videoImageUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->imageFilterPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->uriPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->cropUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isSelect:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 151
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isPress:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 152
    iget v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->selectIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->cropMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/ImageItem;->cropRestoreInfo:Lcom/ypx/imagepicker/widget/cropimage/Info;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 155
    iget-boolean p2, p0, Lcom/ypx/imagepicker/bean/ImageItem;->isOriginalImage:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
