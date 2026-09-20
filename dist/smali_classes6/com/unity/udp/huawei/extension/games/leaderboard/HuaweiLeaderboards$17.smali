.class Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$17;
.super Ljava/lang/Object;
.source "HuaweiLeaderboards.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;->getLeaderboardData(Landroid/app/Activity;Ljava/lang/String;ZLcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Lcom/huawei/hms/jos/games/ranking/Ranking;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboard;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboard;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$17;->this$0:Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$17;->val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/huawei/hms/jos/games/ranking/Ranking;)V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$17;->val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboard;

    if-eqz v0, :cond_0

    .line 333
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/leaderboard/RankingAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingAdapter;->adapt(Lcom/huawei/hms/jos/games/ranking/Ranking;)Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboard;->onSuccess(Lcom/unity/udp/extension/sdk/games/entity/LeaderboardEntity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 329
    check-cast p1, Lcom/huawei/hms/jos/games/ranking/Ranking;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$17;->onSuccess(Lcom/huawei/hms/jos/games/ranking/Ranking;)V

    return-void
.end method
