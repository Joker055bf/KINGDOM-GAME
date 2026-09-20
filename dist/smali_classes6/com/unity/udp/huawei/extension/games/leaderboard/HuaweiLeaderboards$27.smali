.class Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$27;
.super Ljava/lang/Object;
.source "HuaweiLeaderboards.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;->getPlayerCenteredLeaderboardScores(Landroid/app/Activity;Ljava/lang/String;IIJILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Lcom/huawei/hms/jos/games/RankingsClient$RankingScores;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$27;->this$0:Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$27;->val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/huawei/hms/jos/games/RankingsClient$RankingScores;)V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$27;->val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;

    if-eqz v0, :cond_0

    .line 501
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoresAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoresAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoresAdapter;->adapt(Lcom/huawei/hms/jos/games/RankingsClient$RankingScores;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoresEntity;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;->onSuccess(Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoresEntity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 497
    check-cast p1, Lcom/huawei/hms/jos/games/RankingsClient$RankingScores;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$27;->onSuccess(Lcom/huawei/hms/jos/games/RankingsClient$RankingScores;)V

    return-void
.end method
