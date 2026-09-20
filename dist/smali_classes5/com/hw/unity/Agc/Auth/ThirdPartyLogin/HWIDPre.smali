.class public Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWIDPre;
.super Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;
.source "HWIDPre.java"


# static fields
.field private static IDService:Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthService; = null

.field private static TAG:Ljava/lang/String; = "HWID"

.field private static failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

.field private static successCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;-><init>()V

    return-void
.end method

.method public static Login(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 3

    .line 59
    invoke-static {p0}, Lcom/huawei/hms/support/hwid/HuaweiIdAuthManager;->parseAuthResultFromIntent(Landroid/content/Intent;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Lcom/huawei/hmf/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/huawei/hmf/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;

    .line 62
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWIDPre;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "accessToken:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "Token"

    .line 65
    invoke-virtual {p0}, Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;->getAccessToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 69
    :goto_0
    sget-object p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWIDPre;->successCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/huawei/hmf/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 72
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWIDPre;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ":error in success callback"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWIDPre;->showToast(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_1

    .line 75
    :cond_1
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWIDPre;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sign in failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/huawei/hmf/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/common/ApiException;

    invoke-virtual {v2}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWIDPre;->failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

    if-nez v0, :cond_2

    .line 78
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWIDPre;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ":error in fail callback"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWIDPre;->showToast(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/hmf/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/common/ApiException;

    invoke-interface {v0, p0}, Lcom/huawei/hmf/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public static Start(Landroid/app/Activity;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V
    .locals 4

    .line 38
    :try_start_0
    new-instance v0, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;

    sget-object v1, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;->DEFAULT_AUTH_REQUEST_PARAM:Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;

    invoke-direct {v0, v1}, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;-><init>(Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;)V

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    new-instance v2, Lcom/huawei/hms/support/api/entity/auth/Scope;

    const-string v3, "https://www.huawei.com/auth/account/base.profile"

    invoke-direct {v2, v3}, Lcom/huawei/hms/support/api/entity/auth/Scope;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;->setScopeList(Ljava/util/List;)Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;

    .line 42
    invoke-virtual {v0}, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;->setAccessToken()Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;->createParams()Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;

    move-result-object v0

    .line 43
    invoke-static {p0, v0}, Lcom/huawei/hms/support/hwid/HuaweiIdAuthManager;->getService(Landroid/app/Activity;Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;)Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthService;

    move-result-object v0

    sput-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWIDPre;->IDService:Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthService;

    .line 44
    sput-object p1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWIDPre;->successCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;

    .line 45
    sput-object p2, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWIDPre;->failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    invoke-interface {v0}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthService;->getSignInIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x26ad

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :catch_0
    move-exception p0

    .line 48
    sget-object p1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWIDPre;->failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

    if-eqz p1, :cond_0

    .line 50
    invoke-interface {p1, p0}, Lcom/huawei/hmf/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    .line 52
    :cond_0
    throw p0
.end method
