.class public abstract Lcom/openmediation/sdk/core/BaseOmAds;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getSceneInfo(ILjava/lang/String;)Lcom/openmediation/sdk/utils/model/Scene;
    .locals 0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacement(I)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/openmediation/sdk/utils/SceneUtil;->getScene(Lcom/openmediation/sdk/utils/model/Placement;Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Scene;

    move-result-object p0

    return-object p0
.end method

.method public static getSceneInfo(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Scene;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected static isSceneCapped(ILjava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacement(I)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/openmediation/sdk/utils/SceneUtil;->getScene(Lcom/openmediation/sdk/utils/model/Placement;Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Scene;

    move-result-object p1

    const-string v0, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1, p1}, Lcom/openmediation/sdk/utils/AdRateUtil;->shouldBlockScene(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/Scene;)Z

    move-result v1

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object v2

    if-eqz v1, :cond_2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/SceneUtil;->sceneReport(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/Scene;)Lorg/json/JSONObject;

    move-result-object p0

    const/16 p1, 0x1f8

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/SceneUtil;->sceneReport(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/Scene;)Lorg/json/JSONObject;

    move-result-object p0

    const/16 p1, 0x1f9

    :goto_1
    invoke-virtual {v2, p1, p0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return v1
.end method

.method public static isSceneCapped(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method static isSceneCapped(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacement(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/openmediation/sdk/utils/SceneUtil;->getScene(Lcom/openmediation/sdk/utils/model/Placement;Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Scene;

    move-result-object p1

    const-string v0, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1, p1}, Lcom/openmediation/sdk/utils/AdRateUtil;->shouldBlockScene(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/Scene;)Z

    move-result v1

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object v2

    if-eqz v1, :cond_2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/SceneUtil;->sceneReport(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/Scene;)Lorg/json/JSONObject;

    move-result-object p0

    const/16 p1, 0x1f8

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/SceneUtil;->sceneReport(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/Scene;)Lorg/json/JSONObject;

    move-result-object p0

    const/16 p1, 0x1f9

    :goto_1
    invoke-virtual {v2, p1, p0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return v1
.end method
