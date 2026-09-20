.class Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$9;
.super Ljava/lang/Object;
.source "HuaweiLeaderboards.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;->getAllLeaderboardsIntent(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardIntent;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardIntent;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$9;->this$0:Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$9;->val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/content/Intent;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$9;->val$callback:Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardIntent;

    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0, p1}, Lcom/unity/udp/extension/sdk/games/leaderboard/LeaderboardsCallback$OnGetLeaderboardIntent;->onSuccess(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 196
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/leaderboard/HuaweiLeaderboards$9;->onSuccess(Landroid/content/Intent;)V

    return-void
.end method
