.class public Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoreAdapter;
.super Ljava/lang/Object;
.source "RankingScoreAdapter.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/EntityAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unity/udp/extension/sdk/EntityAdapter<",
        "Lcom/huawei/hms/jos/games/ranking/RankingScore;",
        "Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoreAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoreAdapter;
    .locals 1

    .line 20
    sget-object v0, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoreAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoreAdapter;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoreAdapter;

    invoke-direct {v0}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoreAdapter;-><init>()V

    sput-object v0, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoreAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoreAdapter;

    .line 23
    :cond_0
    sget-object v0, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoreAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoreAdapter;

    return-object v0
.end method


# virtual methods
.method public adapt(Lcom/huawei/hms/jos/games/ranking/RankingScore;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 31
    :cond_0
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/ranking/RankingScore;->getDisplayRank()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->setDisplayRank(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/ranking/RankingScore;->getRankingDisplayScore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->setLeaderboardDisplayScore(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/ranking/RankingScore;->getPlayerRank()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->setPlayerRank(J)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/ranking/RankingScore;->getPlayerRawScore()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->setPlayerRawScore(J)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;

    move-result-object v0

    .line 36
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/ranking/RankingScore;->getScoreOwnerPlayer()Lcom/huawei/hms/jos/games/player/Player;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;->adapt(Lcom/huawei/hms/jos/games/player/Player;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->setScoreOwnerPlayer(Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/ranking/RankingScore;->getScoreTips()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->setScoreTag(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/ranking/RankingScore;->getTimeDimension()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->setTimeSpan(I)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/ranking/RankingScore;->getScoreTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->setScoreTimestamp(J)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity$Builder;->build()Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adapt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lcom/huawei/hms/jos/games/ranking/RankingScore;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoreAdapter;->adapt(Lcom/huawei/hms/jos/games/ranking/RankingScore;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;

    move-result-object p1

    return-object p1
.end method

.method public listAdapt(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/jos/games/ranking/RankingScore;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 47
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/jos/games/ranking/RankingScore;

    .line 49
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoreAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoreAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoreAdapter;->adapt(Lcom/huawei/hms/jos/games/ranking/RankingScore;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
