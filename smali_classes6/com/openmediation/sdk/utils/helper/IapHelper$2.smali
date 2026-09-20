.class Lcom/openmediation/sdk/utils/helper/IapHelper$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/utils/helper/IapHelper;->iapReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

.field final synthetic val$currency:Ljava/lang/String;

.field final synthetic val$iapCount:Ljava/lang/String;

.field final synthetic val$iapt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/helper/IapHelper$2;->val$callback:Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

    iput-object p2, p0, Lcom/openmediation/sdk/utils/helper/IapHelper$2;->val$currency:Ljava/lang/String;

    iput-object p3, p0, Lcom/openmediation/sdk/utils/helper/IapHelper$2;->val$iapCount:Ljava/lang/String;

    iput-object p4, p0, Lcom/openmediation/sdk/utils/helper/IapHelper$2;->val$iapt:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    const-string v1, "Config"

    const-class v2, Lcom/openmediation/sdk/utils/model/Configurations;

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/utils/model/Configurations;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Configurations;->getApi()Lcom/openmediation/sdk/utils/model/ApiConfigurations;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Configurations;->getApi()Lcom/openmediation/sdk/utils/model/ApiConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;->getIap()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Configurations;->getApi()Lcom/openmediation/sdk/utils/model/ApiConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;->getIap()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->buildIapUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "iap url : %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/request/HeaderUtils;->getBaseHeaders()Lcom/openmediation/sdk/utils/request/network/Headers;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    iget-object v5, p0, Lcom/openmediation/sdk/utils/helper/IapHelper$2;->val$currency:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/openmediation/sdk/utils/helper/IapHelper$2;->val$iapCount:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/openmediation/sdk/utils/helper/IapHelper$2;->val$iapt:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->buildIapRequestBody([Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/openmediation/sdk/utils/helper/IapHelper$2;->val$callback:Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

    if-eqz v0, :cond_1

    const-string v1, "Iap param is null"

    invoke-interface {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;->onRequestFailed(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance v3, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;

    invoke-direct {v3, v2}, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;-><init>([B)V

    invoke-static {}, Lcom/openmediation/sdk/utils/request/network/AdRequest;->post()Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->url(Ljava/lang/String;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->body(Lcom/openmediation/sdk/utils/request/network/RequestBody;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->headers(Lcom/openmediation/sdk/utils/request/network/Headers;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->connectTimeout(I)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->readTimeout(I)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/utils/helper/IapHelper$2;->val$callback:Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->callback(Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->performRequest(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/openmediation/sdk/utils/helper/IapHelper$2;->val$callback:Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

    const-string v1, "empty Url"

    invoke-interface {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;->onRequestFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "HttpIAP error "

    invoke-static {v1, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/openmediation/sdk/utils/helper/IapHelper$2;->val$callback:Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

    if-eqz v0, :cond_4

    const-string v1, "httpIAP error"

    invoke-interface {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;->onRequestFailed(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
