.class Lcom/game/sdk/comon/api/RetrofitClient$2;
.super Ljava/lang/Object;
.source "RetrofitClient.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/api/RetrofitClient;->getInteractIntance(Ljava/lang/String;)Lretrofit2/Retrofit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/game/sdk/comon/api/RetrofitClient$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Accept"

    const-string v3, "application/json"

    .line 142
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 144
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/comon/config/GameConfigs;->getFcmApiKey()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game/sdk/comon/config/GameConfigs;->getAppKey()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/comon/utils/Utils;->getGameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v5

    invoke-virtual {v5}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/game/sdk/comon/utils/Utils;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 148
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v6

    invoke-virtual {v6}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v6

    const-string v7, "APP_LANG"

    const-string v8, "en"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/comon/sharePref/PrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 149
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getOSInfo()Ljava/lang/String;

    move-result-object v7

    .line 150
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    if-nez v2, :cond_0

    move-object v2, v9

    :cond_0
    const-string v10, "X-Authorization"

    .line 153
    invoke-virtual {v1, v10, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 154
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v10, "sdk-locale"

    invoke-virtual {v1, v10, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    if-nez v3, :cond_1

    move-object v3, v9

    :cond_1
    const-string v2, "X-Request"

    .line 155
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    if-nez v4, :cond_2

    move-object v4, v9

    :cond_2
    const-string v2, "app-Version"

    .line 156
    invoke-virtual {v1, v2, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    if-nez v5, :cond_3

    move-object v5, v9

    :cond_3
    const-string v2, "sdk-Version"

    .line 157
    invoke-virtual {v1, v2, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    if-nez v7, :cond_4

    move-object v7, v9

    :cond_4
    const-string v2, "device-Os"

    .line 158
    invoke-virtual {v1, v2, v7}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 159
    iget-object v2, p0, Lcom/game/sdk/comon/api/RetrofitClient$2;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/game/sdk/comon/utils/DeviceUtils;->getAdvertisingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "advertising-id"

    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    if-nez v8, :cond_5

    move-object v8, v9

    :cond_5
    const-string v2, "device-Name"

    .line 160
    invoke-virtual {v1, v2, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 161
    invoke-virtual {v1, v10, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 164
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    .line 167
    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v2

    .line 168
    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 171
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
