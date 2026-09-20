.class public Lcom/t4ftgs/channel/global/auth/SelectOption;
.super Lcom/t4f/json/Json;
.source "SelectOption.java"


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    invoke-direct {p0, p1}, Lcom/t4f/json/Json;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getBindPlatforms()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "bindPlatform"

    .line 46
    invoke-virtual {p0, v0}, Lcom/t4ftgs/channel/global/auth/SelectOption;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 48
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    .line 51
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 52
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    const-string v4, ""

    .line 53
    :goto_3
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 56
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    return-object v2
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    const-string v0, "gameId"

    .line 84
    invoke-virtual {p0, v0}, Lcom/t4ftgs/channel/global/auth/SelectOption;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    const-string v0, "language"

    .line 80
    invoke-virtual {p0, v0}, Lcom/t4ftgs/channel/global/auth/SelectOption;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCloseEnable()Z
    .locals 1

    const-string v0, "close"

    .line 68
    invoke-virtual {p0, v0}, Lcom/t4ftgs/channel/global/auth/SelectOption;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBind()Z
    .locals 3

    const-string v0, "bind"

    .line 17
    invoke-virtual {p0, v0}, Lcom/t4ftgs/channel/global/auth/SelectOption;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v2}, Lcom/t4ftgs/channel/global/auth/SelectOption;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isCloseEnable()Z
    .locals 2

    const-string v0, "close"

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/t4ftgs/channel/global/auth/SelectOption;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPlatformBind(Ljava/lang/String;)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/t4ftgs/channel/global/auth/SelectOption;->getBindPlatforms()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_1

    .line 37
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public isSimulator()Z
    .locals 3

    const-string v0, "isSimulator"

    .line 29
    invoke-virtual {p0, v0}, Lcom/t4ftgs/channel/global/auth/SelectOption;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v2}, Lcom/t4ftgs/channel/global/auth/SelectOption;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isSwitchAccount()Z
    .locals 3

    const-string v0, "switchAccount"

    .line 25
    invoke-virtual {p0, v0}, Lcom/t4ftgs/channel/global/auth/SelectOption;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v2}, Lcom/t4ftgs/channel/global/auth/SelectOption;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public setBind(Z)Lcom/t4ftgs/channel/global/auth/SelectOption;
    .locals 1

    const-string v0, "bind"

    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p0, v0, p1}, Lcom/t4ftgs/channel/global/auth/SelectOption;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/auth/SelectOption;

    return-object p1
.end method

.method public setBindPlatforms(Ljava/util/List;)Lcom/t4ftgs/channel/global/auth/SelectOption;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/t4ftgs/channel/global/auth/SelectOption;"
        }
    .end annotation

    const-string v0, "bindPlatform"

    .line 60
    invoke-virtual {p0, p0, v0, p1}, Lcom/t4ftgs/channel/global/auth/SelectOption;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/auth/SelectOption;

    return-object p1
.end method

.method public setCloseEnable(Z)Lcom/t4ftgs/channel/global/auth/SelectOption;
    .locals 1

    const-string v0, "close"

    .line 72
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p0, v0, p1}, Lcom/t4ftgs/channel/global/auth/SelectOption;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/auth/SelectOption;

    return-object p1
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/t4ftgs/channel/global/auth/SelectOption;
    .locals 1

    const-string v0, "language"

    .line 76
    invoke-virtual {p0, p0, v0, p1}, Lcom/t4ftgs/channel/global/auth/SelectOption;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/auth/SelectOption;

    return-object p1
.end method
