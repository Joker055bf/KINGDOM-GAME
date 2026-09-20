.class public Lcom/unity/udp/huawei/extension/games/extra/GameAdapter;
.super Ljava/lang/Object;
.source "GameAdapter.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/EntityAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unity/udp/extension/sdk/EntityAdapter<",
        "Lcom/huawei/hms/jos/games/gamesummary/GameSummary;",
        "Lcom/unity/udp/extension/sdk/games/entity/GameEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static adapter:Lcom/unity/udp/huawei/extension/games/extra/GameAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unity/udp/huawei/extension/games/extra/GameAdapter;
    .locals 1

    .line 18
    sget-object v0, Lcom/unity/udp/huawei/extension/games/extra/GameAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/extra/GameAdapter;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/unity/udp/huawei/extension/games/extra/GameAdapter;

    invoke-direct {v0}, Lcom/unity/udp/huawei/extension/games/extra/GameAdapter;-><init>()V

    sput-object v0, Lcom/unity/udp/huawei/extension/games/extra/GameAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/extra/GameAdapter;

    .line 21
    :cond_0
    sget-object v0, Lcom/unity/udp/huawei/extension/games/extra/GameAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/extra/GameAdapter;

    return-object v0
.end method


# virtual methods
.method public adapt(Lcom/huawei/hms/jos/games/gamesummary/GameSummary;)Lcom/unity/udp/extension/sdk/games/entity/GameEntity;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 29
    :cond_0
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/gamesummary/GameSummary;->getAchievementCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->setAchievementTotalCount(I)Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/gamesummary/GameSummary;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->setApplicationId(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/gamesummary/GameSummary;->getDescInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->setDescription(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/gamesummary/GameSummary;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->setDisplayName(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/gamesummary/GameSummary;->getGameHdImgUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->setHiResImageUri(Landroid/net/Uri;)Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/gamesummary/GameSummary;->getGameIconUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->setIconImageUri(Landroid/net/Uri;)Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/gamesummary/GameSummary;->getRankingCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->setLeaderboardCount(I)Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/gamesummary/GameSummary;->getFirstKind()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->setPrimaryCategory(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/gamesummary/GameSummary;->getSecondKind()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->setSecondaryCategory(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/GameEntity$Builder;->build()Lcom/unity/udp/extension/sdk/games/entity/GameEntity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adapt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lcom/huawei/hms/jos/games/gamesummary/GameSummary;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/extra/GameAdapter;->adapt(Lcom/huawei/hms/jos/games/gamesummary/GameSummary;)Lcom/unity/udp/extension/sdk/games/entity/GameEntity;

    move-result-object p1

    return-object p1
.end method

.method public getJSONStr(Lcom/unity/udp/extension/sdk/games/entity/GameEntity;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 46
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "achievementTotalCount"

    .line 48
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->getAchievementTotalCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "applicationId"

    .line 49
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "description"

    .line 50
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "displayName"

    .line 51
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "hiResImageUri"

    .line 52
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "iconImageUri"

    .line 53
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rankingCount"

    .line 54
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->getLeaderboardCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "primaryCategory"

    .line 55
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->getPrimaryCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "secondaryCategory"

    .line 56
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/GameEntity;->getSecondaryCategory()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 60
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
