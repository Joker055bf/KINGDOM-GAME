.class public Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievementsImpl;
.super Ljava/lang/Object;
.source "UdpAchievementsImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncIncrement(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnIncrement;)V
    .locals 1

    .line 29
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getAchievementsClient()Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;->asyncIncrement(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnIncrement;)V

    return-void
.end method

.method public static asyncReveal(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnReveal;)V
    .locals 1

    .line 21
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getAchievementsClient()Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;->asyncReveal(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnReveal;)V

    return-void
.end method

.method public static asyncSetSteps(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnSetSteps;)V
    .locals 1

    .line 37
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getAchievementsClient()Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;->asyncSetSteps(Landroid/app/Activity;Ljava/lang/String;ILcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnSetSteps;)V

    return-void
.end method

.method public static asyncUnlock(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnUnlock;)V
    .locals 1

    .line 45
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getAchievementsClient()Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;->asyncUnlock(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnUnlock;)V

    return-void
.end method

.method public static getAchievementList(Landroid/app/Activity;ZLcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementList;)V
    .locals 1

    .line 9
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getAchievementsClient()Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;->getAchievementList(Landroid/app/Activity;ZLcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementList;)V

    return-void
.end method

.method public static getAchievementsIntent(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementsIntent;)V
    .locals 1

    .line 13
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getAchievementsClient()Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;->getAchievementsIntent(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/achievement/AchievementsCallback$OnGetAchievementsIntent;)V

    return-void
.end method

.method public static increment(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    .line 25
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getAchievementsClient()Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;->increment(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method public static reveal(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getAchievementsClient()Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;->reveal(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static setSteps(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    .line 33
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getAchievementsClient()Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;->setSteps(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method public static unlock(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 41
    invoke-static {}, Lcom/unity/udp/extension/sdk/games/UdpGames;->getAchievementsClient()Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;->unlock(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
