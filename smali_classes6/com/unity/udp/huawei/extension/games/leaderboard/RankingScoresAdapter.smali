.class public Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoresAdapter;
.super Ljava/lang/Object;
.source "RankingScoresAdapter.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/EntityAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unity/udp/extension/sdk/EntityAdapter<",
        "Lcom/huawei/hms/jos/games/RankingsClient$RankingScores;",
        "Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoresEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoresAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoresAdapter;
    .locals 1

    .line 16
    sget-object v0, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoresAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoresAdapter;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoresAdapter;

    invoke-direct {v0}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoresAdapter;-><init>()V

    sput-object v0, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoresAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoresAdapter;

    .line 19
    :cond_0
    sget-object v0, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoresAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoresAdapter;

    return-object v0
.end method


# virtual methods
.method public adapt(Lcom/huawei/hms/jos/games/RankingsClient$RankingScores;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoresEntity;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 27
    :cond_0
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoresEntity;

    invoke-static {}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/leaderboard/RankingAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/RankingsClient$RankingScores;->getRanking()Lcom/huawei/hms/jos/games/ranking/Ranking;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingAdapter;->adapt(Lcom/huawei/hms/jos/games/ranking/Ranking;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;

    move-result-object v1

    .line 28
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoreAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoreAdapter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/RankingsClient$RankingScores;->getRankingScores()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoreAdapter;->listAdapt(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoresEntity;-><init>(Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic adapt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p1, Lcom/huawei/hms/jos/games/RankingsClient$RankingScores;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoresAdapter;->adapt(Lcom/huawei/hms/jos/games/RankingsClient$RankingScores;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoresEntity;

    move-result-object p1

    return-object p1
.end method
