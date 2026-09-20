.class public Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;
.super Ljava/lang/Object;
.source "HuaweiAchievements.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asyncIncrement(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnIncrement;)V
    .locals 1

    const-string v0, "HuaweiAchievements: invoke growWithResult"

    .line 150
    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 151
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/AchievementsClient;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/huawei/hms/jos/games/AchievementsClient;->growWithResult(Ljava/lang/String;I)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 152
    new-instance p2, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$8;

    invoke-direct {p2, p0, p4}, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$8;-><init>(Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnIncrement;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$7;

    invoke-direct {p2, p0, p4}, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$7;-><init>(Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnIncrement;)V

    .line 164
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public asyncReveal(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnReveal;)V
    .locals 1

    const-string v0, "HuaweiAchievements: invoke visualizeWithResult"

    .line 114
    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 115
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/AchievementsClient;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/huawei/hms/jos/games/AchievementsClient;->visualizeWithResult(Ljava/lang/String;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 116
    new-instance p2, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$6;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$6;-><init>(Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnReveal;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$5;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$5;-><init>(Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnReveal;)V

    .line 124
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public asyncSetSteps(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnSetSteps;)V
    .locals 1

    const-string v0, "HuaweiAchievements: invoke makeStepsWithResult"

    .line 190
    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 191
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/AchievementsClient;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/huawei/hms/jos/games/AchievementsClient;->makeStepsWithResult(Ljava/lang/String;I)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 192
    new-instance p2, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$10;

    invoke-direct {p2, p0, p4}, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$10;-><init>(Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnSetSteps;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$9;

    invoke-direct {p2, p0, p4}, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$9;-><init>(Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnSetSteps;)V

    .line 204
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public asyncUnlock(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnUnlock;)V
    .locals 1

    const-string v0, "HuaweiAchievements: invoke reachWithResult"

    .line 231
    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 232
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/AchievementsClient;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/huawei/hms/jos/games/AchievementsClient;->reachWithResult(Ljava/lang/String;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 233
    new-instance p2, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$12;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$12;-><init>(Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnUnlock;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$11;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$11;-><init>(Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnUnlock;)V

    .line 241
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getAchievementList(Landroid/app/Activity;ZLcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementList;)V
    .locals 0

    .line 25
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/AchievementsClient;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/huawei/hms/jos/games/AchievementsClient;->getAchievementList(Z)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 26
    new-instance p2, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$2;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$2;-><init>(Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementList;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$1;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$1;-><init>(Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementList;)V

    .line 45
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public getAchievementsIntent(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementsIntent;)V
    .locals 1

    .line 65
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/AchievementsClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/huawei/hms/jos/games/AchievementsClient;->getShowAchievementListIntent()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 66
    new-instance v0, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$4;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$4;-><init>(Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementsIntent;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$3;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements$3;-><init>(Lcom/unity/udp/huawei/extension/games/achievement/HuaweiAchievements;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementsIntent;)V

    .line 88
    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public increment(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "HuaweiAchievements: invoke grow"

    .line 144
    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 145
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/AchievementsClient;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/huawei/hms/jos/games/AchievementsClient;->grow(Ljava/lang/String;I)V

    return-void
.end method

.method public reveal(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "HuaweiAchievements: invoke visualize"

    .line 108
    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 109
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/AchievementsClient;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/huawei/hms/jos/games/AchievementsClient;->visualize(Ljava/lang/String;)V

    return-void
.end method

.method public setSteps(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "HuaweiAchievements: invoke makeSteps"

    .line 184
    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 185
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/AchievementsClient;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/huawei/hms/jos/games/AchievementsClient;->makeSteps(Ljava/lang/String;I)V

    return-void
.end method

.method public unlock(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "HuaweiAchievements: invoke reach"

    .line 225
    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 226
    invoke-static {p1}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/AchievementsClient;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/huawei/hms/jos/games/AchievementsClient;->reach(Ljava/lang/String;)V

    return-void
.end method
