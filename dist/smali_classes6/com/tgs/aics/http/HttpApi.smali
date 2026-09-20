.class public Lcom/tgs/aics/http/HttpApi;
.super Ljava/lang/Object;
.source "HttpApi.java"


# static fields
.field private static final ERROR_CODE:Ljava/lang/String; = "error_code"

.field private static final ERROR_MSG:Ljava/lang/String; = "error_msg"

.field private static final TAG:Ljava/lang/String; = "aics.HttpApi"

.field private static volatile instance:Lcom/tgs/aics/http/HttpApi;


# instance fields
.field private httpRequest:Lcom/tgs/aics/http/HttpRequest;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/tgs/aics/http/HttpRequest;

    invoke-direct {v0}, Lcom/tgs/aics/http/HttpRequest;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/http/HttpApi;->httpRequest:Lcom/tgs/aics/http/HttpRequest;

    return-void
.end method

.method public static getInstance()Lcom/tgs/aics/http/HttpApi;
    .locals 2

    .line 47
    sget-object v0, Lcom/tgs/aics/http/HttpApi;->instance:Lcom/tgs/aics/http/HttpApi;

    if-nez v0, :cond_1

    .line 48
    const-class v0, Lcom/tgs/aics/http/HttpApi;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/tgs/aics/http/HttpApi;->instance:Lcom/tgs/aics/http/HttpApi;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/tgs/aics/http/HttpApi;

    invoke-direct {v1}, Lcom/tgs/aics/http/HttpApi;-><init>()V

    sput-object v1, Lcom/tgs/aics/http/HttpApi;->instance:Lcom/tgs/aics/http/HttpApi;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 54
    :cond_1
    :goto_0
    sget-object v0, Lcom/tgs/aics/http/HttpApi;->instance:Lcom/tgs/aics/http/HttpApi;

    return-object v0
.end method

