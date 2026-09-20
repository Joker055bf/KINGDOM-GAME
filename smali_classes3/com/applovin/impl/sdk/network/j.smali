.class public Lcom/applovin/impl/sdk/network/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/network/j$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:I


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/network/j$a;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/j;->a:Ljava/lang/String;

    .line 114
    invoke-static {p1}, Lcom/applovin/impl/sdk/network/j$a;->a(Lcom/applovin/impl/sdk/network/j$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/j;->b:Ljava/lang/String;

    .line 115
    invoke-static {p1}, Lcom/applovin/impl/sdk/network/j$a;->b(Lcom/applovin/impl/sdk/network/j$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/j;->c:Ljava/lang/String;

    .line 116
    invoke-static {p1}, Lcom/applovin/impl/sdk/network/j$a;->c(Lcom/applovin/impl/sdk/network/j$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/j;->d:Ljava/lang/String;

    .line 117
    invoke-static {p1}, Lcom/applovin/impl/sdk/network/j$a;->d(Lcom/applovin/impl/sdk/network/j$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/j;->e:Ljava/util/Map;

    .line 118
    invoke-static {p1}, Lcom/applovin/impl/sdk/network/j$a;->e(Lcom/applovin/impl/sdk/network/j$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/j;->f:Ljava/util/Map;

    .line 119
    invoke-static {p1}, Lcom/applovin/impl/sdk/network/j$a;->f(Lcom/applovin/impl/sdk/network/j$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/j;->g:Ljava/util/Map;

    .line 120
    invoke-static {p1}, Lcom/applovin/impl/sdk/network/j$a;->g(Lcom/applovin/impl/sdk/network/j$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/network/j;->h:Z

    .line 121
    invoke-static {p1}, Lcom/applovin/impl/sdk/network/j$a;->h(Lcom/applovin/impl/sdk/network/j$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/network/j;->i:Z

    .line 122
    invoke-static {p1}, Lcom/applovin/impl/sdk/network/j$a;->i(Lcom/applovin/impl/sdk/network/j$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/network/j;->j:Z

    .line 123
    invoke-static {p1}, Lcom/applovin/impl/sdk/network/j$a;->j(Lcom/applovin/impl/sdk/network/j$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/network/j;->k:Z

    .line 124
    invoke-static {p1}, Lcom/applovin/impl/sdk/network/j$a;->k(Lcom/applovin/impl/sdk/network/j$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/j;->l:Ljava/lang/String;

    const/4 p1, 0x0

    .line 125
    iput p1, p0, Lcom/applovin/impl/sdk/network/j;->m:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/network/j$a;Lcom/applovin/impl/sdk/network/j$1;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/j;-><init>(Lcom/applovin/impl/sdk/network/j$a;)V

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "uniqueId"

    invoke-static {p1, v0, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "communicatorRequestId"

    const-string v1, ""

    .line 53
    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "httpMethod"

    .line 54
    invoke-static {p1, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "targetUrl"

    .line 55
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "backupUrl"

    .line 56
    invoke-static {p1, v4, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "attemptNumber"

    .line 57
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "parameters"

    .line 64
    invoke-static {p1, v5}, Lcom/applovin/impl/sdk/utils/JsonUtils;->valueExists(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 66
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/JsonUtils;->toStringMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    .line 67
    invoke-static {v5}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map()Ljava/util/Map;

    move-result-object v5

    :goto_0
    const-string v6, "httpHeaders"

    .line 75
    invoke-static {p1, v6}, Lcom/applovin/impl/sdk/utils/JsonUtils;->valueExists(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 77
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/applovin/impl/sdk/utils/JsonUtils;->toStringMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v6

    .line 78
    invoke-static {v6}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    goto :goto_1

    .line 82
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map()Ljava/util/Map;

    move-result-object v6

    :goto_1
    const-string v7, "requestBody"

    .line 86
    invoke-static {p1, v7}, Lcom/applovin/impl/sdk/utils/JsonUtils;->valueExists(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 88
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/applovin/impl/sdk/utils/JsonUtils;->toStringObjectMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v7

    .line 89
    invoke-static {v7}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    goto :goto_2

    .line 93
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map()Ljava/util/Map;

    move-result-object v7

    .line 96
    :goto_2
    iput-object p2, p0, Lcom/applovin/impl/sdk/network/j;->a:Ljava/lang/String;

    .line 97
    iput-object v2, p0, Lcom/applovin/impl/sdk/network/j;->b:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/applovin/impl/sdk/network/j;->l:Ljava/lang/String;

    .line 99
    iput-object v3, p0, Lcom/applovin/impl/sdk/network/j;->c:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lcom/applovin/impl/sdk/network/j;->d:Ljava/lang/String;

    .line 101
    iput-object v5, p0, Lcom/applovin/impl/sdk/network/j;->e:Ljava/util/Map;

    .line 102
    iput-object v6, p0, Lcom/applovin/impl/sdk/network/j;->f:Ljava/util/Map;

    .line 103
    iput-object v7, p0, Lcom/applovin/impl/sdk/network/j;->g:Ljava/util/Map;

    const-string p2, "isEncodingEnabled"

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/applovin/impl/sdk/network/j;->h:Z

    const-string p2, "gzipBodyEncoding"

    .line 105
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/applovin/impl/sdk/network/j;->i:Z

    const-string p2, "isAllowedPreInitEvent"

    .line 106
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/applovin/impl/sdk/network/j;->j:Z

    const-string/jumbo p2, "shouldFireInWebView"

    .line 107
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/network/j;->k:Z

    .line 108
    iput v4, p0, Lcom/applovin/impl/sdk/network/j;->m:I

    return-void
.end method

.method public static o()Lcom/applovin/impl/sdk/network/j$a;
    .locals 1

    .line 275
    new-instance v0, Lcom/applovin/impl/sdk/network/j$a;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/network/j$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/j;->e:Ljava/util/Map;

    return-object v0
.end method

.method e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/j;->f:Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 259
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 261
    :cond_1
    check-cast p1, Lcom/applovin/impl/sdk/network/j;

    .line 262
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/j;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/applovin/impl/sdk/network/j;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/j;->g:Ljava/util/Map;

    return-object v0
.end method

.method g()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/network/j;->h:Z

    return v0
.end method

.method h()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/network/j;->i:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method i()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/network/j;->k:Z

    return v0
.end method

.method j()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/j;->l:Ljava/lang/String;

    return-object v0
.end method

.method k()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/applovin/impl/sdk/network/j;->m:I

    return v0
.end method

.method l()V
    .locals 1

    .line 195
    iget v0, p0, Lcom/applovin/impl/sdk/network/j;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/applovin/impl/sdk/network/j;->m:I

    return-void
.end method

.method m()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/j;->e:Ljava/util/Map;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "postback_ts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iput-object v0, p0, Lcom/applovin/impl/sdk/network/j;->e:Ljava/util/Map;

    return-void
.end method

.method n()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 208
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "uniqueId"

    .line 210
    iget-object v2, p0, Lcom/applovin/impl/sdk/network/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "communicatorRequestId"

    .line 211
    iget-object v2, p0, Lcom/applovin/impl/sdk/network/j;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "httpMethod"

    .line 212
    iget-object v2, p0, Lcom/applovin/impl/sdk/network/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "targetUrl"

    .line 213
    iget-object v2, p0, Lcom/applovin/impl/sdk/network/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "backupUrl"

    .line 214
    iget-object v2, p0, Lcom/applovin/impl/sdk/network/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isEncodingEnabled"

    .line 215
    iget-boolean v2, p0, Lcom/applovin/impl/sdk/network/j;->h:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "gzipBodyEncoding"

    .line 216
    iget-boolean v2, p0, Lcom/applovin/impl/sdk/network/j;->i:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isAllowedPreInitEvent"

    .line 217
    iget-boolean v2, p0, Lcom/applovin/impl/sdk/network/j;->j:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "attemptNumber"

    .line 218
    iget v2, p0, Lcom/applovin/impl/sdk/network/j;->m:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 220
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/j;->e:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 222
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/sdk/network/j;->e:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "parameters"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/j;->f:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 227
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/sdk/network/j;->f:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "httpHeaders"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/j;->g:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 232
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/sdk/network/j;->g:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "requestBody"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/network/j;->j:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PostbackRequest{uniqueId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', communicatorRequestId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/j;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', httpMethod=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', targetUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', backupUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', attemptNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/sdk/network/j;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isEncodingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/j;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isGzipBodyEncoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/j;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAllowedPreInitEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/j;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shouldFireInWebView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/j;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
