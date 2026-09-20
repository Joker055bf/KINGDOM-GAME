.class public Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;
.super Ljava/lang/Object;
.source "ArchiveSummaryAdapter.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/EntityAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unity/udp/extension/sdk/EntityAdapter<",
        "Lcom/huawei/hms/jos/games/archive/ArchiveSummary;",
        "Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static adapter:Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;
    .locals 1

    .line 26
    sget-object v0, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;

    invoke-direct {v0}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;-><init>()V

    sput-object v0, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;

    .line 29
    :cond_0
    sget-object v0, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;

    return-object v0
.end method


# virtual methods
.method public adapt(Lcom/huawei/hms/jos/games/archive/ArchiveSummary;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 37
    :cond_0
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;

    invoke-direct {v0}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/archive/ArchiveSummary;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->setSnapshotId(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/archive/ArchiveSummary;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->setUniqueName(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/archive/ArchiveSummary;->getDescInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->setDescription(Ljava/lang/String;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/archive/ArchiveSummary;->getActiveTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->setPlayedTime(J)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/archive/ArchiveSummary;->getCurrentProgress()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->setProgressValue(J)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;

    move-result-object v0

    .line 43
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/archive/ArchiveSummary;->getGamePlayer()Lcom/huawei/hms/jos/games/player/Player;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;->adapt(Lcom/huawei/hms/jos/games/player/Player;)Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->setPlayer(Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/archive/ArchiveSummary;->getThumbnailRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->setCoverImageAspectRatio(F)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/archive/ArchiveSummary;->hasThumbnail()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->setHasCoverImage(Z)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/extra/GameAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/extra/GameAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/archive/ArchiveSummary;->getGameSummary()Lcom/huawei/hms/jos/games/gamesummary/GameSummary;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unity/udp/huawei/extension/games/extra/GameAdapter;->adapt(Lcom/huawei/hms/jos/games/gamesummary/GameSummary;)Lcom/unity/udp/extension/sdk/games/entity/GameEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->setGame(Lcom/unity/udp/extension/sdk/games/entity/GameEntity;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {p1}, Lcom/huawei/hms/jos/games/archive/ArchiveSummary;->getRecentUpdateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->setLastModifiedTimestamp(J)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity$Builder;->build()Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adapt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/huawei/hms/jos/games/archive/ArchiveSummary;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;->adapt(Lcom/huawei/hms/jos/games/archive/ArchiveSummary;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;

    move-result-object p1

    return-object p1
.end method

.method public listAdapt(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/jos/games/archive/ArchiveSummary;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 94
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/jos/games/archive/ArchiveSummary;

    .line 96
    invoke-virtual {p0, v1}, Lcom/unity/udp/huawei/extension/games/extra/ArchiveSummaryAdapter;->adapt(Lcom/huawei/hms/jos/games/archive/ArchiveSummary;)Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public reverseAdapt(Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;)Lcom/huawei/hms/jos/games/archive/ArchiveSummary;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 57
    :cond_0
    :try_start_0
    const-class v1, Lcom/huawei/hms/jos/games/archive/ArchiveSummary;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 59
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "archiveId"

    .line 60
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->getSnapshotId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "uniqueName"

    .line 61
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->getUniqueName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "description"

    .line 62
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "coverImageAspectRatio"

    .line 63
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->getCoverImageAspectRatio()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "playedTime"

    .line 64
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->getPlayedTime()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "progressValue"

    .line 65
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->getProgressValue()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "lastModifiedTimestamp"

    .line 66
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->getLastModifiedTimestamp()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "hasThumbnail"

    .line 67
    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->isHasCoverImage()Z

    move-result v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "player"

    .line 68
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;

    move-result-object v6

    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->getPlayer()Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/unity/udp/huawei/extension/games/event/PlayerAdapter;->getJSONStr(Lcom/unity/udp/extension/sdk/games/entity/PlayerEntity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "game"

    .line 69
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/extra/GameAdapter;->getInstance()Lcom/unity/udp/huawei/extension/games/extra/GameAdapter;

    move-result-object v6

    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/SnapshotDataEntity;->getGame()Lcom/unity/udp/extension/sdk/games/entity/GameEntity;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/unity/udp/huawei/extension/games/extra/GameAdapter;->getJSONStr(Lcom/unity/udp/extension/sdk/games/entity/GameEntity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-array p1, v2, [Ljava/lang/Object;

    .line 70
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v5

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/jos/games/archive/ArchiveSummary;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    const-string p1, "ArchiveSummary reverseAdapt: InvocationTargetException"

    .line 85
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logError(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    const-string p1, "ArchiveSummary reverseAdapt: InstantiationException"

    .line 82
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logError(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    const-string p1, "ArchiveSummary reverseAdapt: IllegalAccessException"

    .line 79
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logError(Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 75
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, "ArchiveSummary reverseAdapt: JSONException"

    .line 76
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logError(Ljava/lang/String;)V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const-string p1, "ArchiveSummary reverseAdapt: NoSuchMethodException"

    .line 73
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logError(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