.method private isResponseResultSuccess(Lorg/json/JSONObject;)Z
    .locals 2

    .line 58
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private parseBaseDataBean(Lcom/tgs/aics/bean/BaseDataBean;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "success"

    .line 798
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/tgs/aics/bean/BaseDataBean;->success:Z

    const-string v0, "code"

    .line 799
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tgs/aics/bean/BaseDataBean;->code:Ljava/lang/String;

    const-string v0, "error_msg"

    .line 800
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tgs/aics/bean/BaseDataBean;->errorMsg:Ljava/lang/String;

    const-string v0, "error_code"

    .line 801
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tgs/aics/bean/BaseDataBean;->errorCode:Ljava/lang/String;

    const-string v0, "message"

    .line 802
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tgs/aics/bean/BaseDataBean;->message:Ljava/lang/String;

    return-void
.end method

.method private parseTextConfigBean(Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "color"

    .line 806
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;->color:Ljava/lang/String;

    const-string v0, "text"

    .line 807
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;->text:Ljava/lang/String;

    const-string v0, "fontWeight"

    .line 808
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;->fontWeight:Ljava/lang/String;

    const-string v0, "fontSize"

    .line 809
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;->fontSize:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public commitRedemptionCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/listener/IHttpRspDataListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tgs/aics/listener/IHttpRspDataListener<",
            "Lcom/tgs/aics/bean/BaseDataBean;",
            ">;)V"
        }
    .end annotation

    .line 595
    new-instance v8, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda10;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda10;-><init>(Lcom/tgs/aics/http/HttpApi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/listener/IHttpRspDataListener;)V

    .line 612
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public faqDetailTap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "faqDetailTap...event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", faqId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aics.HttpApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/http/HttpApi;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAicsServerAddress(Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V
    .locals 2

    const-string v0, "aics.HttpApi"

    const-string v1, "getAicsServerAddress"

    .line 376
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/http/HttpApi;Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V

    .line 436
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFAQDetailData(Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V
    .locals 2

    const-string v0, "aics.HttpApi"

    const-string v1, "getFAQDetailData"

    .line 196
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p2}, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda11;-><init>(Lcom/tgs/aics/http/HttpApi;Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V

    .line 244
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFAQListData(Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V
    .locals 2

    const-string v0, "aics.HttpApi"

    const-string v1, "getFAQListData"

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda5;-><init>(Lcom/tgs/aics/http/HttpApi;Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V

    .line 187
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFormData(Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V
    .locals 2

    const-string v0, "aics.HttpApi"

    const-string v1, "getFormData"

    .line 251
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda7;-><init>(Lcom/tgs/aics/http/HttpApi;Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V

    .line 303
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getHomeData(Lcom/tgs/aics/listener/IBaseBeanListener;)V
    .locals 2

    const-string v0, "aics.HttpApi"

    const-string v1, "getHomeData"

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda4;-><init>(Lcom/tgs/aics/http/HttpApi;Lcom/tgs/aics/listener/IBaseBeanListener;)V

    .line 127
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getQuestionnaireData(Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V
    .locals 2

    const-string v0, "aics.HttpApi"

    const-string v1, "getQuestionnaireData"

    .line 621
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    new-instance v0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda13;-><init>(Lcom/tgs/aics/http/HttpApi;Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V

    .line 724
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getRedemptionCodePageData(Ljava/lang/String;Lcom/tgs/aics/listener/IHttpRspDataListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tgs/aics/listener/IHttpRspDataListener<",
            "Lcom/tgs/aics/bean/RedemptionCodePageBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "aics.HttpApi"

    const-string v1, "getRedemptionCodePageData"

    .line 506
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance v0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2}, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda12;-><init>(Lcom/tgs/aics/http/HttpApi;Ljava/lang/String;Lcom/tgs/aics/listener/IHttpRspDataListener;)V

    .line 585
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getUnreadMessageCount(Lcom/tgs/aics/listener/IBaseBeanListener;)V
    .locals 2

    const-string v0, "aics.HttpApi"

    const-string v1, "getUnreadMessageCount"

    .line 310
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda9;-><init>(Lcom/tgs/aics/http/HttpApi;Lcom/tgs/aics/listener/IBaseBeanListener;)V

    .line 351
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$commitRedemptionCode$10$com-tgs-aics-http-HttpApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/listener/IHttpRspDataListener;)V
    .locals 7

    const/4 v0, 0x0

    .line 598
    :try_start_0
    iget-object v1, p0, Lcom/tgs/aics/http/HttpApi;->httpRequest:Lcom/tgs/aics/http/HttpRequest;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/tgs/aics/http/HttpRequest;->commitRedemptionCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/http/HttpResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 599
    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpResponse;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 600
    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpResponse;->asJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    .line 601
    new-instance p2, Lcom/tgs/aics/bean/BaseDataBean;

    invoke-direct {p2}, Lcom/tgs/aics/bean/BaseDataBean;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 602
    :try_start_1
    invoke-direct {p0, p2, p1}, Lcom/tgs/aics/http/HttpApi;->parseBaseDataBean(Lcom/tgs/aics/bean/BaseDataBean;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p2

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p2

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p6, :cond_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 605
    :goto_1
    :try_start_2
    invoke-static {p1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p6, :cond_1

    .line 608
    :goto_2
    invoke-interface {p6, v0}, Lcom/tgs/aics/listener/IHttpRspDataListener;->onResult(Lcom/tgs/aics/bean/BaseDataBean;)V

    :cond_1
    return-void

    :catchall_2
    move-exception p1

    if-eqz p6, :cond_2

    invoke-interface {p6, v0}, Lcom/tgs/aics/listener/IHttpRspDataListener;->onResult(Lcom/tgs/aics/bean/BaseDataBean;)V

    .line 610
    :cond_2
    throw p1
.end method

.method synthetic lambda$faqDetailTap$5$com-tgs-aics-http-HttpApi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "FaqDetailTap resp: "

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/tgs/aics/http/HttpApi;->httpRequest:Lcom/tgs/aics/http/HttpRequest;

    invoke-virtual {v1, p1, p2}, Lcom/tgs/aics/http/HttpRequest;->faqDetailTap(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/http/HttpResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 363
    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpResponse;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 364
    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpResponse;->asJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "aics.HttpApi"

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 368
    invoke-static {p1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$getAicsServerAddress$6$com-tgs-aics-http-HttpApi(Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 379
    :try_start_0
    iget-object v0, v1, Lcom/tgs/aics/http/HttpApi;->httpRequest:Lcom/tgs/aics/http/HttpRequest;

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Lcom/tgs/aics/http/HttpRequest;->getAicsAddress(Ljava/lang/String;)Lcom/tgs/aics/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 380
    invoke-virtual {v0}, Lcom/tgs/aics/http/HttpResponse;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 381
    invoke-virtual {v0}, Lcom/tgs/aics/http/HttpResponse;->asJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 382
    new-instance v4, Lcom/tgs/aics/bean/BaseBean;

    invoke-direct {v4}, Lcom/tgs/aics/bean/BaseBean;-><init>()V

    .line 383
    invoke-direct {v1, v0}, Lcom/tgs/aics/http/HttpApi;->isResponseResultSuccess(Lorg/json/JSONObject;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 384
    invoke-virtual {v4, v3}, Lcom/tgs/aics/bean/BaseBean;->setSuccess(Z)V

    const-string v5, "error_msg"

    .line 385
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tgs/aics/bean/BaseBean;->setMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const/4 v5, 0x1

    .line 387
    invoke-virtual {v4, v5}, Lcom/tgs/aics/bean/BaseBean;->setSuccess(Z)V

    const-string v5, "servers"

    .line 390
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, ""

    if-eqz v0, :cond_3

    :try_start_1
    const-string v6, "aics"

    .line 392
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, ":"

    const-string v8, "://"

    const-string v9, "path"

    const-string v10, "https_port"

    const-string v11, "host"

    const-string v12, "schema"

    if-eqz v6, :cond_1

    .line 394
    :try_start_2
    invoke-virtual {v6, v12, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 395
    invoke-virtual {v6, v11, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 396
    invoke-virtual {v6, v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 397
    invoke-virtual {v6, v9, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    const-string v6, "collector"

    .line 401
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 403
    invoke-virtual {v0, v12, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 404
    invoke-virtual {v0, v11, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 405
    invoke-virtual {v0, v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 406
    invoke-virtual {v0, v9, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    sput-object v0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->collectorUrl:Ljava/lang/String;

    :cond_2
    move-object v5, v3

    .line 412
    :cond_3
    invoke-virtual {v4, v5}, Lcom/tgs/aics/bean/BaseBean;->setMsg(Ljava/lang/String;)V

    :goto_1
    if-eqz v2, :cond_5

    .line 415
    invoke-interface {v2, v4}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    .line 419
    new-instance v0, Lcom/tgs/aics/bean/BaseBean;

    invoke-direct {v0}, Lcom/tgs/aics/bean/BaseBean;-><init>()V

    const/4 v3, 0x0

    .line 420
    invoke-virtual {v0, v3}, Lcom/tgs/aics/bean/BaseBean;->setSuccess(Z)V

    const-string v3, "http request failed"

    .line 421
    invoke-virtual {v0, v3}, Lcom/tgs/aics/bean/BaseBean;->setMsg(Ljava/lang/String;)V

    .line 422
    invoke-interface {v2, v0}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 426
    invoke-static {v0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    if-eqz v2, :cond_5

    .line 428
    new-instance v3, Lcom/tgs/aics/bean/BaseBean;

    invoke-direct {v3}, Lcom/tgs/aics/bean/BaseBean;-><init>()V

    const/4 v4, 0x0

    .line 429
    invoke-virtual {v3, v4}, Lcom/tgs/aics/bean/BaseBean;->setSuccess(Z)V

    .line 430
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tgs/aics/bean/BaseBean;->setMsg(Ljava/lang/String;)V

    .line 431
    invoke-interface {v2, v3}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V

    :cond_5
    :goto_2
    return-void
.end method

.method synthetic lambda$getFAQDetailData$2$com-tgs-aics-http-HttpApi(Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V
    .locals 3

    const/4 v0, 0x0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/tgs/aics/http/HttpApi;->httpRequest:Lcom/tgs/aics/http/HttpRequest;

    invoke-virtual {v1, p1}, Lcom/tgs/aics/http/HttpRequest;->getFAQDetailData(Ljava/lang/String;)Lcom/tgs/aics/http/HttpResponse;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 200
    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 201
    new-instance v1, Lcom/tgs/aics/bean/FAQDetailBean;

    invoke-direct {v1}, Lcom/tgs/aics/bean/FAQDetailBean;-><init>()V

    .line 203
    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpResponse;->asJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    .line 204
    invoke-direct {p0, p1}, Lcom/tgs/aics/http/HttpApi;->isResponseResultSuccess(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    invoke-virtual {v1, v0}, Lcom/tgs/aics/bean/FAQDetailBean;->setSuccess(Z)V

    const-string v2, "error_msg"

    .line 206
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tgs/aics/bean/FAQDetailBean;->setMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 208
    invoke-virtual {v1, v2}, Lcom/tgs/aics/bean/FAQDetailBean;->setSuccess(Z)V

    :goto_0
    const-string v2, "faq_detail"

    .line 212
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 214
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    const-string p1, "content"

    .line 218
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tgs/aics/bean/FAQDetailBean;->setContent(Ljava/lang/String;)V

    const-string p1, "title"

    .line 219
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tgs/aics/bean/FAQDetailBean;->setTitle(Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_4

    .line 223
    invoke-interface {p2, v1}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 227
    new-instance p1, Lcom/tgs/aics/bean/FAQDetailBean;

    invoke-direct {p1}, Lcom/tgs/aics/bean/FAQDetailBean;-><init>()V

    .line 228
    invoke-virtual {p1, v0}, Lcom/tgs/aics/bean/FAQDetailBean;->setSuccess(Z)V

    const-string v1, "http request failed"

    .line 229
    invoke-virtual {p1, v1}, Lcom/tgs/aics/bean/FAQDetailBean;->setMsg(Ljava/lang/String;)V

    .line 230
    invoke-interface {p2, p1}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 234
    invoke-static {p1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_4

    .line 236
    new-instance v1, Lcom/tgs/aics/bean/FAQDetailBean;

    invoke-direct {v1}, Lcom/tgs/aics/bean/FAQDetailBean;-><init>()V

    .line 237
    invoke-virtual {v1, v0}, Lcom/tgs/aics/bean/FAQDetailBean;->setSuccess(Z)V

    .line 238
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tgs/aics/bean/FAQDetailBean;->setMsg(Ljava/lang/String;)V

    .line 239
    invoke-interface {p2, v1}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V

    :cond_4
    :goto_2
    return-void
.end method

.method synthetic lambda$getFAQListData$1$com-tgs-aics-http-HttpApi(Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V
    .locals 3

    const/4 v0, 0x0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/tgs/aics/http/HttpApi;->httpRequest:Lcom/tgs/aics/http/HttpRequest;

    invoke-virtual {v1, p1}, Lcom/tgs/aics/http/HttpRequest;->getFAQListData(Ljava/lang/String;)Lcom/tgs/aics/http/HttpResponse;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 140
    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 141
    new-instance v1, Lcom/tgs/aics/bean/FAQListBean;

    invoke-direct {v1}, Lcom/tgs/aics/bean/FAQListBean;-><init>()V

    .line 143
    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpResponse;->asJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    .line 144
    invoke-direct {p0, p1}, Lcom/tgs/aics/http/HttpApi;->isResponseResultSuccess(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    invoke-virtual {v1, v0}, Lcom/tgs/aics/bean/FAQListBean;->setSuccess(Z)V

    const-string v2, "error_msg"

    .line 146
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tgs/aics/bean/FAQListBean;->setMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 148
    invoke-virtual {v1, v2}, Lcom/tgs/aics/bean/FAQListBean;->setSuccess(Z)V

    :goto_0
    const-string v2, "faq_list"

    .line 152
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    const-string p1, "title"

    .line 158
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tgs/aics/bean/FAQListBean;->setTitle(Ljava/lang/String;)V

    const-string p1, "items"

    .line 159
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 161
    invoke-static {p1}, Lcom/tgs/aics/bean/FAQListBean;->parseJson(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tgs/aics/bean/FAQListBean;->setData(Ljava/util/List;)V

    :cond_2
    if-eqz p2, :cond_4

    .line 166
    invoke-interface {p2, v1}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 170
    new-instance p1, Lcom/tgs/aics/bean/FAQListBean;

    invoke-direct {p1}, Lcom/tgs/aics/bean/FAQListBean;-><init>()V

    .line 171
    invoke-virtual {p1, v0}, Lcom/tgs/aics/bean/FAQListBean;->setSuccess(Z)V

    const-string v1, "http request failed"

    .line 172
    invoke-virtual {p1, v1}, Lcom/tgs/aics/bean/FAQListBean;->setMsg(Ljava/lang/String;)V

    .line 173
    invoke-interface {p2, p1}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 177
    invoke-static {p1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_4

    .line 179
    new-instance v1, Lcom/tgs/aics/bean/FAQListBean;

    invoke-direct {v1}, Lcom/tgs/aics/bean/FAQListBean;-><init>()V

    .line 180
    invoke-virtual {v1, v0}, Lcom/tgs/aics/bean/FAQListBean;->setSuccess(Z)V

    .line 181
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tgs/aics/bean/FAQListBean;->setMsg(Ljava/lang/String;)V

    .line 182
    invoke-interface {p2, v1}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V

    :cond_4
    :goto_2
    return-void
.end method

.method synthetic lambda$getFormData$3$com-tgs-aics-http-HttpApi(Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V
    .locals 3

    const/4 v0, 0x0

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/tgs/aics/http/HttpApi;->httpRequest:Lcom/tgs/aics/http/HttpRequest;

    invoke-virtual {v1, p1}, Lcom/tgs/aics/http/HttpRequest;->getFormData(Ljava/lang/String;)Lcom/tgs/aics/http/HttpResponse;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 255
    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 256
    new-instance v1, Lcom/tgs/aics/bean/FormListBean;

    invoke-direct {v1}, Lcom/tgs/aics/bean/FormListBean;-><init>()V

    .line 258
    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpResponse;->asJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    .line 259
    invoke-direct {p0, p1}, Lcom/tgs/aics/http/HttpApi;->isResponseResultSuccess(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    invoke-virtual {v1, v0}, Lcom/tgs/aics/bean/FormListBean;->setSuccess(Z)V

    const-string v2, "error_msg"

    .line 261
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tgs/aics/bean/FormListBean;->setMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 263
    invoke-virtual {v1, v2}, Lcom/tgs/aics/bean/FormListBean;->setSuccess(Z)V

    :goto_0
    const-string v2, "form"

    .line 267
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 269
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    const-string p1, "items"

    .line 272
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 274
    invoke-static {p1}, Lcom/tgs/aics/bean/FormListBean;->parseJSON(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tgs/aics/bean/FormListBean;->setItems(Ljava/util/List;)V

    :cond_2
    const-string p1, "title"

    .line 276
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tgs/aics/bean/FormListBean;->setTitle(Ljava/lang/String;)V

    const-string p1, "submitText"

    .line 277
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tgs/aics/bean/FormListBean;->setSubmitText(Ljava/lang/String;)V

    const-string p1, "formShowId"

    .line 278
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tgs/aics/bean/FormListBean;->setFormShowId(Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_5

    .line 282
    invoke-interface {p2, v1}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    .line 286
    new-instance p1, Lcom/tgs/aics/bean/FormListBean;

    invoke-direct {p1}, Lcom/tgs/aics/bean/FormListBean;-><init>()V

    .line 287
    invoke-virtual {p1, v0}, Lcom/tgs/aics/bean/FormListBean;->setSuccess(Z)V

    const-string v1, "http request failed"

    .line 288
    invoke-virtual {p1, v1}, Lcom/tgs/aics/bean/FormListBean;->setMsg(Ljava/lang/String;)V

    .line 289
    invoke-interface {p2, p1}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 293
    invoke-static {p1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_5

    .line 295
    new-instance v1, Lcom/tgs/aics/bean/FormListBean;

    invoke-direct {v1}, Lcom/tgs/aics/bean/FormListBean;-><init>()V

    .line 296
    invoke-virtual {v1, v0}, Lcom/tgs/aics/bean/FormListBean;->setSuccess(Z)V

    .line 297
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tgs/aics/bean/FormListBean;->setMsg(Ljava/lang/String;)V

    .line 298
    invoke-interface {p2, v1}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V

    :cond_5
    :goto_2
    return-void
.end method

.method synthetic lambda$getHomeData$0$com-tgs-aics-http-HttpApi(Lcom/tgs/aics/listener/IBaseBeanListener;)V
    .locals 4

    const/4 v0, 0x0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/tgs/aics/http/HttpApi;->httpRequest:Lcom/tgs/aics/http/HttpRequest;

    invoke-virtual {v1}, Lcom/tgs/aics/http/HttpRequest;->getHomeData()Lcom/tgs/aics/http/HttpResponse;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 71
    invoke-virtual {v1}, Lcom/tgs/aics/http/HttpResponse;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 72
    new-instance v2, Lcom/tgs/aics/bean/HomeData;

    invoke-direct {v2}, Lcom/tgs/aics/bean/HomeData;-><init>()V

    .line 74
    invoke-virtual {v1}, Lcom/tgs/aics/http/HttpResponse;->asJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 75
    invoke-direct {p0, v1}, Lcom/tgs/aics/http/HttpApi;->isResponseResultSuccess(Lorg/json/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 76
    invoke-virtual {v2, v0}, Lcom/tgs/aics/bean/HomeData;->setSuccess(Z)V

    const-string v3, "error_msg"

    .line 77
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tgs/aics/bean/HomeData;->setMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 79
    invoke-virtual {v2, v3}, Lcom/tgs/aics/bean/HomeData;->setSuccess(Z)V

    :goto_0
    const-string v3, "faq_homepage"

    .line 83
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 85
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    const-string v1, "selfService"

    .line 90
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 92
    invoke-static {v1}, Lcom/tgs/aics/bean/SelfServiceBean;->parseJson(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/SelfServiceBean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tgs/aics/bean/HomeData;->setSelfServiceBean(Lcom/tgs/aics/bean/SelfServiceBean;)V

    :cond_2
    const-string v1, "faqFocus"

    .line 95
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 97
    invoke-static {v1}, Lcom/tgs/aics/bean/ImportantAttentionBean;->parseJson(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/ImportantAttentionBean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tgs/aics/bean/HomeData;->setImportantAttentionBean(Lcom/tgs/aics/bean/ImportantAttentionBean;)V

    :cond_3
    const-string v1, "helpCenter"

    .line 100
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 102
    invoke-static {v1}, Lcom/tgs/aics/bean/HelpCenterBean;->parseJson(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/HelpCenterBean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tgs/aics/bean/HomeData;->setHelpCenterBean(Lcom/tgs/aics/bean/HelpCenterBean;)V

    :cond_4
    if-eqz p1, :cond_6

    .line 107
    invoke-interface {p1, v2}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    .line 110
    new-instance v1, Lcom/tgs/aics/bean/HomeData;

    invoke-direct {v1}, Lcom/tgs/aics/bean/HomeData;-><init>()V

    .line 111
    invoke-virtual {v1, v0}, Lcom/tgs/aics/bean/HomeData;->setSuccess(Z)V

    const-string v2, "http request failed"

    .line 112
    invoke-virtual {v1, v2}, Lcom/tgs/aics/bean/HomeData;->setMsg(Ljava/lang/String;)V

    .line 113
    invoke-interface {p1, v1}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 117
    invoke-static {v1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_6

    .line 119
    new-instance v2, Lcom/tgs/aics/bean/HomeData;

    invoke-direct {v2}, Lcom/tgs/aics/bean/HomeData;-><init>()V

    .line 120
    invoke-virtual {v2, v0}, Lcom/tgs/aics/bean/HomeData;->setSuccess(Z)V

    .line 121
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tgs/aics/bean/HomeData;->setMsg(Ljava/lang/String;)V

    .line 122
    invoke-interface {p1, v2}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V

    :cond_6
    :goto_2
    return-void
.end method

.method synthetic lambda$getQuestionnaireData$11$com-tgs-aics-http-HttpApi(Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V
    .locals 12

    const-string v0, "getQuestionnaireData ret: "

    const/4 v1, 0x0

    .line 624
    :try_start_0
    iget-object v2, p0, Lcom/tgs/aics/http/HttpApi;->httpRequest:Lcom/tgs/aics/http/HttpRequest;

    invoke-virtual {v2, p1, p2}, Lcom/tgs/aics/http/HttpRequest;->getQuestionnaireData(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/http/HttpResponse;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 625
    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpResponse;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 626
    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpResponse;->asJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "aics.HttpApi"

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-direct {p0, p1}, Lcom/tgs/aics/http/HttpApi;->isResponseResultSuccess(Lorg/json/JSONObject;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 629
    new-instance p2, Lcom/tgs/aics/bean/BaseBean;

    invoke-direct {p2}, Lcom/tgs/aics/bean/BaseBean;-><init>()V

    .line 630
    invoke-virtual {p2, v1}, Lcom/tgs/aics/bean/BaseBean;->setSuccess(Z)V

    const-string v0, "error_msg"

    .line 631
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tgs/aics/bean/BaseBean;->setMsg(Ljava/lang/String;)V

    const-string v0, "error_code"

    .line 632
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/tgs/aics/bean/BaseBean;->setErrorCode(I)V

    if-eqz p3, :cond_a

    .line 634
    invoke-interface {p3, p2}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V

    goto/16 :goto_4

    :cond_0
    const-string p2, "info"

    .line 636
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 640
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 641
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 642
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 644
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 646
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 647
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 648
    new-instance v4, Lorg/json/JSONArray;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v3, v1

    .line 653
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, -0x1

    if-ge v3, v5, :cond_4

    .line 654
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "type"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->paginator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v3, v6

    :goto_2
    if-eq v3, v6, :cond_5

    .line 662
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 664
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 666
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_5
    move v3, v1

    .line 669
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 670
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    if-eqz p3, :cond_a

    const-string p2, "title"

    .line 676
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p2, "describe"

    .line 677
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p2, "version"

    .line 678
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p2, "language_code"

    .line 679
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p2, "can_commit"

    const/4 v0, 0x1

    .line 680
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string p2, "reason"

    .line 681
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string p2, "display_question_title"

    .line 682
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string p2, "display_question_number"

    .line 683
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string p2, "display_question_tag"

    .line 684
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 675
    invoke-static/range {v2 .. v11}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->parseJSON(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZ)Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 686
    invoke-virtual {p1, v0}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->setSuccess(Z)V

    const-string p2, "get questionnaire config success"

    .line 687
    invoke-virtual {p1, p2}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->setMsg(Ljava/lang/String;)V

    .line 688
    invoke-interface {p3, p1}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V

    goto :goto_4

    .line 690
    :cond_7
    new-instance p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    invoke-direct {p1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;-><init>()V

    .line 691
    invoke-virtual {p1, v1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->setSuccess(Z)V

    const-string p2, "null QuestionnaireBean"

    .line 692
    invoke-virtual {p1, p2}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->setMsg(Ljava/lang/String;)V

    .line 693
    invoke-interface {p3, p1}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V

    goto :goto_4

    :cond_8
    if-eqz p3, :cond_a

    .line 698
    new-instance p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    invoke-direct {p1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;-><init>()V

    .line 699
    invoke-virtual {p1, v1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->setSuccess(Z)V

    const-string p2, "info empty"

    .line 700
    invoke-virtual {p1, p2}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->setMsg(Ljava/lang/String;)V

    .line 701
    invoke-interface {p3, p1}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V

    goto :goto_4

    :cond_9
    if-eqz p3, :cond_a

    .line 707
    new-instance p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    invoke-direct {p1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;-><init>()V

    .line 708
    invoke-virtual {p1, v1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->setSuccess(Z)V

    const-string p2, "http request failed"

    .line 709
    invoke-virtual {p1, p2}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->setMsg(Ljava/lang/String;)V

    .line 710
    invoke-interface {p3, p1}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 714
    invoke-static {p1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    if-eqz p3, :cond_a

    .line 716
    new-instance p2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    invoke-direct {p2}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;-><init>()V

    .line 717
    invoke-virtual {p2, v1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->setSuccess(Z)V

    .line 718
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->setMsg(Ljava/lang/String;)V

    .line 719
    invoke-interface {p3, p2}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V

    :cond_a
    :goto_4
    return-void
.end method

.method synthetic lambda$getRedemptionCodePageData$9$com-tgs-aics-http-HttpApi(Ljava/lang/String;Lcom/tgs/aics/listener/IHttpRspDataListener;)V
    .locals 6

    const/4 v0, 0x0

    .line 510
    :try_start_0
    iget-object v1, p0, Lcom/tgs/aics/http/HttpApi;->httpRequest:Lcom/tgs/aics/http/HttpRequest;

    invoke-virtual {v1, p1}, Lcom/tgs/aics/http/HttpRequest;->getRedemptionCodePageData(Ljava/lang/String;)Lcom/tgs/aics/http/HttpResponse;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 511
    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 512
    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpResponse;->asJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    .line 514
    invoke-direct {p0, p1}, Lcom/tgs/aics/http/HttpApi;->isResponseResultSuccess(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "redemption_config"

    .line 515
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 517
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 518
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 519
    new-instance v1, Lcom/tgs/aics/bean/RedemptionCodePageBean;

    invoke-direct {v1}, Lcom/tgs/aics/bean/RedemptionCodePageBean;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 520
    :try_start_1
    invoke-direct {p0, v1, p1}, Lcom/tgs/aics/http/HttpApi;->parseBaseDataBean(Lcom/tgs/aics/bean/BaseDataBean;Lorg/json/JSONObject;)V

    const-string p1, "titleConfig"

    .line 523
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "backgroundImg"

    if-eqz p1, :cond_0

    .line 525
    :try_start_2
    new-instance v3, Lcom/tgs/aics/bean/RedemptionCodePageBean$TitleConfig;

    invoke-direct {v3}, Lcom/tgs/aics/bean/RedemptionCodePageBean$TitleConfig;-><init>()V

    .line 526
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tgs/aics/bean/RedemptionCodePageBean$TitleConfig;->backgroundImg:Ljava/lang/String;

    const-string v4, "cancelButtonImg"

    .line 527
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tgs/aics/bean/RedemptionCodePageBean$TitleConfig;->cancelImg:Ljava/lang/String;

    const-string v4, "cancelButtonPosition"

    .line 528
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tgs/aics/bean/RedemptionCodePageBean$TitleConfig;->cancelPosition:Ljava/lang/String;

    .line 529
    invoke-direct {p0, v3, p1}, Lcom/tgs/aics/http/HttpApi;->parseTextConfigBean(Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;Lorg/json/JSONObject;)V

    .line 530
    iput-object v3, v1, Lcom/tgs/aics/bean/RedemptionCodePageBean;->titleConfig:Lcom/tgs/aics/bean/RedemptionCodePageBean$TitleConfig;

    :cond_0
    const-string p1, "contentConfig"

    .line 533
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 535
    new-instance v2, Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;

    invoke-direct {v2}, Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;-><init>()V

    .line 537
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;->backgroundImg:Ljava/lang/String;

    const-string v3, "contentTitle"

    .line 539
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 541
    new-instance v4, Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;

    invoke-direct {v4}, Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;-><init>()V

    .line 542
    invoke-direct {p0, v4, v3}, Lcom/tgs/aics/http/HttpApi;->parseTextConfigBean(Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;Lorg/json/JSONObject;)V

    .line 543
    iput-object v4, v2, Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;->contentTitle:Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;

    :cond_1
    const-string v3, "contentInput"

    .line 546
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 548
    new-instance v4, Lcom/tgs/aics/bean/RedemptionCodePageBean$InputBean;

    invoke-direct {v4}, Lcom/tgs/aics/bean/RedemptionCodePageBean$InputBean;-><init>()V

    const-string v5, "bgColor"

    .line 549
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tgs/aics/bean/RedemptionCodePageBean$InputBean;->bgColor:Ljava/lang/String;

    const-string v5, "bgRadius"

    .line 550
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tgs/aics/bean/RedemptionCodePageBean$InputBean;->bgRadius:Ljava/lang/String;

    const-string v5, "placeHolderColor"

    .line 551
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tgs/aics/bean/RedemptionCodePageBean$InputBean;->placeHolderColor:Ljava/lang/String;

    const-string v5, "placeHolderText"

    .line 552
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tgs/aics/bean/RedemptionCodePageBean$InputBean;->placeHolderText:Ljava/lang/String;

    .line 553
    invoke-direct {p0, v4, v3}, Lcom/tgs/aics/http/HttpApi;->parseTextConfigBean(Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;Lorg/json/JSONObject;)V

    .line 554
    iput-object v4, v2, Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;->inputBean:Lcom/tgs/aics/bean/RedemptionCodePageBean$InputBean;

    :cond_2
    const-string v3, "redeemButton"

    .line 557
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 559
    new-instance v4, Lcom/tgs/aics/bean/RedemptionCodePageBean$RedeemButtonBean;

    invoke-direct {v4}, Lcom/tgs/aics/bean/RedemptionCodePageBean$RedeemButtonBean;-><init>()V

    .line 560
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tgs/aics/bean/RedemptionCodePageBean$RedeemButtonBean;->backgroundImg:Ljava/lang/String;

    .line 561
    invoke-direct {p0, v4, v3}, Lcom/tgs/aics/http/HttpApi;->parseTextConfigBean(Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;Lorg/json/JSONObject;)V

    .line 562
    iput-object v4, v2, Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;->redeemButton:Lcom/tgs/aics/bean/RedemptionCodePageBean$RedeemButtonBean;

    :cond_3
    const-string v0, "contentInstructions"

    .line 565
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 567
    new-instance v0, Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;

    invoke-direct {v0}, Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;-><init>()V

    .line 568
    invoke-direct {p0, v0, p1}, Lcom/tgs/aics/http/HttpApi;->parseTextConfigBean(Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;Lorg/json/JSONObject;)V

    .line 569
    iput-object v0, v2, Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;->instructions:Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;

    .line 571
    :cond_4
    iput-object v2, v1, Lcom/tgs/aics/bean/RedemptionCodePageBean;->contentConfig:Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :cond_6
    :goto_0
    if-eqz p2, :cond_7

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 577
    :goto_1
    :try_start_3
    invoke-static {p1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p2, :cond_7

    .line 580
    :goto_2
    invoke-interface {p2, v0}, Lcom/tgs/aics/listener/IHttpRspDataListener;->onResult(Lcom/tgs/aics/bean/BaseDataBean;)V

    :cond_7
    return-void

    :catchall_2
    move-exception p1

    if-eqz p2, :cond_8

    invoke-interface {p2, v0}, Lcom/tgs/aics/listener/IHttpRspDataListener;->onResult(Lcom/tgs/aics/bean/BaseDataBean;)V

    .line 582
    :cond_8
    throw p1
.end method

.method synthetic lambda$getUnreadMessageCount$4$com-tgs-aics-http-HttpApi(Lcom/tgs/aics/listener/IBaseBeanListener;)V
    .locals 6

    const-string v0, "getUnreadMessageCount->"

    const/4 v1, 0x0

    .line 313
    :try_start_0
    iget-object v2, p0, Lcom/tgs/aics/http/HttpApi;->httpRequest:Lcom/tgs/aics/http/HttpRequest;

    invoke-virtual {v2}, Lcom/tgs/aics/http/HttpRequest;->getUnreadMessageCount()Lcom/tgs/aics/http/HttpResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 314
    invoke-virtual {v2}, Lcom/tgs/aics/http/HttpResponse;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 315
    new-instance v3, Lcom/tgs/aics/bean/UnreadMessageCountBean;

    invoke-direct {v3}, Lcom/tgs/aics/bean/UnreadMessageCountBean;-><init>()V

    .line 317
    invoke-virtual {v2}, Lcom/tgs/aics/http/HttpResponse;->asJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "aics.HttpApi"

    .line 318
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-direct {p0, v2}, Lcom/tgs/aics/http/HttpApi;->isResponseResultSuccess(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    invoke-virtual {v3, v1}, Lcom/tgs/aics/bean/UnreadMessageCountBean;->setSuccess(Z)V

    const-string v0, "error_msg"

    .line 321
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tgs/aics/bean/UnreadMessageCountBean;->setMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 323
    invoke-virtual {v3, v0}, Lcom/tgs/aics/bean/UnreadMessageCountBean;->setSuccess(Z)V

    :goto_0
    const-string v0, "unread_message_count"

    .line 326
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 327
    invoke-virtual {v3, v0}, Lcom/tgs/aics/bean/UnreadMessageCountBean;->setUnreadMessageCount(I)V

    if-eqz p1, :cond_2

    .line 330
    invoke-interface {p1, v3}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 334
    new-instance v0, Lcom/tgs/aics/bean/UnreadMessageCountBean;

    invoke-direct {v0}, Lcom/tgs/aics/bean/UnreadMessageCountBean;-><init>()V

    .line 335
    invoke-virtual {v0, v1}, Lcom/tgs/aics/bean/UnreadMessageCountBean;->setSuccess(Z)V

    const-string v2, "http request failed"

    .line 336
    invoke-virtual {v0, v2}, Lcom/tgs/aics/bean/UnreadMessageCountBean;->setMsg(Ljava/lang/String;)V

    .line 337
    invoke-interface {p1, v0}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 341
    invoke-static {v0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_2

    .line 343
    new-instance v2, Lcom/tgs/aics/bean/UnreadMessageCountBean;

    invoke-direct {v2}, Lcom/tgs/aics/bean/UnreadMessageCountBean;-><init>()V

    .line 344
    invoke-virtual {v2, v1}, Lcom/tgs/aics/bean/UnreadMessageCountBean;->setSuccess(Z)V

    .line 345
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tgs/aics/bean/UnreadMessageCountBean;->setMsg(Ljava/lang/String;)V

    .line 346
    invoke-interface {p1, v2}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V

    :cond_2
    :goto_1
    return-void
.end method

.method synthetic lambda$netDiagnoseUpload$8$com-tgs-aics-http-HttpApi(Ljava/lang/String;)V
    .locals 3

    const-string v0, "netDiagnoseUpload resp: "

    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/tgs/aics/http/HttpApi;->httpRequest:Lcom/tgs/aics/http/HttpRequest;

    invoke-virtual {v1, p1}, Lcom/tgs/aics/http/HttpRequest;->netDiagnoseUpload(Ljava/lang/String;)Lcom/tgs/aics/http/HttpResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 488
    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpResponse;->asJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "aics.HttpApi"

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 493
    invoke-static {p1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$report$13$com-tgs-aics-http-HttpApi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/tgs/aics/listener/IHttpRspDataListener;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p12

    const/4 v3, 0x0

    .line 780
    :try_start_0
    iget-object v4, v1, Lcom/tgs/aics/http/HttpApi;->httpRequest:Lcom/tgs/aics/http/HttpRequest;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-wide/from16 v14, p10

    invoke-virtual/range {v4 .. v15}, Lcom/tgs/aics/http/HttpRequest;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/tgs/aics/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {v0}, Lcom/tgs/aics/http/HttpResponse;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 782
    invoke-virtual {v0}, Lcom/tgs/aics/http/HttpResponse;->asJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 783
    new-instance v4, Lcom/tgs/aics/bean/BaseDataBean;

    invoke-direct {v4}, Lcom/tgs/aics/bean/BaseDataBean;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 784
    :try_start_1
    invoke-direct {v1, v4, v0}, Lcom/tgs/aics/http/HttpApi;->parseBaseDataBean(Lcom/tgs/aics/bean/BaseDataBean;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v4

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 787
    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_1

    .line 790
    :goto_2
    invoke-interface {v2, v3}, Lcom/tgs/aics/listener/IHttpRspDataListener;->onResult(Lcom/tgs/aics/bean/BaseDataBean;)V

    :cond_1
    return-void

    :catchall_2
    move-exception v0

    move-object v4, v0

    if-eqz v2, :cond_2

    invoke-interface {v2, v3}, Lcom/tgs/aics/listener/IHttpRspDataListener;->onResult(Lcom/tgs/aics/bean/BaseDataBean;)V

    .line 792
    :cond_2
    throw v4
.end method

.method synthetic lambda$submitQuestionnaireData$12$com-tgs-aics-http-HttpApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V
    .locals 14

    move-object v1, p0

    move-object/from16 v2, p10

    const/4 v3, 0x0

    .line 740
    :try_start_0
    iget-object v4, v1, Lcom/tgs/aics/http/HttpApi;->httpRequest:Lcom/tgs/aics/http/HttpRequest;

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-virtual/range {v4 .. v13}, Lcom/tgs/aics/http/HttpRequest;->submitQuestionnaireData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 741
    invoke-virtual {v0}, Lcom/tgs/aics/http/HttpResponse;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 742
    invoke-virtual {v0}, Lcom/tgs/aics/http/HttpResponse;->asJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 743
    new-instance v4, Lcom/tgs/aics/bean/BaseBean;

    invoke-direct {v4}, Lcom/tgs/aics/bean/BaseBean;-><init>()V

    .line 744
    invoke-direct {p0, v0}, Lcom/tgs/aics/http/HttpApi;->isResponseResultSuccess(Lorg/json/JSONObject;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 745
    invoke-virtual {v4, v3}, Lcom/tgs/aics/bean/BaseBean;->setSuccess(Z)V

    const-string v5, "error_msg"

    .line 746
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tgs/aics/bean/BaseBean;->setMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 748
    invoke-virtual {v4, v0}, Lcom/tgs/aics/bean/BaseBean;->setSuccess(Z)V

    const-string v0, "success"

    .line 749
    invoke-virtual {v4, v0}, Lcom/tgs/aics/bean/BaseBean;->setMsg(Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_2

    .line 752
    invoke-interface {v2, v4}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 755
    new-instance v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    invoke-direct {v0}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;-><init>()V

    .line 756
    invoke-virtual {v0, v3}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->setSuccess(Z)V

    const-string v4, "http request failed"

    .line 757
    invoke-virtual {v0, v4}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->setMsg(Ljava/lang/String;)V

    .line 758
    invoke-interface {v2, v0}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 762
    invoke-static {v0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    if-eqz v2, :cond_2

    .line 764
    new-instance v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    invoke-direct {v4}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;-><init>()V

    .line 765
    invoke-virtual {v4, v3}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->setSuccess(Z)V

    .line 766
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->setMsg(Ljava/lang/String;)V

    .line 767
    invoke-interface {v2, v4}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V

    :cond_2
    :goto_1
    return-void
.end method

.method synthetic lambda$uploadLogToServer$7$com-tgs-aics-http-HttpApi(Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V
    .locals 2

    const/4 v0, 0x0

    .line 444
    :try_start_0
    invoke-static {p1, p2}, Lcom/tgs/aics/http/NetUtils;->post(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 445
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 446
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 447
    new-instance p1, Lcom/tgs/aics/bean/BaseBean;

    invoke-direct {p1}, Lcom/tgs/aics/bean/BaseBean;-><init>()V

    .line 449
    invoke-direct {p0, p2}, Lcom/tgs/aics/http/HttpApi;->isResponseResultSuccess(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    invoke-virtual {p1, v0}, Lcom/tgs/aics/bean/BaseBean;->setSuccess(Z)V

    const-string v1, "error_msg"

    .line 451
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tgs/aics/bean/BaseBean;->setMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 453
    invoke-virtual {p1, p2}, Lcom/tgs/aics/bean/BaseBean;->setSuccess(Z)V

    :goto_0
    if-eqz p3, :cond_2

    .line 457
    invoke-interface {p3, p1}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 463
    new-instance p1, Lcom/tgs/aics/bean/BaseBean;

    invoke-direct {p1}, Lcom/tgs/aics/bean/BaseBean;-><init>()V

    .line 464
    invoke-virtual {p1, v0}, Lcom/tgs/aics/bean/BaseBean;->setSuccess(Z)V

    const-string p2, "uploadLogToServer failed.result is null or empty"

    .line 465
    invoke-virtual {p1, p2}, Lcom/tgs/aics/bean/BaseBean;->setMsg(Ljava/lang/String;)V

    .line 466
    invoke-interface {p3, p1}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 470
    invoke-static {p1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    if-eqz p3, :cond_2

    .line 472
    new-instance p2, Lcom/tgs/aics/bean/BaseBean;

    invoke-direct {p2}, Lcom/tgs/aics/bean/BaseBean;-><init>()V

    .line 473
    invoke-virtual {p2, v0}, Lcom/tgs/aics/bean/BaseBean;->setSuccess(Z)V

    .line 474
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tgs/aics/bean/BaseBean;->setMsg(Ljava/lang/String;)V

    .line 475
    invoke-interface {p3, p2}, Lcom/tgs/aics/listener/IBaseBeanListener;->onResult(Lcom/tgs/aics/bean/BaseBean;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public netDiagnoseUpload(Ljava/lang/String;)V
    .locals 2

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "netDiagnoseUpload...content: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aics.HttpApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance v0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda2;-><init>(Lcom/tgs/aics/http/HttpApi;Ljava/lang/String;)V

    .line 497
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/tgs/aics/listener/IHttpRspDataListener;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/tgs/aics/listener/IHttpRspDataListener<",
            "Lcom/tgs/aics/bean/BaseDataBean;",
            ">;)V"
        }
    .end annotation

    .line 777
    new-instance v14, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda8;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda8;-><init>(Lcom/tgs/aics/http/HttpApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/tgs/aics/listener/IHttpRspDataListener;)V

    .line 794
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public submitQuestionnaireData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V
    .locals 14

    const-string v0, "aics.HttpApi"

    const-string v1, "submitQuestionnaireData"

    .line 737
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    new-instance v0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda3;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v2 .. v13}, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda3;-><init>(Lcom/tgs/aics/http/HttpApi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V

    .line 772
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public uploadLogToServer(Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V
    .locals 2

    const-string v0, "aics.HttpApi"

    const-string v1, "uploadLogToServer"

    .line 441
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-instance v0, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tgs/aics/http/HttpApi$$ExternalSyntheticLambda6;-><init>(Lcom/tgs/aics/http/HttpApi;Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V

    .line 480
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
