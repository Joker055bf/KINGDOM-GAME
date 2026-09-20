.class public final Lcom/crosspromotion/sdk/utils/ResponseUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static jsonToAd(Lorg/json/JSONObject;)Lcom/crosspromotion/sdk/bean/AdBean;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-direct {v0}, Lcom/crosspromotion/sdk/bean/AdBean;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/bean/AdBean;->setOriData(Ljava/lang/String;)V

    const-string/jumbo v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/bean/AdBean;->setTitle(Ljava/lang/String;)V

    const-string v1, "imgs"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_2

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Lcom/crosspromotion/sdk/bean/AdBean;->setMainimgUrl(Ljava/util/List;)V

    :cond_3
    const-string/jumbo v1, "video"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v3, Lcom/crosspromotion/sdk/bean/AdVideoBean;

    invoke-direct {v3, v1}, Lcom/crosspromotion/sdk/bean/AdVideoBean;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3}, Lcom/crosspromotion/sdk/bean/AdBean;->setVideoBean(Lcom/crosspromotion/sdk/bean/AdVideoBean;)V

    :cond_4
    const-string v1, "link"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/bean/AdBean;->setLink(Ljava/lang/String;)V

    const-string v1, "iswv"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Lcom/crosspromotion/sdk/bean/AdBean;->setWebView(Z)V

    const-string v1, "clktks"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_7

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v3}, Lcom/crosspromotion/sdk/bean/AdBean;->setClktrackers(Ljava/util/List;)V

    :cond_8
    const-string v1, "imptks"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_b

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_a

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {v0, v3}, Lcom/crosspromotion/sdk/bean/AdBean;->setImptrackers(Ljava/util/List;)V

    :cond_b
    const-string v1, "app"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v3, Lcom/crosspromotion/sdk/bean/AdAppBean;

    invoke-direct {v3, v1}, Lcom/crosspromotion/sdk/bean/AdAppBean;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3}, Lcom/crosspromotion/sdk/bean/AdBean;->setAppBean(Lcom/crosspromotion/sdk/bean/AdAppBean;)V

    :cond_c
    const-string v1, "descn"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crosspromotion/sdk/bean/AdBean;->setDescription(Ljava/lang/String;)V

    const-string v1, "resources"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_f

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    :goto_4
    if-ge v2, v4, :cond_e

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {v0, v3}, Lcom/crosspromotion/sdk/bean/AdBean;->setResources(Ljava/util/List;)V

    :cond_f
    const-string v1, "mk"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_10

    new-instance v2, Lcom/crosspromotion/sdk/bean/AdMark;

    invoke-direct {v2, v1}, Lcom/crosspromotion/sdk/bean/AdMark;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2}, Lcom/crosspromotion/sdk/bean/AdBean;->setMk(Lcom/crosspromotion/sdk/bean/AdMark;)V

    :cond_10
    const-string v1, "expire"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/crosspromotion/sdk/bean/AdBean;->setExpire(J)V

    const-string v1, "r"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/crosspromotion/sdk/bean/AdBean;->setRevenue(D)V

    const-string v1, "rp"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/crosspromotion/sdk/bean/AdBean;->setRevenuePrecision(I)V

    return-object v0
.end method

.method public static setInstanceRevenue(Ljava/lang/String;Ljava/util/Map;Lcom/crosspromotion/sdk/bean/AdBean;)V
    .locals 3

    if-eqz p1, :cond_2

    const-string v0, "InstanceId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacement(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/Placement;->getT()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/openmediation/sdk/core/InsManager;->getInsById(Lcom/openmediation/sdk/utils/model/Placement;Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/BaseInstance;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/bean/AdBean;->getRevenue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setRevenue(D)V

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/bean/AdBean;->getRevenuePrecision()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setRevenuePrecision(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static transformResponse(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/crosspromotion/sdk/bean/AdBean;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/crosspromotion/sdk/utils/ResponseUtil;->jsonToAd(Lorg/json/JSONObject;)Lcom/crosspromotion/sdk/bean/AdBean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
