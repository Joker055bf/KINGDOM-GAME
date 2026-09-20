.class Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$2;
.super Ljava/lang/Object;
.source "HuaweiAchievements.java"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;->getAchievementList(Landroid/app/Activity;ZLcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementList;)V
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
        "Lcom/huawei/hms/jos/games/achievement/Achievement;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;

.field final synthetic val$callback:Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementList;


# direct methods
.method constructor <init>(Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementList;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$2;->this$0:Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;

    iput-object p2, p0, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$2;->val$callback:Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$2;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/jos/games/achievement/Achievement;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    const-string p1, "Achievement module, achievement list is null"

    .line 30
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$2;->val$callback:Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementList;

    if-eqz p1, :cond_0

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementList;->onSuccess(Ljava/util/List;)V

    :cond_0
    return-void

    .line 36
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/jos/games/achievement/Achievement;

    .line 38
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/achievement/AchievementAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/achievement/AchievementAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/unity/udp/huawei/extension/games/achievement/AchievementAdapter;->adapt(Lcom/huawei/hms/jos/games/achievement/Achievement;)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Achievement module, achievement list "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$2;->val$callback:Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementList;

    if-eqz p1, :cond_3

    .line 42
    invoke-interface {p1, v0}, Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementList;->onSuccess(Ljava/util/List;)V

    :cond_3
    return-void
.end method
