.class public Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;
.super Ljava/lang/Object;
.source "GooglePlayAchievement.java"


# static fields
.field private static final RC_ACHIEVEMENTS_UI:I = 0x2329


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildAchievementJson(Lcom/google/android/gms/games/achievement/Achievement;I)Lcom/t4f/json/Json;
    .locals 12

    .line 249
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v0

    .line 250
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v1

    .line 251
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 257
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v6

    .line 258
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v7

    .line 259
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getFormattedCurrentSteps()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 260
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getFormattedTotalSteps()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move-object v8, v4

    move-object v9, v8

    move v7, v6

    .line 263
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[GooglePlayAchievement] loaded["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v10, "] id="

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v10, " name="

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v10, " state="

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v10, " type="

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    if-ne v0, v5, :cond_1

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " steps="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 263
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 269
    new-instance p1, Lcom/t4f/json/Json;

    invoke-direct {p1}, Lcom/t4f/json/Json;-><init>()V

    const-string v4, "id"

    .line 270
    invoke-virtual {p1, v4, v2}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    const-string v2, "name"

    .line 271
    invoke-virtual {p1, v2, v3}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    .line 272
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "desc"

    invoke-virtual {p1, v3, v2}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    const-string v2, "state"

    .line 273
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    const-string v1, "type"

    .line 274
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    .line 275
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getUnlockedImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unlockedUrl"

    invoke-virtual {p1, v1, v0}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    .line 276
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getRevealedImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "revealedUrl"

    invoke-virtual {p1, v1, v0}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    .line 277
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getXpValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "xp"

    invoke-virtual {p1, v1, v0}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    .line 278
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getLastUpdatedTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "lastUpdated"

    invoke-virtual {p1, v0, p0}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p0

    const-string p1, "curSteps"

    .line 279
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p0

    const-string p1, "totalSteps"

    .line 280
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p0

    const-string p1, "fmtCurSteps"

    .line 281
    invoke-virtual {p0, p1, v8}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p0

    const-string p1, "fmtTotalSteps"

    .line 282
    invoke-virtual {p0, p1, v9}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p0

    return-object p0
.end method

