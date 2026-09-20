.class public Lcom/mobgame/model/TimerData;
.super Ljava/lang/Object;
.source "TimerData.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TimerData"


# instance fields
.field private listTimerObject:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mobgame/model/TimerObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONArray;)Lcom/mobgame/model/TimerData;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/mobgame/model/TimerData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TimerData::parse: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    .line 31
    new-instance p0, Lcom/mobgame/model/TimerData;

    invoke-direct {p0}, Lcom/mobgame/model/TimerData;-><init>()V

    return-object p0

    .line 33
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    move v4, v3

    .line 36
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 38
    :try_start_0
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "start"

    .line 39
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/mobgame/utils/TimeUtils;->getMilisecondByTimestamp(J)J

    move-result-wide v6

    const-string v8, "end"

    .line 40
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/mobgame/utils/TimeUtils;->getMilisecondByTimestamp(J)J

    move-result-wide v8

    const-string v10, "id"

    .line 41
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-wide/16 v10, 0x0

    cmp-long v12, v6, v10

    if-lez v12, :cond_3

    cmp-long v10, v8, v10

    if-gtz v10, :cond_1

    goto :goto_1

    :cond_1
    cmp-long v10, v8, v1

    if-gez v10, :cond_2

    .line 48
    sget-object v5, Lcom/mobgame/model/TimerData;->TAG:Ljava/lang/String;

    const-string v6, "EndTime(%s) < Now(%s) => Expired!"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 49
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 48
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 52
    :cond_2
    new-instance v10, Lcom/mobgame/model/TimerObject;

    invoke-direct {v10}, Lcom/mobgame/model/TimerObject;-><init>()V

    .line 53
    invoke-virtual {v10, v5}, Lcom/mobgame/model/TimerObject;->setId(I)V

    .line 54
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/mobgame/model/TimerObject;->setStartTime(Ljava/lang/Long;)V

    .line 55
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/mobgame/model/TimerObject;->setEndTime(Ljava/lang/Long;)V

    .line 56
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 43
    :cond_3
    :goto_1
    sget-object v5, Lcom/mobgame/model/TimerData;->TAG:Ljava/lang/String;

    const-string v6, "Time value <= 0. Skip!"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 59
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 62
    :cond_4
    new-instance p0, Lcom/mobgame/model/TimerData;

    invoke-direct {p0}, Lcom/mobgame/model/TimerData;-><init>()V

    .line 63
    invoke-virtual {p0, v0}, Lcom/mobgame/model/TimerData;->setListTimerObject(Ljava/util/ArrayList;)V

    return-object p0
.end method


# virtual methods
.method public getListTimerObject()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mobgame/model/TimerObject;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/mobgame/model/TimerData;->listTimerObject:Ljava/util/ArrayList;

    return-object v0
.end method

.method public removeData(Landroid/app/Activity;Lcom/mobgame/model/TimerObject;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/mobgame/model/TimerObject;",
            "Ljava/util/ArrayList<",
            "Lcom/mobgame/model/TimerObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 70
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 71
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobgame/model/TimerObject;

    invoke-virtual {v1}, Lcom/mobgame/model/TimerObject;->getId()I

    move-result v1

    invoke-virtual {p2}, Lcom/mobgame/model/TimerObject;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 72
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    new-instance p2, Lcom/mobgame/model/TimerData;

    invoke-direct {p2}, Lcom/mobgame/model/TimerData;-><init>()V

    .line 76
    invoke-virtual {p2, p3}, Lcom/mobgame/model/TimerData;->setListTimerObject(Ljava/util/ArrayList;)V

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/mobgame/model/TimerData;->saveData(Landroid/content/Context;Lcom/mobgame/model/TimerData;)V

    return-void
.end method

.method public saveData(Landroid/content/Context;Lcom/mobgame/model/TimerData;)V
    .locals 3

    .line 80
    sget-object v0, Lcom/mobgame/model/TimerData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveData: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mobgame/utils/FloatButtonTimerHelper;->saveFloatButtonTimer(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setListTimerObject(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mobgame/model/TimerObject;",
            ">;)V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/mobgame/model/TimerData;->listTimerObject:Ljava/util/ArrayList;

    return-void
.end method
