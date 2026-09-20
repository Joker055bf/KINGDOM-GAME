.class public Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;
.super Ljava/lang/Object;
.source "SnapshotDataEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field coverImageAspectRatio:F

.field description:Ljava/lang/String;

.field game:Lcom/unity/udp/extension/sdk/games/entity/GameEntity;

.field hasCoverImage:Z

.field lastModifiedTimestamp:J

.field playedTime:J

.field player:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

.field progressValue:J

.field snapshotId:Ljava/lang/String;

.field uniqueName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;
    .locals 1

    .line 181
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;

    invoke-direct {v0, p0}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;-><init>(Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;)V

    return-object v0
.end method

.method public setCoverImageAspectRatio(F)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;
    .locals 0

    .line 156
    iput p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->coverImageAspectRatio:F

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public setGame(Lcom/unity/udp/extension/sdk/games/entity/GameEntity;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->game:Lcom/unity/udp/extension/sdk/games/entity/GameEntity;

    return-object p0
.end method

.method public setHasCoverImage(Z)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->hasCoverImage:Z

    return-object p0
.end method

.method public setLastModifiedTimestamp(J)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;
    .locals 0

    .line 176
    iput-wide p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->lastModifiedTimestamp:J

    return-object p0
.end method

.method public setPlayedTime(J)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;
    .locals 0

    .line 146
    iput-wide p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->playedTime:J

    return-object p0
.end method

.method public setPlayer(Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->player:Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    return-object p0
.end method

.method public setProgressValue(J)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;
    .locals 0

    .line 151
    iput-wide p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->progressValue:J

    return-object p0
.end method

.method public setSnapshotId(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->snapshotId:Ljava/lang/String;

    return-object p0
.end method

.method public setUniqueName(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->uniqueName:Ljava/lang/String;

    return-object p0
.end method
