.class public Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;
.super Ljava/lang/Object;
.source "SnapshotChangeEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private coverImage:Landroid/graphics/Bitmap;

.field private currentProgress:J

.field private description:Ljava/lang/String;

.field private imageMimeType:Ljava/lang/String;

.field private playedTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$1;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$1;-><init>()V

    sput-object v0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->description:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->playedTimeMillis:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->currentProgress:J

    .line 64
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->coverImage:Landroid/graphics/Bitmap;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->imageMimeType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->description:Ljava/lang/String;

    .line 20
    iget-wide v0, p1, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;->playedTimeMillis:J

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->playedTimeMillis:J

    .line 21
    iget-wide v0, p1, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;->currentProgress:J

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->currentProgress:J

    .line 22
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;->coverImage:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->coverImage:Landroid/graphics/Bitmap;

    .line 23
    iget-object p1, p1, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity$Builder;->imageMimeType:Ljava/lang/String;

    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->imageMimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCoverImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->coverImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCurrentProgress()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->currentProgress:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImageMimeType()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->imageMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayedTimeMillis()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->playedTimeMillis:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->playedTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 55
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->currentProgress:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 56
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->coverImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 57
    iget-object p2, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;->imageMimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
