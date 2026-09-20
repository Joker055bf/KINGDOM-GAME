.class public Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoresEntity;
.super Ljava/lang/Object;
.source "LeaderboardScoresEntity.java"


# instance fields
.field private leaderboard:Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;

.field private leaderboardScores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;",
            "Ljava/util/List<",
            "Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoresEntity;->leaderboard:Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;

    .line 11
    iput-object p2, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoresEntity;->leaderboardScores:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getLeaderboard()Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoresEntity;->leaderboard:Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;

    return-object v0
.end method

.method public getLeaderboardScores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoresEntity;->leaderboardScores:Ljava/util/List;

    return-object v0
.end method

.method public setLeaderboard(Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoresEntity;->leaderboard:Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;

    return-void
.end method

.method public setLeaderboardScores(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoresEntity;->leaderboardScores:Ljava/util/List;

    return-void
.end method
