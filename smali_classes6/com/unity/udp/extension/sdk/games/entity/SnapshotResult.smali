.class public Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult;
.super Ljava/lang/Object;
.source "SnapshotResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult$SnapshotConflict;
    }
.end annotation


# instance fields
.field private snapshot:Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;

.field private snapshotConflict:Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult$SnapshotConflict;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSnapshot()Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult;->snapshot:Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;

    return-object v0
.end method

.method public getSnapshotConflict()Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult$SnapshotConflict;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult;->snapshotConflict:Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult$SnapshotConflict;

    return-object v0
.end method

.method public isConflict()Z
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult;->snapshotConflict:Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult$SnapshotConflict;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setSnapshot(Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult;->snapshot:Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;

    return-void
.end method

.method public setSnapshotConflict(Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult$SnapshotConflict;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult;->snapshotConflict:Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult$SnapshotConflict;

    return-void
.end method
