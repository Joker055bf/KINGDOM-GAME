.class public interface abstract Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;
.super Ljava/lang/Object;
.source "UdpExtras.java"


# virtual methods
.method public abstract addSnapshot(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;ZLcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotData;)V
.end method

.method public abstract deleteSnapshot(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnDeleteSnapshot;)V
.end method

.method public abstract getCurrentPlayer(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayer;)V
.end method

.method public abstract getGame(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetGame;)V
.end method

.method public abstract getGamePlayerStatistics(Landroid/app/Activity;ZLcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayerStatistics;)V
.end method

.method public abstract getLimitDetailsSize(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnLimitSize;)V
.end method

.method public abstract getLimitThumbnailSize(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnLimitSize;)V
.end method

.method public abstract getLocalGame(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetGame;)V
.end method

.method public abstract getShowSnapshotListIntent(Landroid/app/Activity;Ljava/lang/String;ZZILcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetShowSnapshotListIntent;)V
.end method

.method public abstract getSnapshotDataList(Landroid/app/Activity;ZLcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetAllSnapshotData;)V
.end method

.method public abstract getThumbnail(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetCoverImage;)V
.end method

.method public abstract grantDriveAccess()V
.end method

.method public abstract hideFloatWindow(Landroid/app/Activity;)V
.end method

.method public abstract loadCoverImage(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetCoverImage;)V
.end method

.method public abstract loadSnapshotContents(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;ILcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V
.end method

.method public abstract loadSnapshotContents(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V
.end method

.method public abstract loadSnapshotContents(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V
.end method

.method public abstract loadSnapshotContents(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V
.end method

.method public abstract showFloatWindow(Landroid/app/Activity;)V
.end method

.method public abstract updateSnapshot(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotEntity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V
.end method

.method public abstract updateSnapshot(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/entity/SnapshotChangeEntity;Lcom/unity/udp/extension/sdk/games/entity/SnapshotContentEntity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetSnapshotResult;)V
.end method
