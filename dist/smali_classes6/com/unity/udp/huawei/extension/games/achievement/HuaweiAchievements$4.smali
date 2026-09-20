.class Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$4;
.super Ljava/lang/Object;
.source "HuaweiAchievements.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;->getAchievementsIntent(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementsIntent;)V
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
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementsIntent;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementsIntent;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$4;->this$0:Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$4;->val$callback:Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementsIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/content/Intent;)V
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    const-string p1, "Achievement module, intent = null"

    .line 70
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logWarn(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$4;->val$callback:Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementsIntent;

    if-eqz v1, :cond_1

    .line 72
    new-instance v2, Lcom/unity/udp/extension/sdk/Result;

    invoke-direct {v2, v0, p1}, Lcom/unity/udp/extension/sdk/Result;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    invoke-interface {v1, p1, v2}, Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementsIntent;->onFailure(Ljava/lang/Exception;Lcom/unity/udp/extension/sdk/Result;)V

    goto :goto_0

    .line 77
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$4;->val$callback:Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementsIntent;

    if-eqz v1, :cond_1

    .line 78
    invoke-interface {v1, p1}, Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementsIntent;->onSuccess(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Achievement module, Achievement Activity is Invalid"

    .line 81
    invoke-static {v1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logError(Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$4;->val$callback:Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementsIntent;

    if-eqz v2, :cond_1

    .line 83
    new-instance v3, Lcom/unity/udp/extension/sdk/Result;

    invoke-direct {v3, v0, v1}, Lcom/unity/udp/extension/sdk/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, p1, v3}, Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementsIntent;->onFailure(Ljava/lang/Exception;Lcom/unity/udp/extension/sdk/Result;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 66
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$4;->onSuccess(Landroid/content/Intent;)V

    return-void
.end method
