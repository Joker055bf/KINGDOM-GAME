.class public Lcom/unity/udp/extension/sdk/games/extra/UdpExtrasImpl;
.super Ljava/lang/Object;
.source "UdpExtrasImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSnapshot(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;ZLcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotData;)V
    .locals 6

    .line 50
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getExtrasClient()Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;->addSnapshot(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;ZLcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotData;)V

    return-void
.end method

.method public static deleteSnapshot(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnDeleteSnapshot;)V
    .locals 1

    .line 90
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getExtrasClient()Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;->deleteSnapshot(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnDeleteSnapshot;)V

    return-void
.end method

.method public static getCurrentPlayer(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayer;)V
    .locals 1

    .line 14
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getExtrasClient()Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;->getCurrentPlayer(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayer;)V

    return-void
.end method

.method public static getGame(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetGame;)V
    .locals 1

    .line 22
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getExtrasClient()Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;->getGame(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetGame;)V

    return-void
.end method

.method public static getGamePlayerStatistics(Landroid/app/Activity;ZLcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayerStatistics;)V
    .locals 1

    .line 18
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getExtrasClient()Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;->getGamePlayerStatistics(Landroid/app/Activity;ZLcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayerStatistics;)V

    return-void
.end method

.method public static getLimitDetailsSize(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnLimitSize;)V
    .locals 1

    .line 42
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getExtrasClient()Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;->getLimitDetailsSize(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnLimitSize;)V

    return-void
.end method

.method public static getLimitThumbnailSize(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnLimitSize;)V
    .locals 1

    .line 38
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getExtrasClient()Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;->getLimitThumbnailSize(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnLimitSize;)V

    return-void
.end method

.method public static getLocalGame(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetGame;)V
    .locals 1

    .line 26
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getExtrasClient()Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;->getLocalGame(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetGame;)V

    return-void
.end method

.method public static getShowSnapshotListIntent(Landroid/app/Activity;Ljava/lang/String;ZZILcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetShowSnapshotListIntent;)V
    .locals 7

    .line 94
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getExtrasClient()Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;->getShowSnapshotListIntent(Landroid/app/Activity;Ljava/lang/String;ZZILcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetShowSnapshotListIntent;)V

    return-void
.end method

.method public static getSnapshotDataList(Landroid/app/Activity;ZLcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetAllSnapshotData;)V
    .locals 1

    .line 54
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getExtrasClient()Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;->getSnapshotDataList(Landroid/app/Activity;ZLcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetAllSnapshotData;)V

    return-void
.end method

.method public static getThumbnail(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetCoverImage;)V
    .locals 1

    .line 62
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getExtrasClient()Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;->getThumbnail(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetCoverImage;)V

    return-void
.end method

.method public static grantDriveAccess()V
    .locals 1

    .line 46
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getExtrasClient()Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;->grantDriveAccess()V

    return-void
.end method

.method public static hideFloatWindow(Landroid/app/Activity;)V
    .locals 1

    .line 34
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getExtrasClient()Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;->hideFloatWindow(Landroid/app/Activity;)V

    return-void
.end method

.method public static loadCoverImage(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetCoverImage;)V
    .locals 1

    .line 58
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getExtrasClient()Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;->loadCoverImage(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetCoverImage;)V

    return-void
.end method

.method public static loadSnapshotContents(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;ILcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V
    .locals 1

    .line 78
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getExtrasClient()Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;->loadSnapshotContents(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;ILcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V

    return-void
.end method

.method public static loadSnapshotContents(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V
    .locals 1

    .line 74
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getExtrasClient()Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;->loadSnapshotContents(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V

    return-void
.end method

.method public static loadSnapshotContents(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V
    .locals 1

    .line 70
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getExtrasClient()Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;->loadSnapshotContents(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V

    return-void
.end method

.method public static loadSnapshotContents(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V
    .locals 1

    .line 66
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getExtrasClient()Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;->loadSnapshotContents(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V

    return-void
.end method

.method public static showFloatWindow(Landroid/app/Activity;)V
    .locals 1

    .line 30
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getExtrasClient()Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;->showFloatWindow(Landroid/app/Activity;)V

    return-void
.end method

.method public static updateSnapshot(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V
    .locals 1

    .line 82
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getExtrasClient()Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;->updateSnapshot(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V

    return-void
.end method

.method public static updateSnapshot(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V
    .locals 6

    .line 86
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getExtrasClient()Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;->updateSnapshot(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V

    return-void
.end method
