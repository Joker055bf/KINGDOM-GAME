.class public Lcom/unity/udp/huawei/extension/games/achievement/AchievementAdapter;
.super Ljava/lang/Object;
.source "AchievementAdapter.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/EntityAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unity/udp/extension/sdk/EntityAdapter<",
        "Lcom/huawei/hms/jos/games/achievement/Achievement;",
        "Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static adapter:Lcom/unity/udp/huawei/extension/games/achievement/AchievementAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unity/udp/huawei/extension/games/achievement/AchievementAdapter;
    .locals 1

    .line 18
    sget-object v0, Lcom/unity/udp/huawei/extension/games/achievement/AchievementAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/achievement/AchievementAdapter;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/unity/udp/huawei/extension/games/achievement/AchievementAdapter;

    invoke-direct {v0}, Lcom/unity/udp/huawei/extension/games/achievement/AchievementAdapter;-><init>()V

    sput-object v0, Lcom/unity/udp/huawei/extension/games/achievement/AchievementAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/achievement/AchievementAdapter;

    .line 21
    :cond_0
    sget-object v0, Lcom/unity/udp/huawei/extension/games/achievement/AchievementAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/achievement/AchievementAdapter;

    return-object v0
.end method


# virtual methods
.method public adapt(Lcom/huawei/hms/jos/games/achievement/Achievement;)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "achievement == null"

    .line 27
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 30
    :cond_0
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/achievement/Achievement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->setAchievementId(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/achievement/Achievement;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->setType(I)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/achievement/Achievement;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->setName(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/achievement/Achievement;->getDescInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->setDescription(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/achievement/Achievement;->getReachedThumbnailUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->setUnlockedImageUrl(Landroid/net/Uri;)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/achievement/Achievement;->getVisualizedThumbnailUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->setRevealedImageUrl(Landroid/net/Uri;)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/achievement/Achievement;->getAllSteps()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->setTotalSteps(I)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/achievement/Achievement;->getReachedSteps()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->setCurrentSteps(I)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/achievement/Achievement;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->setState(I)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/achievement/Achievement;->getRecentUpdateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->setLastUpdatedTimestamp(J)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/achievement/Achievement;->getLocaleReachedSteps()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->setLocaleReachedSteps(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/achievement/Achievement;->getLocaleAllSteps()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->setLocaleAllSteps(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;

    move-result-object v0

    .line 43
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/achievement/Achievement;->getGamePlayer()Lcom/huawei/hms/jos/games/player/Player;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;->adapt(Lcom/huawei/hms/jos/games/player/Player;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->setGamePlayer(Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity$Builder;->build()Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adapt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Lcom/huawei/hms/jos/games/achievement/Achievement;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/achievement/AchievementAdapter;->adapt(Lcom/huawei/hms/jos/games/achievement/Achievement;)Lcom/unity/udp/extension/sdk/games/entity/AchievementEntity;

    move-result-object p1

    return-object p1
.end method
