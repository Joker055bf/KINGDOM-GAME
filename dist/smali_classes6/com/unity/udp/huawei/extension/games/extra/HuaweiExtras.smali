.class public Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;
.super Ljava/lang/Object;
.source "HuaweiExtras.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Landroid/app/Activity;Lcom/huawei/hms/jos/games/archive/OperationResult;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;->handleDifference(Landroid/app/Activity;Lcom/huawei/hms/jos/games/archive/OperationResult;)V

    return-void
.end method

.method private handleDifference(Landroid/app/Activity;Lcom/huawei/hms/jos/games/archive/OperationResult;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 596
    invoke-virtual {p2}, Lcom/huawei/hms/jos/games/archive/OperationResult;->getDifference()Lcom/huawei/hms/jos/games/archive/OperationResult$Difference;

    move-result-object p2

    .line 597
    invoke-virtual {p2}, Lcom/huawei/hms/jos/games/archive/OperationResult$Difference;->getRecentArchive()Lcom/huawei/hms/jos/games/archive/Archive;

    .line 598
    invoke-virtual {p2}, Lcom/huawei/hms/jos/games/archive/OperationResult$Difference;->getServerArchive()Lcom/huawei/hms/jos/games/archive/Archive;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 603
    :cond_0
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getArchiveClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/ArchivesClient;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/huawei/hms/jos/games/ArchivesClient;->updateArchive(Lcom/huawei/hms/jos/games/archive/Archive;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p2

    .line 604
    new-instance v0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$32;

    invoke-direct {v0, p0, p1}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$32;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$31;

    invoke-direct {p2, p0}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$31;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;)V

    .line 618
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    :cond_1
    return-void
.end method


# virtual methods
.method public addSnapshot(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;ZLcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotData;)V
    .locals 1

    .line 279
    new-instance v0, Lcom/huawei/hms/jos/games/archive/ArchiveDetails$Builder;

    invoke-direct {v0}, Lcom/huawei/hms/jos/games/archive/ArchiveDetails$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/hms/jos/games/archive/ArchiveDetails$Builder;->build()Lcom/huawei/hms/jos/games/archive/ArchiveDetails;

    move-result-object v0

    .line 280
    invoke-virtual {p2}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;->getContent()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/huawei/hms/jos/games/archive/ArchiveDetails;->set([B)V

    .line 281
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getArchiveClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/ArchivesClient;

    move-result-object p1

    .line 282
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryUpdateAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryUpdateAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryUpdateAdapter;->adapt(Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;)Lcom/huawei/hms/jos/games/archive/ArchiveSummaryUpdate;

    move-result-object p2

    .line 281
    invoke-virtual {p1, v0, p2, p4}, Lcom/huawei/hms/jos/games/ArchivesClient;->addArchive(Lcom/huawei/hms/jos/games/archive/ArchiveDetails;Lcom/huawei/hms/jos/games/archive/ArchiveSummaryUpdate;Z)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 283
    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$14;

    invoke-direct {p2, p0, p5}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$14;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotData;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$13;

    invoke-direct {p2, p0, p5}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$13;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotData;)V

    .line 293
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public deleteSnapshot(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnDeleteSnapshot;)V
    .locals 1

    .line 692
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getArchiveClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/ArchivesClient;

    move-result-object p1

    invoke-static {}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;->reverseAdapt(Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;)Lcom/huawei/hms/jos/games/archive/ArchiveSummary;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/huawei/hms/jos/games/ArchivesClient;->removeArchive(Lcom/huawei/hms/jos/games/archive/ArchiveSummary;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 693
    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$38;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$38;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnDeleteSnapshot;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$37;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$37;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnDeleteSnapshot;)V

    .line 700
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getCurrentPlayer(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayer;)V
    .locals 1

    .line 38
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getPlayersClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/PlayersClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/huawei/hms/jos/games/PlayersClient;->getCurrentPlayer()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 39
    new-instance v0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$2;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$2;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayer;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$1;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$1;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayer;)V

    .line 46
    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getGame(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetGame;)V
    .locals 1

    .line 113
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getGameSummaryClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/GameSummaryClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/huawei/hms/jos/games/GameSummaryClient;->getGameSummary()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 114
    new-instance v0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$6;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$6;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetGame;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$5;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$5;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetGame;)V

    .line 121
    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getGamePlayerStatistics(Landroid/app/Activity;ZLcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayerStatistics;)V
    .locals 0

    .line 72
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getGamePlayerStatsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/playerstats/GamePlayerStatisticsClient;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/huawei/hms/jos/games/playerstats/GamePlayerStatisticsClient;->getGamePlayerStatistics(Z)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 73
    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$4;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$4;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayerStatistics;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$3;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$3;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayerStatistics;)V

    .line 87
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getLimitDetailsSize(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnLimitSize;)V
    .locals 1

    const-string v0, "invoke getLimitDetailsSize"

    .line 235
    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 236
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getArchiveClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/ArchivesClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/ArchivesClient;->getLimitDetailsSize()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 237
    new-instance v0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$12;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$12;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnLimitSize;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$11;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$11;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnLimitSize;)V

    .line 245
    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getLimitThumbnailSize(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnLimitSize;)V
    .locals 1

    const-string v0, "invoke getLimitThumbnailSize"

    .line 204
    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 205
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getArchiveClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/ArchivesClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/ArchivesClient;->getLimitThumbnailSize()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 206
    new-instance v0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$10;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$10;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnLimitSize;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$9;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$9;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnLimitSize;)V

    .line 214
    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getLocalGame(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetGame;)V
    .locals 1

    .line 146
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getGameSummaryClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/GameSummaryClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/huawei/hms/jos/games/GameSummaryClient;->getLocalGameSummary()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 147
    new-instance v0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$8;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$8;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetGame;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$7;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$7;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetGame;)V

    .line 154
    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getShowSnapshotListIntent(Landroid/app/Activity;Ljava/lang/String;ZZILcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetShowSnapshotListIntent;)V
    .locals 0

    .line 326
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getArchiveClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/ArchivesClient;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/huawei/hms/jos/games/ArchivesClient;->getShowArchiveListIntent(Ljava/lang/String;ZZI)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 327
    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$16;

    invoke-direct {p2, p0, p6}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$16;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetShowSnapshotListIntent;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$15;

    invoke-direct {p2, p0, p6}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$15;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetShowSnapshotListIntent;)V

    .line 334
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getSnapshotDataList(Landroid/app/Activity;ZLcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetAllSnapshotData;)V
    .locals 0

    .line 361
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getArchiveClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/ArchivesClient;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/huawei/hms/jos/games/ArchivesClient;->getArchiveSummaryList(Z)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 362
    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$18;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$18;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetAllSnapshotData;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$17;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$17;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetAllSnapshotData;)V

    .line 369
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getThumbnail(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetCoverImage;)V
    .locals 0

    .line 422
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getArchiveClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/ArchivesClient;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/huawei/hms/jos/games/ArchivesClient;->getThumbnail(Ljava/lang/String;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 423
    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$22;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$22;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetCoverImage;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$21;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$21;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetCoverImage;)V

    .line 431
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public grantDriveAccess()V
    .locals 1

    .line 265
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->openSnapshots()V

    return-void
