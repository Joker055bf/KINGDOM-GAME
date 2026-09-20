.class Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/utils/helper/LrReportHelper;->report(Ljava/lang/String;ILcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$abt:I

.field final synthetic val$abtId:I

.field final synthetic val$bid:I

.field final synthetic val$instance:Lcom/openmediation/sdk/utils/model/BaseInstance;

.field final synthetic val$instanceId:I

.field final synthetic val$loadType:I

.field final synthetic val$mediationId:I

.field final synthetic val$placementId:Ljava/lang/String;

.field final synthetic val$reportType:I

.field final synthetic val$reqId:Ljava/lang/String;

.field final synthetic val$ruleId:I

.field final synthetic val$sceneId:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;IIIIIIII)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$reqId:Ljava/lang/String;

    iput p2, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$ruleId:I

    iput-object p3, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$instance:Lcom/openmediation/sdk/utils/model/BaseInstance;

    iput-object p4, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$placementId:Ljava/lang/String;

    iput p5, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$sceneId:I

    iput p6, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$loadType:I

    iput p7, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$mediationId:I

    iput p8, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$instanceId:I

    iput p9, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$abt:I

    iput p10, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$reportType:I

    iput p11, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$bid:I

    iput p12, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$abtId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

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

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;->getLr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Configurations;->getApi()Lcom/openmediation/sdk/utils/model/ApiConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;->getLr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->buildLrUrl(Ljava/lang/String;)Ljava/lang/String;

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

    iget-object v2, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$reqId:Ljava/lang/String;

    iget v3, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$ruleId:I

    iget-object v4, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$instance:Lcom/openmediation/sdk/utils/model/BaseInstance;

    const/16 v5, 0x9

    new-array v5, v5, [I

    iget-object v6, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$placementId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    iget v6, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$sceneId:I

    const/4 v7, 0x1

    aput v6, v5, v7

    iget v6, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$loadType:I

    const/4 v8, 0x2

    aput v6, v5, v8

    iget v6, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$mediationId:I

    const/4 v8, 0x3

    aput v6, v5, v8

    iget v6, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$instanceId:I

    const/4 v8, 0x4

    aput v6, v5, v8

    iget v6, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$abt:I

    const/4 v8, 0x5

    aput v6, v5, v8

    iget v6, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$reportType:I

    const/4 v8, 0x6

    aput v6, v5, v8

    iget v6, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$bid:I

    const/4 v8, 0x7

    aput v6, v5, v8

    iget v6, p0, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;->val$abtId:I

    const/16 v8, 0x8

    aput v6, v5, v8

    invoke-static {v2, v3, v4, v5}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->buildLrRequestBody(Ljava/lang/String;ILcom/openmediation/sdk/utils/model/BaseInstance;[I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->body(Lcom/openmediation/sdk/utils/request/network/RequestBody;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->connectTimeout(I)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->readTimeout(I)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->instanceFollowRedirects(Z)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->performRequest(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "httpLr error "

    invoke-static {v1, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
