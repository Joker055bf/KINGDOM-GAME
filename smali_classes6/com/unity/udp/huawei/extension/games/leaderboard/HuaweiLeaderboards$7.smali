.class Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$7;
.super Ljava/lang/Object;
.source "HuaweiLeaderboards.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;->asyncSubmitScore(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnSubmitScore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnSubmitScore;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnSubmitScore;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$7;->this$0:Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$7;->val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnSubmitScore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo;)V
    .locals 2

    const-string v0, "Leaderboards module, success to get ScoreSubmissionInfo bean data"

    .line 157
    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$7;->val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnSubmitScore;

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/unity/udp/huawei/extension/games/leaderboard/ScoreSubmissionAdapter;->adapt(Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo;)Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnSubmitScore;->onSuccess(Lcom/unity/udp/extension/sdk/games/entity/ScoreSubmissionEntity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 154
    check-cast p1, Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$7;->onSuccess(Lcom/huawei/hms/jos/games/ranking/ScoreSubmissionInfo;)V

    return-void
.end method
