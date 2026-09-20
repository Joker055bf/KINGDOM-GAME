.class public Lcom/applovin/impl/b/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(ILcom/applovin/impl/sdk/p;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/applovin/impl/sdk/p;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/impl/b/a/d;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/applovin/impl/sdk/utils/Utils;->getRawResourceString(ILandroid/content/Context;Lcom/applovin/impl/sdk/p;)Ljava/lang/String;

    move-result-object p0

    .line 44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 49
    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->jsonObjectFromJsonString(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 55
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v1, "states"

    invoke-static {p0, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p0

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 57
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 59
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 60
    invoke-static {v2, p1}, Lcom/applovin/impl/b/a/d;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/b/a/d;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 52
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unable to parse consent flow data! Please ensure that the AppLovin SDK resources are bundled correctly!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unable to retrieve consent flow data! Please ensure that the AppLovin SDK resources are bundled correctly!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/applovin/impl/sdk/p;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/p;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/impl/b/a/d;",
            ">;"
        }
    .end annotation

    .line 28
    sget v0, Lcom/applovin/sdk/R$raw;->applovin_consent_flow_privacy_policy:I

    invoke-static {v0, p0}, Lcom/applovin/impl/b/a/j;->a(ILcom/applovin/impl/sdk/p;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/applovin/impl/sdk/p;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/p;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/impl/b/a/d;",
            ">;"
        }
    .end annotation

    .line 33
    sget v0, Lcom/applovin/sdk/R$raw;->applovin_consent_flow_terms_of_service_and_privacy_policy:I

    invoke-static {v0, p0}, Lcom/applovin/impl/b/a/j;->a(ILcom/applovin/impl/sdk/p;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/applovin/impl/sdk/p;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/p;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/impl/b/a/d;",
            ">;"
        }
    .end annotation

    .line 38
    sget v0, Lcom/applovin/sdk/R$raw;->applovin_consent_flow_gdpr:I

    invoke-static {v0, p0}, Lcom/applovin/impl/b/a/j;->a(ILcom/applovin/impl/sdk/p;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
