.class public Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;
.super Ljava/lang/Object;
.source "SnapshotEntity.java"


# instance fields
.field private snapshotContent:Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;

.field private snapshotData:Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSnapshotContent()Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;->snapshotContent:Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;

    return-object v0
.end method

.method public getSnapshotData()Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;->snapshotData:Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;

    return-object v0
.end method

.method public setSnapshotContent(Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;->snapshotContent:Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;

    return-void
.end method

.method public setSnapshotData(Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;->snapshotData:Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;

    return-void
.end method
