.class public Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;
.super Ljava/lang/Object;
.source "SnapshotDataEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private coverImageAspectRatio:F

.field private description:Ljava/lang/String;

.field private game:Lcom/unity/udp/extension/sdk/games/entity/GameEntity;

.field private hasCoverImage:Z

.field private lastModifiedTimestamp:J

.field private playedTime:J

.field private player:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

.field private progressValue:J

.field private snapshotId:Ljava/lang/String;

.field private uniqueName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$1;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$1;-><init>()V

    sput-object v0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->snapshotId:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->uniqueName:Ljava/lang/String;

    .line 96
    const-class v0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->player:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->playedTime:J

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->progressValue:J

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->coverImageAspectRatio:F

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->hasCoverImage:Z

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->description:Ljava/lang/String;

    .line 102
    const-class v0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->game:Lcom/unity/udp/extension/sdk/games/entity/GameEntity;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->lastModifiedTimestamp:J

    return-void
.end method

.method public constructor <init>(Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->snapshotId:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->snapshotId:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->uniqueName:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->uniqueName:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->player:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->player:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    .line 22
    iget-wide v0, p1, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->playedTime:J

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->playedTime:J

    .line 23
    iget-wide v0, p1, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->progressValue:J

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->progressValue:J

    .line 24
    iget v0, p1, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->coverImageAspectRatio:F

    iput v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->coverImageAspectRatio:F

    .line 25
    iget-boolean v0, p1, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->hasCoverImage:Z

    iput-boolean v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->hasCoverImage:Z

    .line 26
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->description:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->game:Lcom/unity/udp/extension/sdk/games/entity/GameEntity;

    iput-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->game:Lcom/unity/udp/extension/sdk/games/entity/GameEntity;

    .line 28
    iget-wide v0, p1, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->lastModifiedTimestamp:J

    iput-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->lastModifiedTimestamp:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCoverImageAspectRatio()F
    .locals 1

    .line 52
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->coverImageAspectRatio:F

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGame()Lcom/unity/udp/extension/sdk/games/entity/GameEntity;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->game:Lcom/unity/udp/extension/sdk/games/entity/GameEntity;

    return-object v0
.end method

.method public getLastModifiedTimestamp()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->lastModifiedTimestamp:J

    return-wide v0
.end method

.method public getPlayedTime()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->playedTime:J

    return-wide v0
.end method

.method public getPlayer()Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->player:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    return-object v0
.end method

.method public getProgressValue()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->progressValue:J

    return-wide v0
.end method

.method public getSnapshotId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->snapshotId:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->uniqueName:Ljava/lang/String;

    return-object v0
.end method

.method public isHasCoverImage()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->hasCoverImage:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->snapshotId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->uniqueName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->player:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 81
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->playedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->progressValue:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    iget v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->coverImageAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 84
    iget-boolean v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->hasCoverImage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 85
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->game:Lcom/unity/udp/extension/sdk/games/entity/GameEntity;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 87
    iget-wide v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->lastModifiedTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
