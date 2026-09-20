.class public Lcom/tgs/aics/bean/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tgs/aics/bean/MediaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isVideo:Z

.field private uniqueId:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/tgs/aics/bean/MediaInfo$1;

    invoke-direct {v0}, Lcom/tgs/aics/bean/MediaInfo$1;-><init>()V

    sput-object v0, Lcom/tgs/aics/bean/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/bean/MediaInfo;->uniqueId:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/bean/MediaInfo;->url:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/tgs/aics/bean/MediaInfo;->isVideo:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/tgs/aics/bean/MediaInfo;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/tgs/aics/bean/MediaInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isVideo()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/tgs/aics/bean/MediaInfo;->isVideo:Z

    return v0
.end method

.method public setUniqueId(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/tgs/aics/bean/MediaInfo;->uniqueId:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/tgs/aics/bean/MediaInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public setVideo(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/tgs/aics/bean/MediaInfo;->isVideo:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 66
    iget-object p2, p0, Lcom/tgs/aics/bean/MediaInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Lcom/tgs/aics/bean/MediaInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-boolean p2, p0, Lcom/tgs/aics/bean/MediaInfo;->isVideo:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
