.class public Lcom/tgs/aics/http/HttpParamUtils;
.super Ljava/lang/Object;
.source "HttpParamUtils.java"


# static fields
.field private static final K_SIGN:Ljava/lang/String; = "sign"

.field private static final TAG:Ljava/lang/String; = "aics.HttpParamUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCommonParams(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "aics.HttpParamUtils"

    const-string v0, "mapParams is null, return"

    .line 25
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    const-string v0, "game_id"

    .line 30
    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "language_code"

    .line 31
    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameLanguage:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "client_id"

    .line 32
    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil;->clientId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {}, Lcom/tgs/aics/utils/ConstantUtil;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unique_id"

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 34
    :goto_0
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 36
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static addCommonParamsWithoutLanguage(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "aics.HttpParamUtils"

    const-string v0, "mapParams is null, return"

    .line 42
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    const-string v0, "game_id"

    .line 47
    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "client_id"

    .line 48
    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil;->clientId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {}, Lcom/tgs/aics/utils/ConstantUtil;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unique_id"

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 50
    :goto_0
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 52
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static decodeResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method public static getPostParams(Ljava/util/HashMap;)[Lcom/tgs/aics/http/HttpPostParam;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[",
            "Lcom/tgs/aics/http/HttpPostParam;"
        }
    .end annotation

    .line 64
    :try_start_0
    invoke-static {p0}, Lcom/tgs/aics/http/HttpParamUtils;->addCommonParams(Ljava/util/HashMap;)V

    .line 66
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/tgs/aics/http/HttpPostParam;

    const/4 v1, 0x0

    .line 67
    :goto_0
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 68
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    new-instance v3, Lcom/tgs/aics/http/HttpPostParam;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/tgs/aics/http/HttpPostParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 73
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPostParamsWithoutLanguage(Ljava/util/HashMap;)[Lcom/tgs/aics/http/HttpPostParam;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[",
            "Lcom/tgs/aics/http/HttpPostParam;"
        }
    .end annotation

    .line 80
    :try_start_0
    invoke-static {p0}, Lcom/tgs/aics/http/HttpParamUtils;->addCommonParamsWithoutLanguage(Ljava/util/HashMap;)V

    .line 82
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/tgs/aics/http/HttpPostParam;

    const/4 v1, 0x0

    .line 83
    :goto_0
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 84
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    new-instance v3, Lcom/tgs/aics/http/HttpPostParam;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/tgs/aics/http/HttpPostParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 89
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
