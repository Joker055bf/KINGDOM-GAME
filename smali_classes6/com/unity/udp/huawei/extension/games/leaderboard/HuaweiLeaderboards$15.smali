.class Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$15;
.super Ljava/lang/Object;
.source "HuaweiLeaderboards.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;->getLeaderboardsData(Landroid/app/Activity;ZLcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboards;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Ljava/util/List<",
        "Lcom/huawei/hms/jos/games/ranking/Ranking;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboards;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboards;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$15;->this$0:Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$15;->val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboards;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 299
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$15;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/jos/games/ranking/Ranking;",
            ">;)V"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$15;->val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboards;

    if-eqz v0, :cond_0

    .line 303
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/leaderboard/RankingAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/unity/udp/huawei/extension/games/leaderboard/RankingAdapter;->listAdapt(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboards;->onSuccess(Ljava/util/List;)V

    :cond_0
    return-void
.end method
