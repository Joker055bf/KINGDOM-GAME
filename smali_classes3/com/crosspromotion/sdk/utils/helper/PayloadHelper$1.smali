.class Lcom/crosspromotion/sdk/utils/helper/PayloadHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crosspromotion/sdk/utils/helper/PayloadHelper;->payloadRequest(Lcom/openmediation/sdk/utils/model/PlacementInfo;Ljava/lang/String;Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

.field final synthetic val$info:Lcom/openmediation/sdk/utils/model/PlacementInfo;

.field final synthetic val$payload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;Lcom/openmediation/sdk/utils/model/PlacementInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/utils/helper/PayloadHelper$1;->val$callback:Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

    iput-object p2, p0, Lcom/crosspromotion/sdk/utils/helper/PayloadHelper$1;->val$info:Lcom/openmediation/sdk/utils/model/PlacementInfo;

    iput-object p3, p0, Lcom/crosspromotion/sdk/utils/helper/PayloadHelper$1;->val$payload:Ljava/lang/String;

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

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;->getCppl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Configurations;->getApi()Lcom/openmediation/sdk/utils/model/ApiConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;->getCppl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/helper/PayloadHelper;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/crosspromotion/sdk/utils/helper/PayloadHelper$1;->val$info:Lcom/openmediation/sdk/utils/model/PlacementInfo;

    iget-object v2, p0, Lcom/crosspromotion/sdk/utils/helper/PayloadHelper$1;->val$payload:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/crosspromotion/sdk/utils/helper/PayloadHelper;->access$100(Lcom/openmediation/sdk/utils/model/PlacementInfo;Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;

    invoke-direct {v2, v1}, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;-><init>([B)V

    invoke-static {}, Lcom/openmediation/sdk/utils/request/HeaderUtils;->getBaseHeaders()Lcom/openmediation/sdk/utils/request/network/Headers;

    move-result-object v1

    invoke-static {}, Lcom/openmediation/sdk/utils/request/network/AdRequest;->post()Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->url(Ljava/lang/String;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->body(Lcom/openmediation/sdk/utils/request/network/RequestBody;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->headers(Lcom/openmediation/sdk/utils/request/network/Headers;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->connectTimeout(I)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->readTimeout(I)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/crosspromotion/sdk/utils/helper/PayloadHelper$1;->val$callback:Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->callback(Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->performRequest(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/helper/PayloadHelper$1;->val$callback:Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

    const-string v1, "empty Url"

    invoke-interface {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;->onRequestFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CrossPromotion SDK Payload Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/utils/helper/PayloadHelper$1;->val$callback:Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;

    const-string v1, "Load failed: unknown exception occurred"

    invoke-interface {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;->onRequestFailed(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
