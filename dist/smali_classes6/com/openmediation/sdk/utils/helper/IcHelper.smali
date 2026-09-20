.class public Lcom/openmediation/sdk/utils/helper/IcHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static icReport(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    const-string v1, "Config"

    const-class v2, Lcom/openmediation/sdk/utils/model/Configurations;

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/utils/model/Configurations;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Configurations;->getApi()Lcom/openmediation/sdk/utils/model/ApiConfigurations;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Configurations;->getApi()Lcom/openmediation/sdk/utils/model/ApiConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;->getIc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Configurations;->getApi()Lcom/openmediation/sdk/utils/model/ApiConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;->getIc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->buildIcUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/utils/request/HeaderUtils;->getBaseHeaders()Lcom/openmediation/sdk/utils/request/network/Headers;

    move-result-object v1

    invoke-static {}, Lcom/openmediation/sdk/utils/request/network/AdRequest;->post()Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->url(Ljava/lang/String;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->headers(Lcom/openmediation/sdk/utils/request/network/Headers;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p2, 0x2

    aput-object p0, v2, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p2, 0x3

    aput-object p0, v2, p2

    const/4 p0, 0x4

    aput-object p4, v2, p0

    invoke-static {v2}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->buildIcRequestBody([Ljava/lang/Object;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->body(Lcom/openmediation/sdk/utils/request/network/RequestBody;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object p0

    const/16 p2, 0x7530

    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->connectTimeout(I)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object p0

    const p2, 0xea60

    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->readTimeout(I)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->instanceFollowRedirects(Z)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object p0

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->performRequest(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p0

    const-string p1, "icReport error "

    invoke-static {p1, p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
