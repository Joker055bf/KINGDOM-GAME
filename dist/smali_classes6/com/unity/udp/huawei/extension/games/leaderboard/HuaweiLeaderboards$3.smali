.class Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$3;
.super Ljava/lang/Object;
.source "HuaweiLeaderboards.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;->setLeaderboardSwitchStatus(Landroid/app/Activity;ILcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnLeaderboardSwitchStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnLeaderboardSwitchStatus;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnLeaderboardSwitchStatus;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$3;->this$0:Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$3;->val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnLeaderboardSwitchStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "Leaderboards module, success to set the value,the server will reponse the latest value."

    .line 74
    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$3;->val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnLeaderboardSwitchStatus;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnLeaderboardSwitchStatus;->onSuccess(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$3;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
