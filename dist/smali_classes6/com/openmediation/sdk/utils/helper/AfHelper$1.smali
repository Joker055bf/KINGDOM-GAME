.class Lcom/openmediation/sdk/utils/helper/AfHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/utils/helper/AfHelper;->sendAfRequest(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/utils/helper/AfHelper$1;->val$type:I

    iput-object p2, p0, Lcom/openmediation/sdk/utils/helper/AfHelper$1;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    const-string v1, "Config"

    const-class v2, Lcom/openmediation/sdk/utils/model/Configurations;

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/utils/model/Configurations;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Configurations;->getApi()Lcom/openmediation/sdk/utils/model/ApiConfigurations;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Configurations;->getApi()Lcom/openmediation/sdk/utils/model/ApiConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;->getCd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Configurations;->getApi()Lcom/openmediation/sdk/utils/model/ApiConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;->getCd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->buildCdUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/openmediation/sdk/utils/request/HeaderUtils;->getBaseHeaders()Lcom/openmediation/sdk/utils/request/network/Headers;

    move-result-object v1

    iget v2, p0, Lcom/openmediation/sdk/utils/helper/AfHelper$1;->val$type:I

    iget-object v3, p0, Lcom/openmediation/sdk/utils/helper/AfHelper$1;->val$data:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->buildCdRequestBody(ILjava/lang/Object;)[B

    move-result-object v2

    new-instance v3, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;

    invoke-direct {v3, v2}, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;-><init>([B)V

    invoke-static {}, Lcom/openmediation/sdk/utils/request/network/AdRequest;->post()Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->url(Ljava/lang/String;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->headers(Lcom/openmediation/sdk/utils/request/network/Headers;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->body(Lcom/openmediation/sdk/utils/request/network/RequestBody;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->connectTimeout(I)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->readTimeout(I)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->performRequest(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
