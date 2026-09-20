.class Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$23;
.super Ljava/lang/Object;
.source "HuaweiLeaderboards.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;->getCurrentPlayerLeaderboardScore(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Lcom/huawei/hms/jos/games/ranking/RankingScore;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScore;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScore;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$23;->this$0:Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$23;->val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/huawei/hms/jos/games/ranking/RankingScore;)V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$23;->val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScore;

    if-eqz v0, :cond_0

    .line 441
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoreAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoreAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingScoreAdapter;->adapt(Lcom/huawei/hms/jos/games/ranking/RankingScore;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScore;->onSuccess(Lcom/unity/udp/extension/sdk/games/entity/LeaderboardScoreEntity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 437
    check-cast p1, Lcom/huawei/hms/jos/games/ranking/RankingScore;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$23;->onSuccess(Lcom/huawei/hms/jos/games/ranking/RankingScore;)V

    return-void
.end method
