.class public Lcom/unity/udp/huawei/extension/games/extra/OperationResultAdapter;
.super Ljava/lang/Object;
.source "OperationResultAdapter.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/EntityAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unity/udp/extension/sdk/EntityAdapter<",
        "Lcom/huawei/hms/jos/games/archive/OperationResult;",
        "Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult;",
        ">;"
    }
.end annotation


# static fields
.field private static adapter:Lcom/unity/udp/huawei/extension/games/extra/OperationResultAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unity/udp/huawei/extension/games/extra/OperationResultAdapter;
    .locals 1

    .line 16
    sget-object v0, Lcom/unity/udp/huawei/extension/games/extra/OperationResultAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/extra/OperationResultAdapter;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/unity/udp/huawei/extension/games/extra/OperationResultAdapter;

    invoke-direct {v0}, Lcom/unity/udp/huawei/extension/games/extra/OperationResultAdapter;-><init>()V

    sput-object v0, Lcom/unity/udp/huawei/extension/games/extra/OperationResultAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/extra/OperationResultAdapter;

    .line 19
    :cond_0
    sget-object v0, Lcom/unity/udp/huawei/extension/games/extra/OperationResultAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/extra/OperationResultAdapter;

    return-object v0
.end method


# virtual methods
.method public adapt(Lcom/huawei/hms/jos/games/archive/OperationResult;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 27
    :cond_0
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult;-><init>()V

    .line 28
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/archive/OperationResult;->getArchive()Lcom/huawei/hms/jos/games/archive/Archive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;->adapt(Lcom/huawei/hms/jos/games/archive/Archive;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult;->setSnapshot(Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;)V

    .line 29
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/archive/OperationResult;->isDifference()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    new-instance v1, Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult$SnapshotConflict;

    invoke-direct {v1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult$SnapshotConflict;-><init>()V

    .line 31
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/archive/OperationResult;->getDifference()Lcom/huawei/hms/jos/games/archive/OperationResult$Difference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/hms/jos/games/archive/OperationResult$Difference;->getRecentArchive()Lcom/huawei/hms/jos/games/archive/Archive;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;->adapt(Lcom/huawei/hms/jos/games/archive/Archive;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult$SnapshotConflict;->setConflictSnapshot(Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;)V

    .line 32
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/archive/OperationResult;->getDifference()Lcom/huawei/hms/jos/games/archive/OperationResult$Difference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/archive/OperationResult$Difference;->getServerArchive()Lcom/huawei/hms/jos/games/archive/Archive;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;->adapt(Lcom/huawei/hms/jos/games/archive/Archive;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult$SnapshotConflict;->setServerSnapshot(Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;)V

    .line 33
    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult;->setSnapshotConflict(Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult$SnapshotConflict;)V

    :cond_1
    return-object v0
.end method

.method public bridge synthetic adapt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p1, Lcom/huawei/hms/jos/games/archive/OperationResult;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/extra/OperationResultAdapter;->adapt(Lcom/huawei/hms/jos/games/archive/OperationResult;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotResult;

    move-result-object p1

    return-object p1
.end method
