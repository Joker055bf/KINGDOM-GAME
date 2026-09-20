.class public Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboardsImpl;
.super Ljava/lang/Object;
.source "UdpLeaderboardsImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncSubmitScore(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnSubmitScore;)V
    .locals 1

    .line 21
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getLeaderboardsClient()Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;->asyncSubmitScore(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnSubmitScore;)V

    return-void
.end method

.method public static asyncSubmitScore(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnSubmitScore;)V
    .locals 6

    .line 29
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getLeaderboardsClient()Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;->asyncSubmitScore(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnSubmitScore;)V

    return-void
.end method

.method public static getAllLeaderboardsIntent(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardIntent;)V
    .locals 1

    .line 33
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getLeaderboardsClient()Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;->getAllLeaderboardsIntent(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardIntent;)V

    return-void
.end method

.method public static getCurrentPlayerLeaderboardScore(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScore;)V
    .locals 1

    .line 61
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getLeaderboardsClient()Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;->getCurrentPlayerLeaderboardScore(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScore;)V

    return-void
.end method

.method public static getLeaderboardData(Landroid/app/Activity;Ljava/lang/String;ZLcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboard;)V
    .locals 1

    .line 49
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getLeaderboardsClient()Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;->getLeaderboardData(Landroid/app/Activity;Ljava/lang/String;ZLcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboard;)V

    return-void
.end method

.method public static getLeaderboardIntent(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardIntent;)V
    .locals 1

    .line 41
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getLeaderboardsClient()Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;->getLeaderboardIntent(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardIntent;)V

    return-void
.end method

.method public static getLeaderboardIntent(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardIntent;)V
    .locals 1

    .line 37
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getLeaderboardsClient()Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;->getLeaderboardIntent(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardIntent;)V

    return-void
.end method

.method public static getLeaderboardSwitchStatus(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnLeaderboardSwitchStatus;)V
    .locals 1

    .line 9
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getLeaderboardsClient()Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;->getLeaderboardSwitchStatus(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnLeaderboardSwitchStatus;)V

    return-void
.end method

.method public static getLeaderboardTopScores(Landroid/app/Activity;Ljava/lang/String;IIJILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V
    .locals 9

    .line 57
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getLeaderboardsClient()Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;->getLeaderboardTopScores(Landroid/app/Activity;Ljava/lang/String;IIJILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V

    return-void
.end method

.method public static getLeaderboardTopScores(Landroid/app/Activity;Ljava/lang/String;IIZLcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V
    .locals 7

    .line 53
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getLeaderboardsClient()Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;->getLeaderboardTopScores(Landroid/app/Activity;Ljava/lang/String;IIZLcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V

    return-void
.end method

.method public static getLeaderboardsData(Landroid/app/Activity;ZLcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboards;)V
    .locals 1

    .line 45
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getLeaderboardsClient()Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;->getLeaderboardsData(Landroid/app/Activity;ZLcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboards;)V

    return-void
.end method

.method public static getMoreLeaderboardScores(Landroid/app/Activity;Ljava/lang/String;JIIILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V
    .locals 9

    .line 73
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getLeaderboardsClient()Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;->getMoreLeaderboardScores(Landroid/app/Activity;Ljava/lang/String;JIIILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V

    return-void
.end method

.method public static getPlayerCenteredLeaderboardScores(Landroid/app/Activity;Ljava/lang/String;IIJILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V
    .locals 9

    .line 69
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getLeaderboardsClient()Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;->getPlayerCenteredLeaderboardScores(Landroid/app/Activity;Ljava/lang/String;IIJILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V

    return-void
.end method

.method public static getPlayerCenteredLeaderboardScores(Landroid/app/Activity;Ljava/lang/String;IIZLcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V
    .locals 7

    .line 65
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getLeaderboardsClient()Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;->getPlayerCenteredLeaderboardScores(Landroid/app/Activity;Ljava/lang/String;IIZLcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V

    return-void
.end method

.method public static setLeaderboardSwitchStatus(Landroid/app/Activity;ILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnLeaderboardSwitchStatus;)V
    .locals 1

    .line 13
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getLeaderboardsClient()Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;->setLeaderboardSwitchStatus(Landroid/app/Activity;ILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnLeaderboardSwitchStatus;)V

    return-void
.end method

.method public static submitScore(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    .line 17
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getLeaderboardsClient()Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;->submitScore(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method public static submitScore(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 25
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getLeaderboardsClient()Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;->submitScore(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
