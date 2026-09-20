.class public Lcom/openmediation/sdk/utils/AdsUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static advanceEventReport(ILjava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {v0, p0, p1}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static advanceEventReport(Lcom/openmediation/sdk/utils/model/BaseInstance;ILjava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/openmediation/sdk/core/InsManager;->buildReportData(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/openmediation/sdk/utils/AdsUtil;->buildInternalData(Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static advanceEventReport(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static advanceEventReport(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/PlacementUtils;->placementEventParams(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/openmediation/sdk/utils/AdsUtil;->buildInternalData(Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Lorg/json/JSONObject;)V

    return-void
.end method

.method private static advanceEventReport(Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object v0

    const/16 v1, 0x77

    invoke-virtual {v0, v1, p0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return-void
.end method

.method public static buildAbtReportData(IILorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "abt"

    invoke-static {p2, v0, p0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "abtId"

    invoke-static {p2, p1, p0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p2
.end method

.method private static buildInternalData(Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "code"

    invoke-static {v0, v1, p1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "msg"

    invoke-static {v0, p1, p2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "extra"

    invoke-static {v0, p1, p3}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "data"

    invoke-static {p0, p1, v0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0
.end method

.method public static callActionReport(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacement(I)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacement(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/openmediation/sdk/utils/SceneUtil;->getScene(Lcom/openmediation/sdk/utils/model/Placement;Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Scene;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/model/Scene;->getId()I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2, p0}, Lcom/openmediation/sdk/utils/AdsUtil;->callActionReport(Ljava/lang/String;II)V

    return-void
.end method

.method public static callActionReport(Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "pid"

    invoke-static {v0, v1, p0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "scene"

    invoke-static {v0, p1, p0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return-void
.end method

.method public static callbackActionReport(ILjava/lang/String;Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    invoke-static {p1}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacement(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/openmediation/sdk/utils/SceneUtil;->sceneReport(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/Scene;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "abt"

    invoke-static {p1, v1, p2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbtId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "abtId"

    invoke-static {p1, v0, p2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "msg"

    invoke-static {p1, p3, p2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return-void
.end method

.method public static loadBlockedReport(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 1

    invoke-static {p0}, Lcom/openmediation/sdk/utils/PlacementUtils;->placementEventParams(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "msg"

    invoke-static {p0, v0, p1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object p1

    const/16 v0, 0x72

    invoke-virtual {p1, v0, p0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return-void
.end method

.method public static realLoadReport(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/openmediation/sdk/utils/PlacementUtils;->placementEventParams(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return-void
.end method
