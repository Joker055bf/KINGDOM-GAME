.class public Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre;
.super Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;
.source "FacebookPre.java"


# static fields
.field public static callbackManager:Lcom/facebook/CallbackManager;

.field private static failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

.field private static successCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    sput-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre;->callbackManager:Lcom/facebook/CallbackManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;-><init>()V

    return-void
.end method

.method public static Start(Landroid/app/Activity;Ljava/lang/String;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V
    .locals 0

    .line 31
    :try_start_0
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->setApplicationId(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 33
    sput-object p2, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre;->successCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;

    .line 34
    sput-object p3, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre;->failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

    .line 35
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p1

    const-string p2, "public_profile"

    const-string p3, "email"

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p1

    sget-object p2, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance p3, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre$1;

    invoke-direct {p3, p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, p2, p3}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void

    :catch_0
    move-exception p0

    .line 38
    sget-object p1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre;->failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

    if-eqz p1, :cond_0

    .line 40
    invoke-interface {p1, p0}, Lcom/huawei/hmf/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    .line 42
    :cond_0
    throw p0
.end method

.method static synthetic access$000()Lcom/huawei/hmf/tasks/OnSuccessListener;
    .locals 1

    .line 22
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre;->successCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;

    return-object v0
.end method

.method static synthetic access$100()Lcom/huawei/hmf/tasks/OnFailureListener;
    .locals 1

    .line 22
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre;->failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

    return-object v0
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 79
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre;->callbackManager:Lcom/facebook/CallbackManager;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    return-void
.end method
