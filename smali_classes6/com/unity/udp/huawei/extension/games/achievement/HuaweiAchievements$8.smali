.class Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$8;
.super Ljava/lang/Object;
.source "HuaweiAchievements.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;->asyncIncrement(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnIncrement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnIncrement;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnIncrement;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$8;->this$0:Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$8;->val$callback:Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnIncrement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 1

    .line 155
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Achievement module, growWithResult success"

    .line 156
    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Achievement module, growWithResult failed, achievement can not increment"

    .line 158
    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$8;->val$callback:Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnIncrement;

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnIncrement;->onSuccess(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 152
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$8;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
