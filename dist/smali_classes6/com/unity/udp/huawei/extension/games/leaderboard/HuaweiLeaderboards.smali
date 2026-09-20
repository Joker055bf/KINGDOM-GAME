.class public Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;
.super Ljava/lang/Object;
.source "HuaweiLeaderboards.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asyncSubmitScore(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnSubmitScore;)V
    .locals 2

    .line 117
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getRankingsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/RankingsClient;

    move-result-object p1

    int-to-long v0, p3

    invoke-interface {p1, p2, v0, v1}, Lcom/huawei/hms/jos/games/RankingsClient;->submitScoreWithResult(Ljava/lang/String;J)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 118
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$5;

    invoke-direct {p2, p0, p4}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$5;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnSubmitScore;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    .line 127
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$6;

    invoke-direct {p2, p0, p4}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$6;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnSubmitScore;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public asyncSubmitScore(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnSubmitScore;)V
    .locals 2

    .line 153
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getRankingsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/RankingsClient;

    move-result-object p1

    int-to-long v0, p3

    invoke-interface {p1, p2, v0, v1, p4}, Lcom/huawei/hms/jos/games/RankingsClient;->submitScoreWithResult(Ljava/lang/String;JLjava/lang/String;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 154
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$7;

    invoke-direct {p2, p0, p5}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$7;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnSubmitScore;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    .line 163
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$8;

    invoke-direct {p2, p0, p5}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$8;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnSubmitScore;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getAllLeaderboardsIntent(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardIntent;)V
    .locals 1

    .line 195
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getRankingsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/RankingsClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/huawei/hms/jos/games/RankingsClient;->getTotalRankingsIntent()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 196
    new-instance v0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$9;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$9;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardIntent;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    .line 204
    new-instance v0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$10;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$10;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardIntent;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getCurrentPlayerLeaderboardScore(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScore;)V
    .locals 0

    .line 436
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getRankingsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/RankingsClient;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/huawei/hms/jos/games/RankingsClient;->getCurrentPlayerRankingScore(Ljava/lang/String;I)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 437
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$23;

    invoke-direct {p2, p0, p4}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$23;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScore;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    .line 445
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$24;

    invoke-direct {p2, p0, p4}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$24;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScore;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getLeaderboardData(Landroid/app/Activity;Ljava/lang/String;ZLcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboard;)V
    .locals 0

    .line 328
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getRankingsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/RankingsClient;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/huawei/hms/jos/games/RankingsClient;->getRankingSummary(Ljava/lang/String;Z)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 329
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$17;

    invoke-direct {p2, p0, p4}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$17;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboard;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    .line 337
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$18;

    invoke-direct {p2, p0, p4}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$18;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboard;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getLeaderboardIntent(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardIntent;)V
    .locals 0

    .line 255
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getRankingsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/RankingsClient;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/huawei/hms/jos/games/RankingsClient;->getRankingIntent(Ljava/lang/String;I)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 256
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$13;

    invoke-direct {p2, p0, p4}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$13;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardIntent;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    .line 264
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$14;

    invoke-direct {p2, p0, p4}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$14;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardIntent;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getLeaderboardIntent(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardIntent;)V
    .locals 0

    .line 225
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getRankingsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/RankingsClient;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/huawei/hms/jos/games/RankingsClient;->getRankingIntent(Ljava/lang/String;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 226
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$11;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$11;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardIntent;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    .line 234
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$12;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$12;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardIntent;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getLeaderboardSwitchStatus(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnLeaderboardSwitchStatus;)V
    .locals 1

    .line 32
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getRankingsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/RankingsClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/huawei/hms/jos/games/RankingsClient;->getRankingSwitchStatus()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 33
    new-instance v0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$1;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$1;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnLeaderboardSwitchStatus;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    .line 42
    new-instance v0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$2;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$2;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnLeaderboardSwitchStatus;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getLeaderboardTopScores(Landroid/app/Activity;Ljava/lang/String;IIJILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V
    .locals 7

    .line 407
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getRankingsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/RankingsClient;

    move-result-object v0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    move v6, p7

    invoke-interface/range {v0 .. v6}, Lcom/huawei/hms/jos/games/RankingsClient;->getRankingTopScores(Ljava/lang/String;IIJI)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 408
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$21;

    invoke-direct {p2, p0, p8}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$21;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    .line 416
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$22;

    invoke-direct {p2, p0, p8}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$22;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getLeaderboardTopScores(Landroid/app/Activity;Ljava/lang/String;IIZLcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V
    .locals 0

    .line 359
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getRankingsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/RankingsClient;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/huawei/hms/jos/games/RankingsClient;->getRankingTopScores(Ljava/lang/String;IIZ)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 360
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$19;

    invoke-direct {p2, p0, p6}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$19;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    .line 368
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$20;

    invoke-direct {p2, p0, p6}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$20;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getLeaderboardsData(Landroid/app/Activity;ZLcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboards;)V
    .locals 0

    .line 298
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getRankingsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/RankingsClient;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/huawei/hms/jos/games/RankingsClient;->getRankingSummary(Z)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 299
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$15;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$15;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboards;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    .line 307
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$16;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$16;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboards;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getMoreLeaderboardScores(Landroid/app/Activity;Ljava/lang/String;JIIILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V
    .locals 7

    .line 526
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getRankingsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/RankingsClient;

    move-result-object v0

    move-object v1, p2

    move-wide v2, p3

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-interface/range {v0 .. v6}, Lcom/huawei/hms/jos/games/RankingsClient;->getMoreRankingScores(Ljava/lang/String;JIII)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 527
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$29;

    invoke-direct {p2, p0, p8}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$29;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    .line 535
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$30;

    invoke-direct {p2, p0, p8}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$30;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getPlayerCenteredLeaderboardScores(Landroid/app/Activity;Ljava/lang/String;IIJILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V
    .locals 7

    .line 496
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getRankingsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/RankingsClient;

    move-result-object v0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    move v6, p7

    invoke-interface/range {v0 .. v6}, Lcom/huawei/hms/jos/games/RankingsClient;->getPlayerCenteredRankingScores(Ljava/lang/String;IIJI)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 497
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$27;

    invoke-direct {p2, p0, p8}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$27;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    .line 505
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$28;

    invoke-direct {p2, p0, p8}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$28;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getPlayerCenteredLeaderboardScores(Landroid/app/Activity;Ljava/lang/String;IIZLcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V
    .locals 0

    .line 466
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getRankingsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/RankingsClient;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/huawei/hms/jos/games/RankingsClient;->getPlayerCenteredRankingScores(Ljava/lang/String;IIZ)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 467
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$25;

    invoke-direct {p2, p0, p6}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$25;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    .line 475
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$26;

    invoke-direct {p2, p0, p6}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$26;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public setLeaderboardSwitchStatus(Landroid/app/Activity;ILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnLeaderboardSwitchStatus;)V
    .locals 0

    .line 70
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getRankingsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/RankingsClient;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/huawei/hms/jos/games/RankingsClient;->setRankingSwitchStatus(I)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 71
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$3;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$3;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnLeaderboardSwitchStatus;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    .line 80
    new-instance p2, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$4;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$4;-><init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnLeaderboardSwitchStatus;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public submitScore(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2

    .line 100
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getRankingsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/RankingsClient;

    move-result-object p1

    int-to-long v0, p3

    invoke-interface {p1, p2, v0, v1}, Lcom/huawei/hms/jos/games/RankingsClient;->submitRankingScore(Ljava/lang/String;J)V

    return-void
.end method

.method public submitScore(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 148
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getRankingsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/RankingsClient;

    move-result-object p1

    int-to-long v0, p3

    invoke-interface {p1, p2, v0, v1, p4}, Lcom/huawei/hms/jos/games/RankingsClient;->submitRankingScore(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
