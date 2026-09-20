.class Lcom/applovin/impl/sdk/e/b;
.super Lcom/applovin/impl/sdk/e/a;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 1

    const-string v0, "TaskApiSubmitData"

    .line 33
    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/e/b;Lorg/json/JSONObject;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/e/b;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "sdk_update_message"

    const-string v1, "Current SDK version ("

    .line 59
    :try_start_0
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 62
    iget-object v2, p0, Lcom/applovin/impl/sdk/e/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->N()Lcom/applovin/impl/sdk/c/c;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->ad:Lcom/applovin/impl/sdk/c/b;

    const-string v4, "device_id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/c/b;Ljava/lang/Object;)V

    .line 63
    iget-object v2, p0, Lcom/applovin/impl/sdk/e/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->N()Lcom/applovin/impl/sdk/c/c;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->af:Lcom/applovin/impl/sdk/c/b;

    const-string v4, "device_token"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/c/b;Ljava/lang/Object;)V

    .line 64
    iget-object v2, p0, Lcom/applovin/impl/sdk/e/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->N()Lcom/applovin/impl/sdk/c/c;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->ag:Lcom/applovin/impl/sdk/c/b;

    const-string v4, "publisher_id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/c/b;Ljava/lang/Object;)V

    .line 67
    iget-object v2, p0, Lcom/applovin/impl/sdk/e/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {p1, v2}, Lcom/applovin/impl/sdk/utils/i;->d(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    .line 70
    iget-object v2, p0, Lcom/applovin/impl/sdk/e/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {p1, v2}, Lcom/applovin/impl/sdk/utils/i;->e(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    const-string v2, "latest_version"

    const-string v3, ""

    .line 73
    invoke-static {p1, v2, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") is outdated. Please integrate the latest version of the AppLovin SDK ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Doing so will improve your CPMs and ensure you have access to the latest revenue earning features."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->valueExists(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string p1, "AppLovinSdk"

    .line 84
    invoke-static {p1, v1}, Lcom/applovin/impl/sdk/y;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->P()Lcom/applovin/impl/sdk/d/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/g;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 91
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/b;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/b;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/b;->g:Ljava/lang/String;

    const-string v2, "Unable to parse API response"

    invoke-virtual {v0, v1, v2, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->S()Lcom/applovin/impl/sdk/r;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->S()Lcom/applovin/impl/sdk/r;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/r;->b()Ljava/util/Map;

    move-result-object v1

    .line 103
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/r;->d()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->R()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/q;->d()Ljava/util/Map;

    move-result-object v1

    .line 109
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/q;->h()Ljava/util/Map;

    move-result-object v0

    :goto_0
    const-string v2, "platform"

    const-string/jumbo v3, "type"

    .line 113
    invoke-static {v2, v3, v1}, Lcom/applovin/impl/sdk/utils/Utils;->renameKeyInObjectMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v2, "api_level"

    const-string v3, "sdk_version"

    .line 114
    invoke-static {v2, v3, v1}, Lcom/applovin/impl/sdk/utils/Utils;->renameKeyInObjectMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 116
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v1, "device_info"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "applovin_sdk_version"

    .line 119
    invoke-static {v3, v1, v0}, Lcom/applovin/impl/sdk/utils/Utils;->renameKeyInObjectMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "ia"

    const-string v2, "installed_at"

    .line 120
    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/utils/Utils;->renameKeyInObjectMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 122
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v0, "app_info"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/b;->f:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->eA:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->P()Lcom/applovin/impl/sdk/d/g;

    move-result-object v0

    const-string/jumbo v1, "stats"

    .line 130
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d/g;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/c;->a(Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/b;->f:Lcom/applovin/impl/sdk/p;

    const-string v2, "2.0/device"

    .line 137
    invoke-static {v2, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/b;->f:Lcom/applovin/impl/sdk/p;

    .line 138
    invoke-static {v2, v1}, Lcom/applovin/impl/sdk/utils/i;->b(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/b;->f:Lcom/applovin/impl/sdk/p;

    .line 139
    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/i;->e(Lcom/applovin/impl/sdk/p;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c$a;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    const-string v1, "POST"

    .line 140
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    .line 141
    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/network/c$a;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/b;->f:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->fh:Lcom/applovin/impl/sdk/c/b;

    .line 142
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/c$a;->d(Z)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 143
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/b;->f:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->dl:Lcom/applovin/impl/sdk/c/b;

    .line 144
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/c$a;->a(I)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/c$a;->a()Lcom/applovin/impl/sdk/network/c;

    move-result-object p1

    .line 147
    new-instance v0, Lcom/applovin/impl/sdk/e/b$1;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-direct {v0, p0, p1, v1}, Lcom/applovin/impl/sdk/e/b$1;-><init>(Lcom/applovin/impl/sdk/e/b;Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/p;)V

    .line 162
    sget-object p1, Lcom/applovin/impl/sdk/c/b;->bg:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/e/u;->a(Lcom/applovin/impl/sdk/c/b;)V

    .line 163
    sget-object p1, Lcom/applovin/impl/sdk/c/b;->bh:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/e/u;->b(Lcom/applovin/impl/sdk/c/b;)V

    .line 164
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/b;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/b;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/b;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/b;->g:Ljava/lang/String;

    const-string v2, "Submitting user data..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 44
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/e/b;->b(Lorg/json/JSONObject;)V

    .line 45
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/e/b;->c(Lorg/json/JSONObject;)V

    .line 47
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/e/b;->d(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 51
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/b;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/b;->h:Lcom/applovin/impl/sdk/y;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/b;->g:Ljava/lang/String;

    const-string v3, "Unable to build JSON message with collected data"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
