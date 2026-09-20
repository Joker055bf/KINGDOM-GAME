.class Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$30;
.super Ljava/lang/Object;
.source "HuaweiLeaderboards.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;->getMoreLeaderboardScores(Landroid/app/Activity;Ljava/lang/String;JIIILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$30;->this$0:Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$30;->val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 4

    .line 539
    instance-of v0, p1, Lcom/huawei/hms/common/ApiException;

    if-eqz v0, :cond_0

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rtnCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/huawei/hms/common/ApiException;

    invoke-virtual {v1}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Leaderboards module, getLeaderboardTopScores failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logError(Ljava/lang/String;)V

    .line 543
    new-instance v0, Lcom/unity/udp/extension/sdk/Result;

    invoke-virtual {v1}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/unity/udp/extension/sdk/Result;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 545
    :cond_0
    new-instance v0, Lcom/unity/udp/extension/sdk/Result;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/unity/udp/extension/sdk/Result;-><init>(I)V

    .line 547
    :goto_0
    iget-object v1, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$30;->val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;

    if-eqz v1, :cond_1

    .line 548
    invoke-interface {v1, p1, v0}, Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardScores;->onFailure(Ljava/lang/Exception;Lcom/unity/udp/extension/sdk/Result;)V

    :cond_1
    return-void
.end method
