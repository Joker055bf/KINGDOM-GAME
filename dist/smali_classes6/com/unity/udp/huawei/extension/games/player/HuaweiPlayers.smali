.class public Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;
.super Ljava/lang/Object;
.source "HuaweiPlayers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCachePlayerId(Landroid/app/Activity;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnCachePlayerId;)V
    .locals 1

    .line 139
    invoke-static {p1}, Lcom/huawei/hms/jos/games/Games;->getPlayersClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/PlayersClient;

    move-result-object p1

    .line 140
    invoke-interface {p1}, Lcom/huawei/hms/jos/games/PlayersClient;->getCachePlayerId()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 141
    new-instance v0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$9;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$9;-><init>(Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnCachePlayerId;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    .line 149
    new-instance v0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$10;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$10;-><init>(Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnCachePlayerId;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getGamePlayer(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayer;)V
    .locals 1

    .line 23
    invoke-static {p1}, Lcom/huawei/hms/jos/games/Games;->getPlayersClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/PlayersClient;

    move-result-object p1

    .line 24
    invoke-interface {p1}, Lcom/huawei/hms/jos/games/PlayersClient;->getGamePlayer()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 25
    new-instance v0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$2;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$2;-><init>(Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayer;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$1;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$1;-><init>(Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayer;)V

    .line 32
    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getGamePlayer(Landroid/app/Activity;ZLcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayer;)V
    .locals 0

    .line 50
    invoke-static {p1}, Lcom/huawei/hms/jos/games/Games;->getPlayersClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/PlayersClient;

    move-result-object p1

    .line 51
    invoke-interface {p1, p2}, Lcom/huawei/hms/jos/games/PlayersClient;->getGamePlayer(Z)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 52
    new-instance p2, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$4;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$4;-><init>(Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayer;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$3;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$3;-><init>(Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;Lcom/unity/udp/extension/sdk/games/extra/ExtrasCallback$OnGetPlayer;)V

    .line 59
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getPlayerExtraInfo(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnPlayerExtraInfo;)V
    .locals 0

    .line 110
    invoke-static {p1}, Lcom/huawei/hms/jos/games/Games;->getPlayersClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/PlayersClient;

    move-result-object p1

    .line 111
    invoke-interface {p1, p2}, Lcom/huawei/hms/jos/games/PlayersClient;->getPlayerExtraInfo(Ljava/lang/String;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 112
    new-instance p2, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$7;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$7;-><init>(Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnPlayerExtraInfo;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    .line 120
    new-instance p2, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$8;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$8;-><init>(Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnPlayerExtraInfo;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public savePlayerInfo(Landroid/app/Activity;Lcom/huawei/hms/jos/games/AppPlayerInfo;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnSavePlayerInfo;)V
    .locals 0

    .line 168
    invoke-static {p1}, Lcom/huawei/hms/jos/games/Games;->getPlayersClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/PlayersClient;

    move-result-object p1

    .line 169
    invoke-interface {p1, p2}, Lcom/huawei/hms/jos/games/PlayersClient;->savePlayerInfo(Lcom/huawei/hms/jos/games/AppPlayerInfo;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 170
    new-instance p2, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$11;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$11;-><init>(Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnSavePlayerInfo;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    .line 178
    new-instance p2, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$12;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$12;-><init>(Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnSavePlayerInfo;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public setGameTrialProcess(Landroid/app/Activity;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnGameTrialProcess;)V
    .locals 1

    .line 197
    invoke-static {p1}, Lcom/huawei/hms/jos/games/Games;->getPlayersClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/PlayersClient;

    move-result-object p1

    .line 198
    new-instance v0, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$13;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$13;-><init>(Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnGameTrialProcess;)V

    invoke-interface {p1, v0}, Lcom/huawei/hms/jos/games/PlayersClient;->setGameTrialProcess(Lcom/huawei/hms/jos/games/player/GameTrialProcess;)V

    return-void
.end method

.method public submitPlayerEvent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnSubmitPlayerEvent;)V
    .locals 0

    .line 81
    invoke-static {p1}, Lcom/huawei/hms/jos/games/Games;->getPlayersClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/PlayersClient;

    move-result-object p1

    .line 82
    invoke-interface {p1, p2, p3, p4}, Lcom/huawei/hms/jos/games/PlayersClient;->submitPlayerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 83
    new-instance p2, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$5;

    invoke-direct {p2, p0, p5}, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$5;-><init>(Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnSubmitPlayerEvent;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    .line 91
    new-instance p2, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$6;

    invoke-direct {p2, p0, p5}, Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers$6;-><init>(Lcom/unity/udp/huawei/extension/games/player/HuaweiPlayers;Lcom/unity/udp/huawei/extension/games/player/PlayersCallback$OnSubmitPlayerEvent;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method
