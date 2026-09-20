.class public Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats;
.super Ljava/lang/Object;
.source "GooglePlayGameStats.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildEventJson(Lcom/google/android/gms/games/event/Event;I)Lcom/t4f/json/Json;
    .locals 6

    .line 113
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getEventId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getValue()J

    move-result-wide v2

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[GooglePlayGameStats] event["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "] id="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " name="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " value="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 120
    new-instance p1, Lcom/t4f/json/Json;

    invoke-direct {p1}, Lcom/t4f/json/Json;-><init>()V

    const-string v4, "id"

    .line 121
    invoke-virtual {p1, v4, v0}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    const-string v0, "name"

    .line 122
    invoke-virtual {p1, v0, v1}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    .line 123
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "desc"

    invoke-virtual {p1, v1, v0}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    const-string v0, "value"

    .line 124
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    .line 125
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getFormattedValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fmtValue"

    invoke-virtual {p1, v1, v0}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    .line 126
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats;->nz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "iconUrl"

    invoke-virtual {p1, v1, v0}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    .line 127
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->isVisible()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "visible"

    invoke-virtual {p1, v0, p0}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p0

    return-object p0
.end method

.method private static gmsStatus(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1

    .line 141
    instance-of v0, p0, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v0, :cond_0

    .line 142
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

    .line 148
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
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getEventsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/EventsClient;

    move-result-object p1

    .line 40
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/games/EventsClient;->increment(Ljava/lang/String;I)V

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "[GooglePlayGameStats] increment: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " +"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const/16 p1, 0x7d0

    const-string p2, "Incremented."

    .line 42
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/16 p1, 0x7d5

    const-string p2, "Invalid args."

    .line 36
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$load$0$com-t4f-sdkgplay-gamesservices-GooglePlayGameStats(Lcom/t4f/sdk/core/OnAndroidNativeCallback;Lcom/google/android/gms/games/AnnotatedData;)V
    .locals 8

    const-string v0, "[GooglePlayGameStats] buffer release failed: "

    const-string v1, "[GooglePlayGameStats] load ok, count="

    const/4 v2, 0x0

    .line 64
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/event/EventBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v3, :cond_0

    .line 65
    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/gms/games/event/EventBuffer;->getCount()I

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

    .line 66
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", stale="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 67
    invoke-virtual {p2}, Lcom/google/android/gms/games/AnnotatedData;->isStale()Z

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 66
    invoke-static {p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 68
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    :goto_1
    if-ge v2, v4, :cond_1

    .line 72
    :try_start_2
    invoke-virtual {v3, v2}, Lcom/google/android/gms/games/event/EventBuffer;->get(I)Lcom/google/android/gms/games/event/Event;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats;->buildEventJson(Lcom/google/android/gms/games/event/Event;I)Lcom/t4f/json/Json;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v5

    add-int/lit8 v1, v1, 0x1

    .line 75
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GooglePlayGameStats] skip event["

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

    .line 85
    :try_start_4
    invoke-virtual {v3}, Lcom/google/android/gms/games/event/EventBuffer;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 93
    :cond_2
    :goto_3
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loaded "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
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

    .line 94
    invoke-direct {p0, v1, p2, v0, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    return-void

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_3
    move-exception p2

    .line 79
    :goto_6
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GooglePlayGameStats] load parse failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats;->gmsStatus(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    const/16 v3, 0x7d1

    invoke-direct {p0, v3, v1, p2, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_5

    .line 85
    :try_start_6
    invoke-virtual {v2}, Lcom/google/android/gms/games/event/EventBuffer;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_7

    :catch_4
    move-exception p1

    .line 86
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

    .line 85
    :try_start_7
    invoke-virtual {v2}, Lcom/google/android/gms/games/event/EventBuffer;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_9

    :catch_5
    move-exception p2

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 88
    :cond_6
    :goto_9
    throw p1
.end method

.method synthetic lambda$load$1$com-t4f-sdkgplay-gamesservices-GooglePlayGameStats(Lcom/t4f/sdk/core/OnAndroidNativeCallback;Ljava/lang/Exception;)V
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[GooglePlayGameStats] load failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats;->gmsStatus(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x7d1

    invoke-direct {p0, v1, v0, p2, p1}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    return-void
.end method

.method public load(Landroid/app/Activity;ZLcom/t4f/sdk/core/OnAndroidNativeCallback;)Z
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "Activity is null."

    const/4 p2, 0x0

    const/16 v0, 0x7d5

    .line 54
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats;->notifyCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    const/4 p1, 0x0

    return p1

    .line 57
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getEventsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/EventsClient;

    move-result-object p1

    .line 58
    invoke-interface {p1, p2}, Lcom/google/android/gms/games/EventsClient;->load(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats$$ExternalSyntheticLambda0;-><init>(Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    .line 59
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3}, Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats$$ExternalSyntheticLambda1;-><init>(Lcom/t4f/sdkgplay/gamesservices/GooglePlayGameStats;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    .line 98
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    const/4 p1, 0x1

    return p1
.end method
