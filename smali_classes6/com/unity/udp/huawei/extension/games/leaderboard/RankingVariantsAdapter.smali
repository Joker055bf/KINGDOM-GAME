.class public Lcom/unity/udp/huawei/extension/games/leaderboard/RankingVariantsAdapter;
.super Ljava/lang/Object;
.source "RankingVariantsAdapter.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/EntityAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unity/udp/extension/sdk/EntityAdapter<",
        "Lcom/huawei/hms/jos/games/ranking/RankingVariant;",
        "Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboardVariant;",
        ">;"
    }
.end annotation


# static fields
.field private static adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/RankingVariantsAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unity/udp/huawei/extension/games/leaderboard/RankingVariantsAdapter;
    .locals 1

    .line 19
    sget-object v0, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingVariantsAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/RankingVariantsAdapter;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingVariantsAdapter;

    invoke-direct {v0}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingVariantsAdapter;-><init>()V

    sput-object v0, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingVariantsAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/RankingVariantsAdapter;

    .line 22
    :cond_0
    sget-object v0, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingVariantsAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/RankingVariantsAdapter;

    return-object v0
.end method


# virtual methods
.method public adapt(Lcom/huawei/hms/jos/games/ranking/RankingVariant;)Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboardVariant;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 31
    :cond_0
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;-><init>()V

    .line 32
    invoke-interface {p1}, Lcom/huawei/hms/jos/games/ranking/RankingVariant;->getDisplayRanking()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->setDisplayPlayerRank(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;

    move-result-object v0

    .line 33
    invoke-interface {p1}, Lcom/huawei/hms/jos/games/ranking/RankingVariant;->getPlayerDisplayScore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->setDisplayPlayerScore(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;

    move-result-object v0

    .line 34
    invoke-interface {p1}, Lcom/huawei/hms/jos/games/ranking/RankingVariant;->getRankTotalScoreNum()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->setNumScores(J)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;

    move-result-object v0

    .line 35
    invoke-interface {p1}, Lcom/huawei/hms/jos/games/ranking/RankingVariant;->getPlayerRank()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->setPlayerRank(J)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;

    move-result-object v0

    .line 36
    invoke-interface {p1}, Lcom/huawei/hms/jos/games/ranking/RankingVariant;->getPlayerScoreTips()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->setPlayerScoreTag(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;

    move-result-object v0

    .line 37
    invoke-interface {p1}, Lcom/huawei/hms/jos/games/ranking/RankingVariant;->getPlayerRawScore()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->setRawPlayerScore(J)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;

    move-result-object v0

    .line 38
    invoke-interface {p1}, Lcom/huawei/hms/jos/games/ranking/RankingVariant;->timeDimension()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->setTimeSpan(I)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;

    move-result-object v0

    .line 39
    invoke-interface {p1}, Lcom/huawei/hms/jos/games/ranking/RankingVariant;->hasPlayerInfo()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->hasPlayerInfo(Z)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity$Builder;->build()Lcom/unity/udp/extension/sdk/games/entity/LeaderboardVariantEntity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adapt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lcom/huawei/hms/jos/games/ranking/RankingVariant;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingVariantsAdapter;->adapt(Lcom/huawei/hms/jos/games/ranking/RankingVariant;)Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboardVariant;

    move-result-object p1

    return-object p1
.end method

.method public listAdapt(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/hms/jos/games/ranking/RankingVariant;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboardVariant;",
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
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/jos/games/ranking/RankingVariant;

    .line 49
    invoke-virtual {p0, v1}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingVariantsAdapter;->adapt(Lcom/huawei/hms/jos/games/ranking/RankingVariant;)Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboardVariant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
