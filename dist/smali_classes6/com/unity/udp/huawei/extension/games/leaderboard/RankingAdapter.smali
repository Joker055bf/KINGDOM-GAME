.class public Lcom/unity/udp/huawei/extension/games/leaderboard/RankingAdapter;
.super Ljava/lang/Object;
.source "RankingAdapter.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/EntityAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unity/udp/extension/sdk/EntityAdapter<",
        "Lcom/huawei/hms/jos/games/ranking/Ranking;",
        "Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/RankingAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unity/udp/huawei/extension/games/leaderboard/RankingAdapter;
    .locals 1

    .line 19
    sget-object v0, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/RankingAdapter;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingAdapter;

    invoke-direct {v0}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingAdapter;-><init>()V

    sput-object v0, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/RankingAdapter;

    .line 22
    :cond_0
    sget-object v0, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/leaderboard/RankingAdapter;

    return-object v0
.end method


# virtual methods
.method public adapt(Lcom/huawei/hms/jos/games/ranking/Ranking;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 31
    :cond_0
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/ranking/Ranking;->getRankingDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;->setLeaderboardDisplayName(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/ranking/Ranking;->getRankingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;->setLeaderboardId(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/ranking/Ranking;->getRankingImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;->setLeaderboardImageUri(Landroid/net/Uri;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/ranking/Ranking;->getRankingScoreOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;->setLeaderboardScoreOrder(I)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;

    move-result-object v0

    .line 36
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingVariantsAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/leaderboard/RankingVariantsAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/ranking/Ranking;->getRankingVariants()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingVariantsAdapter;->listAdapt(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;->setLeaderboardVariants(Ljava/util/ArrayList;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity$Builder;->build()Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adapt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lcom/huawei/hms/jos/games/ranking/Ranking;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingAdapter;->adapt(Lcom/huawei/hms/jos/games/ranking/Ranking;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;

    move-result-object p1

    return-object p1
.end method

.method public listAdapt(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/jos/games/ranking/Ranking;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 44
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/jos/games/ranking/Ranking;

    .line 46
    invoke-virtual {p0, v1}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingAdapter;->adapt(Lcom/huawei/hms/jos/games/ranking/Ranking;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
