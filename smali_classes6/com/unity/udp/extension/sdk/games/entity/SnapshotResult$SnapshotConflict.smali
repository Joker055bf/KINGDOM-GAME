.class public Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult$SnapshotConflict;
.super Ljava/lang/Object;
.source "SnapshotResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapshotConflict"
.end annotation


# instance fields
.field private conflictSnapshot:Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;

.field private serverSnapshot:Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConflictSnapshot()Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult$SnapshotConflict;->conflictSnapshot:Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;

    return-object v0
.end method

.method public getServerSnapshot()Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult$SnapshotConflict;->serverSnapshot:Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;

    return-object v0
.end method

.method public setConflictSnapshot(Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult$SnapshotConflict;->conflictSnapshot:Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;

    return-void
.end method

.method public setServerSnapshot(Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult$SnapshotConflict;->serverSnapshot:Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;

    return-void
.end method