.method private static gmsStatus(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1

    .line 296
    instance-of v0, p0, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v0, :cond_0

    .line 297
    check-cast p0, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$showAchievementsUI$4(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x2329

    .line 152
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V
    .locals 1

    if-eqz p4, :cond_2

    const-string v0, ""

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, v0

    .line 303
    :goto_1
    invoke-interface {p4, p1, p2, p3}, Lcom/t4f/sdk/core/OnAndroidNativeCallback;->OnAndroidNativeCallback(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static nz(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method


# virtual methods
.method public increment(Landroid/app/Activity;Ljava/lang/String;ILcom/t4f/sdk/core/OnAndroidNativeCallback;)Z
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 57
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-gtz p3, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object p1

    .line 62
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/games/AchievementsClient;->incrementImmediate(Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda6;-><init>(Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;Ljava/lang/String;ILcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    .line 63
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const-string p1, "Invalid args."

    const/4 p2, 0x0

    const/16 p3, 0x7d5

    .line 58
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$increment$1$com-t4f-sdkgplay-gamesservices-GooglePlayAchievement(Ljava/lang/String;ILcom/t4f/sdk/core/OnAndroidNativeCallback;Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 64
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p4

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[GooglePlayAchievement] increment success: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " +"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " unlocked="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string p1, "unlocked"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const/16 p2, 0x7d0

    const-string p4, "Incremented."

    .line 68
    invoke-direct {p0, p2, p4, p1, p3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    goto :goto_2

    .line 71
    :cond_1
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 72
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_2
    const-string p4, "increment failed"

    .line 73
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[GooglePlayAchievement] increment failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " err="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const/16 p1, 0x7d1

    .line 74
    invoke-static {p2}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->gmsStatus(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p4, p2, p3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    :goto_2
    return-void
.end method

.method synthetic lambda$loadAchievements$6$com-t4f-sdkgplay-gamesservices-GooglePlayAchievement(Lcom/t4f/sdk/core/OnAndroidNativeCallback;Lcom/google/android/gms/games/AnnotatedData;)V
    .locals 8

    const-string v0, "[GooglePlayAchievement] buffer release failed: "

    const-string v1, "[GooglePlayAchievement] loadAchievements ok, count="

    const/4 v2, 0x0

    .line 196
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/achievement/AchievementBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v3, :cond_0

    .line 197
    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->getCount()I

    move-result v4

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto/16 :goto_8

    :catch_0
    move-exception p2

    move-object v2, v3

    goto/16 :goto_6

    :cond_0
    move v4, v2

    .line 198
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", stale="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 199
    invoke-virtual {p2}, Lcom/google/android/gms/games/AnnotatedData;->isStale()Z

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 198
    invoke-static {p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 200
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    :goto_1
    if-ge v2, v4, :cond_1

    .line 204
    :try_start_2
    invoke-virtual {v3, v2}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->get(I)Lcom/google/android/gms/games/achievement/Achievement;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->buildAchievementJson(Lcom/google/android/gms/games/achievement/Achievement;I)Lcom/t4f/json/Json;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v5

    add-int/lit8 v1, v1, 0x1

    .line 207
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GooglePlayAchievement] skip achievement["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    .line 217
    :try_start_4
    invoke-virtual {v3}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 225
    :cond_2
    :goto_3
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loaded "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    if-lez v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " skipped "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_3
    const-string v1, ""

    :goto_4
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_4

    goto :goto_5

    :cond_4
    const-string v0, "[]"

    :goto_5
    const/16 v1, 0x7d0

    .line 226
    invoke-direct {p0, v1, p2, v0, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    return-void

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_3
    move-exception p2

    .line 211
    :goto_6
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GooglePlayAchievement] loadAchievements parse failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->gmsStatus(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    const/16 v3, 0x7d1

    invoke-direct {p0, v3, v1, p2, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_5

    .line 217
    :try_start_6
    invoke-virtual {v2}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_7

    :catch_4
    move-exception p1

    .line 218
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    :cond_5
    :goto_7
    return-void

    :goto_8
    if-eqz v2, :cond_6

    .line 217
    :try_start_7
    invoke-virtual {v2}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_9

    :catch_5
    move-exception p2

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 220
    :cond_6
    :goto_9
    throw p1
.end method

.method synthetic lambda$loadAchievements$7$com-t4f-sdkgplay-gamesservices-GooglePlayAchievement(Lcom/t4f/sdk/core/OnAndroidNativeCallback;Ljava/lang/Exception;)V
    .locals 2

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[GooglePlayAchievement] loadAchievements failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->gmsStatus(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x7d1

    invoke-direct {p0, v1, v0, p2, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    return-void
.end method

.method synthetic lambda$reveal$3$com-t4f-sdkgplay-gamesservices-GooglePlayAchievement(Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 122
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "[GooglePlayAchievement] reveal success: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string p1, "Revealed."

    const/4 p3, 0x0

    const/16 v0, 0x7d0

    .line 124
    invoke-direct {p0, v0, p1, p3, p2}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    goto :goto_1

    .line 126
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 127
    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "reveal failed"

    .line 128
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[GooglePlayAchievement] reveal failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " err="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const/16 p1, 0x7d1

    .line 129
    invoke-static {p3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->gmsStatus(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, v0, p3, p2}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$setSteps$2$com-t4f-sdkgplay-gamesservices-GooglePlayAchievement(Ljava/lang/String;ILcom/t4f/sdk/core/OnAndroidNativeCallback;Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 93
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p4

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[GooglePlayAchievement] setSteps success: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " unlocked="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string p1, "unlocked"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const/16 p2, 0x7d0

    const-string p4, "Steps set."

    .line 97
    invoke-direct {p0, p2, p4, p1, p3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    goto :goto_2

    .line 100
    :cond_1
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 101
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_2
    const-string p4, "setSteps failed"

    .line 102
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[GooglePlayAchievement] setSteps failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " err="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const/16 p1, 0x7d1

    .line 103
    invoke-static {p2}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->gmsStatus(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p4, p2, p3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    :goto_2
    return-void
.end method

.method synthetic lambda$showAchievementsUI$5$com-t4f-sdkgplay-gamesservices-GooglePlayAchievement(Landroid/app/Activity;Lcom/t4f/sdk/core/OnAndroidNativeCallback;Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 148
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const/16 v1, 0x7d1

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    :try_start_0
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Intent;

    .line 151
    new-instance v0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda3;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string p1, "[GooglePlayAchievement] Achievements UI opened."

    .line 153
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string p1, "Opened."

    const/4 p3, 0x0

    const/16 v0, 0x7d0

    .line 154
    invoke-direct {p0, v0, p1, p3, p2}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 156
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "[GooglePlayAchievement] startActivity failed: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->gmsStatus(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p3, p1, p2}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    goto :goto_1

    .line 160
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 161
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const-string p3, "getAchievementsIntent failed"

    .line 162
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[GooglePlayAchievement] getAchievementsIntent failed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 163
    invoke-static {p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->gmsStatus(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p3, p1, p2}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$unlock$0$com-t4f-sdkgplay-gamesservices-GooglePlayAchievement(Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 38
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "[GooglePlayAchievement] unlock success: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string p1, "Unlocked."

    const/4 p3, 0x0

    const/16 v0, 0x7d0

    .line 40
    invoke-direct {p0, v0, p1, p3, p2}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    goto :goto_1

    .line 42
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 43
    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "unlock failed"

    .line 44
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[GooglePlayAchievement] unlock failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " err="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const/16 p1, 0x7d1

    .line 45
    invoke-static {p3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->gmsStatus(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, v0, p3, p2}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    :goto_1
    return-void
.end method

.method public loadAchievements(Landroid/app/Activity;ZLcom/t4f/sdk/core/OnAndroidNativeCallback;)Z
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "Activity is null."

    const/4 p2, 0x0

    const/16 v0, 0x7d5

    .line 183
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    const/4 p1, 0x0

    return p1

    .line 186
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object p1

    .line 190
    invoke-interface {p1, p2}, Lcom/google/android/gms/games/AchievementsClient;->load(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda1;-><init>(Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    .line 191
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda2;-><init>(Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    .line 230
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    const/4 p1, 0x1

    return p1
.end method

.method public reveal(Landroid/app/Activity;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)Z
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 115
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object p1

    .line 120
    invoke-interface {p1, p2}, Lcom/google/android/gms/games/AchievementsClient;->revealImmediate(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda4;-><init>(Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    .line 121
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const-string p1, "Invalid args."

    const/4 p2, 0x0

    const/16 v0, 0x7d5

    .line 116
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setSteps(Landroid/app/Activity;Ljava/lang/String;ILcom/t4f/sdk/core/OnAndroidNativeCallback;)Z
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 86
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-gtz p3, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object p1

    .line 91
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/games/AchievementsClient;->setStepsImmediate(Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda7;-><init>(Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;Ljava/lang/String;ILcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    .line 92
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const-string p1, "Invalid args."

    const/4 p2, 0x0

    const/16 p3, 0x7d5

    .line 87
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    const/4 p1, 0x0

    return p1
.end method

.method public showAchievementsUI(Landroid/app/Activity;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)Z
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "Activity is null."

    const/4 v0, 0x0

    const/16 v1, 0x7d5

    .line 142
    invoke-direct {p0, v1, p1, v0, p2}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    const/4 p1, 0x0

    return p1

    .line 145
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Lcom/google/android/gms/games/AchievementsClient;->getAchievementsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda0;-><init>(Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;Landroid/app/Activity;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    .line 147
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    const/4 p1, 0x1

    return p1
.end method

.method public unlock(Landroid/app/Activity;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)Z
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 31
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object p1

    .line 36
    invoke-interface {p1, p2}, Lcom/google/android/gms/games/AchievementsClient;->unlockImmediate(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2, p3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement$$ExternalSyntheticLambda5;-><init>(Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    .line 37
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const-string p1, "Invalid args."

    const/4 p2, 0x0

    const/16 v0, 0x7d5

    .line 32
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayAchievement;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    const/4 p1, 0x0

    return p1
.end method
