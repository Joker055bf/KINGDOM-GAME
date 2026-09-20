.class public Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;
.super Ljava/lang/Object;
.source "WXHelperT.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$TokenResponse;,
        Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$WXTokenService;,
        Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$Callback;
    }
.end annotation


# static fields
.field private static APP_ID:Ljava/lang/String;

.field private static SECRET_ID:Ljava/lang/String;

.field private static api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private static callback:Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$Callback;

.field private static unityFailCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

.field private static unitySuccessCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Link()V
    .locals 0

    return-void
.end method

.method static synthetic access$000()Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$Callback;
    .locals 1

    .line 24
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->callback:Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$Callback;

    return-object v0
.end method

.method static synthetic access$100()Lcom/huawei/hmf/tasks/OnSuccessListener;
    .locals 1

    .line 24
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->unitySuccessCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;

    return-object v0
.end method

.method static synthetic access$200()Lcom/huawei/hmf/tasks/OnFailureListener;
    .locals 1

    .line 24
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->unityFailCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

    return-object v0
.end method

.method public static getApi()Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    .locals 1

    .line 57
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-object v0
.end method

.method public static getToken(Ljava/lang/String;)V
    .locals 4

    .line 73
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v1, "https://api.weixin.qq.com"

    .line 74
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 75
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 77
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    const-class v1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$WXTokenService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$WXTokenService;

    sget-object v1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->APP_ID:Ljava/lang/String;

    sget-object v2, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->SECRET_ID:Ljava/lang/String;

    const-string v3, "authorization_code"

    invoke-interface {v0, v1, v2, p0, v3}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$WXTokenService;->getToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    new-instance v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$1;

    invoke-direct {v0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$1;-><init>()V

    invoke-interface {p0, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public static setContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V
    .locals 0

    .line 39
    :try_start_0
    sput-object p1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->APP_ID:Ljava/lang/String;

    .line 40
    sput-object p2, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->SECRET_ID:Ljava/lang/String;

    .line 41
    sput-object p3, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->unitySuccessCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;

    .line 42
    sput-object p4, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->unityFailCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

    const/4 p2, 0x0

    .line 43
    invoke-static {p0, p1, p2}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p0

    sput-object p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 44
    sget-object p1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->APP_ID:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 45
    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->setWechatCallback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 48
    sget-object p1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->unityFailCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

    if-eqz p1, :cond_0

    .line 50
    invoke-interface {p1, p0}, Lcom/huawei/hmf/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    .line 52
    :cond_0
    throw p0
.end method

.method public static setWechatCallback()V
    .locals 1

    .line 106
    new-instance v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$2;

    invoke-direct {v0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$2;-><init>()V

    sput-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->callback:Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$Callback;

    return-void
.end method

.method public static signIn()V
    .locals 2

    .line 61
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;-><init>()V

    const-string v1, "snsapi_userinfo"

    .line 62
    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;

    const-string v1, "none"

    .line 63
    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;

    .line 64
    sget-object v1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    return-void
.end method