.end method

.method public hideFloatWindow(Landroid/app/Activity;)V
    .locals 0

    .line 190
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getBuoyClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/buoy/BuoyClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/huawei/hms/jos/games/buoy/BuoyClient;->hideFloatWindow()V

    return-void
.end method

.method public loadCoverImage(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetCoverImage;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 392
    :cond_0
    invoke-virtual {p2}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->isHasCoverImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getArchiveClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/ArchivesClient;

    move-result-object p1

    invoke-virtual {p2}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->getSnapshotId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/huawei/hms/jos/games/ArchivesClient;->getThumbnail(Ljava/lang/String;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 394
    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$20;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$20;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetCoverImage;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$19;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$19;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetCoverImage;)V

    .line 401
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    :cond_1
    return-void
.end method

.method public loadSnapshotContents(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;ILcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p1, "snapshotData can not be null"

    .line 563
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logError(Ljava/lang/String;)V

    return-void

    .line 566
    :cond_0
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;->reverseAdapt(Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;)Lcom/huawei/hms/jos/games/archive/ArchiveSummary;

    move-result-object p2

    .line 567
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getArchiveClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/ArchivesClient;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/huawei/hms/jos/games/ArchivesClient;->loadArchiveDetails(Lcom/huawei/hms/jos/games/archive/ArchiveSummary;I)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 568
    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$30;

    invoke-direct {p2, p0, p4}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$30;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$29;

    invoke-direct {p2, p0, p4}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$29;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V

    .line 576
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public loadSnapshotContents(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p1, "snapshotData can not be null"

    .line 529
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logError(Ljava/lang/String;)V

    return-void

    .line 532
    :cond_0
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;->reverseAdapt(Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;)Lcom/huawei/hms/jos/games/archive/ArchiveSummary;

    move-result-object p2

    .line 533
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getArchiveClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/ArchivesClient;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/huawei/hms/jos/games/ArchivesClient;->loadArchiveDetails(Lcom/huawei/hms/jos/games/archive/ArchiveSummary;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 534
    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$28;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$28;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$27;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$27;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V

    .line 542
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public loadSnapshotContents(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 496
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getArchiveClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/ArchivesClient;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/huawei/hms/jos/games/ArchivesClient;->loadArchiveDetails(Ljava/lang/String;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    goto :goto_0

    .line 498
    :cond_0
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getArchiveClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/ArchivesClient;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/huawei/hms/jos/games/ArchivesClient;->loadArchiveDetails(Ljava/lang/String;I)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 500
    :goto_0
    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$26;

    invoke-direct {p2, p0, p4}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$26;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$25;

    invoke-direct {p2, p0, p4}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$25;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V

    .line 508
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public loadSnapshotContents(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V
    .locals 0

    .line 451
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getArchiveClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/ArchivesClient;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/huawei/hms/jos/games/ArchivesClient;->loadArchiveDetails(Ljava/lang/String;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 452
    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$24;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$24;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$23;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$23;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V

    .line 460
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public showFloatWindow(Landroid/app/Activity;)V
    .locals 0

    .line 180
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getBuoyClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/buoy/BuoyClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/huawei/hms/jos/games/buoy/BuoyClient;->showFloatWindow()V

    return-void
.end method

.method public updateSnapshot(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V
    .locals 1

    .line 630
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getArchiveClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/ArchivesClient;

    move-result-object p1

    invoke-static {}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveAdapter;->reverseAdapt(Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;)Lcom/huawei/hms/jos/games/archive/Archive;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/huawei/hms/jos/games/ArchivesClient;->updateArchive(Lcom/huawei/hms/jos/games/archive/Archive;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 631
    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$34;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$34;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$33;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$33;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V

    .line 639
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public updateSnapshot(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V
    .locals 1

    .line 659
    new-instance v0, Lcom/huawei/hms/jos/games/archive/ArchiveDetails$Builder;

    invoke-direct {v0}, Lcom/huawei/hms/jos/games/archive/ArchiveDetails$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/hms/jos/games/archive/ArchiveDetails$Builder;->build()Lcom/huawei/hms/jos/games/archive/ArchiveDetails;

    move-result-object v0

    .line 660
    invoke-virtual {p4}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;->getContent()[B

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/huawei/hms/jos/games/archive/ArchiveDetails;->set([B)V

    .line 661
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getArchiveClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/ArchivesClient;

    move-result-object p1

    .line 662
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryUpdateAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryUpdateAdapter;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryUpdateAdapter;->adapt(Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;)Lcom/huawei/hms/jos/games/archive/ArchiveSummaryUpdate;

    move-result-object p3

    .line 661
    invoke-virtual {p1, p2, p3, v0}, Lcom/huawei/hms/jos/games/ArchivesClient;->updateArchive(Ljava/lang/String;Lcom/huawei/hms/jos/games/archive/ArchiveSummaryUpdate;Lcom/huawei/hms/jos/games/archive/ArchiveDetails;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 664
    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$36;

    invoke-direct {p2, p0, p5}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$36;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$35;

    invoke-direct {p2, p0, p5}, Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras$35;-><init>(Lcom/unity/udp/huawei/extension/games/extra/HuaweiExtras;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V

    .line 672
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method
