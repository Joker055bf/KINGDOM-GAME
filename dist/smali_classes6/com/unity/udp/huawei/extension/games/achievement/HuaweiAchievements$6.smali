.class Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$6;
.super Ljava/lang/Object;
.source "HuaweiAchievements.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;->asyncReveal(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnReveal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnReveal;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnReveal;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$6;->this$0:Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$6;->val$callback:Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnReveal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 116
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$6;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 0

    const-string p1, "Achievement module, visualizeWithResult success"

    .line 119
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$6;->val$callback:Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnReveal;

    if-eqz p1, :cond_0

    .line 121
    invoke-interface {p1}, Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnReveal;->onSuccess()V

    :cond_0
    return-void
.end method
