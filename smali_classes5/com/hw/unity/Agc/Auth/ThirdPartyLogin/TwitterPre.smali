.class public Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre;
.super Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;
.source "TwitterPre.java"


# static fields
.field private static TAG:Ljava/lang/String; = "Twitter"

.field private static Twitter_code:I = 0x8c

.field private static failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

.field private static successCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;

.field private static twitterAuthClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;-><init>()V

    return-void
.end method

.method public static Login(Landroid/app/Activity;)V
    .locals 2

    .line 61
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre;->twitterAuthClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    new-instance v1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre$1;

    invoke-direct {v1, p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p0, v1}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authorize(Landroid/app/Activity;Lcom/twitter/sdk/android/core/Callback;)V

    return-void
.end method

.method public static Start(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V
    .locals 1

    .line 33
    :try_start_0
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-direct {v0, p1, p2}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance p1, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->twitterAuthConfig(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->build()Lcom/twitter/sdk/android/core/TwitterConfig;

    move-result-object p0

    .line 40
    invoke-static {p0}, Lcom/twitter/sdk/android/core/Twitter;->initialize(Lcom/twitter/sdk/android/core/TwitterConfig;)V

    .line 41
    new-instance p0, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;-><init>()V

    sput-object p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre;->twitterAuthClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    .line 42
    sput-object p3, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre;->successCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;

    .line 43
    sput-object p4, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre;->failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 46
    sget-object p1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre;->failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

    if-eqz p1, :cond_0

    .line 48
    invoke-interface {p1, p0}, Lcom/huawei/hmf/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    .line 50
    :cond_0
    throw p0
.end method

.method static synthetic access$000()Lcom/huawei/hmf/tasks/OnSuccessListener;
    .locals 1

    .line 23
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre;->successCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;

    return-object v0
.end method

.method static synthetic access$100()Lcom/huawei/hmf/tasks/OnFailureListener;
    .locals 1

    .line 23
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre;->failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getTwitter_code()I
    .locals 1

    .line 56
    sget v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre;->Twitter_code:I

    return v0
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 97
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre;->twitterAuthClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    invoke-virtual {v0, p0, p1, p2}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method
