.class public Lcom/openmediation/sdk/utils/SceneUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefaultScene(Ljava/util/Map;)Lcom/openmediation/sdk/utils/model/Scene;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/utils/model/Scene;",
            ">;)",
            "Lcom/openmediation/sdk/utils/model/Scene;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/utils/model/Scene;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Scene;->getIsd()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    :cond_1
    return-object v0
.end method

.method public static getScene(Lcom/openmediation/sdk/utils/model/Placement;Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Scene;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/Placement;->getScenes()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {v1}, Lcom/openmediation/sdk/utils/SceneUtil;->getDefaultScene(Ljava/util/Map;)Lcom/openmediation/sdk/utils/model/Scene;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/openmediation/sdk/utils/model/Scene;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/openmediation/sdk/utils/SceneUtil;->sceneReport(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/Scene;)Lorg/json/JSONObject;

    move-result-object p0

    const/16 v0, 0x13b

    invoke-virtual {p1, v0, p0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getSceneId(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_scene"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/cache/DataCache;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/openmediation/sdk/utils/model/Scene;

    invoke-virtual {v0, p0, v1}, Lcom/openmediation/sdk/utils/cache/DataCache;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/openmediation/sdk/utils/model/Scene;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/Scene;->getId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static sceneReport(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/Scene;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "pid"

    invoke-static {v0, v1, p0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Scene;->getId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "scene"

    invoke-static {v0, p1, p0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
