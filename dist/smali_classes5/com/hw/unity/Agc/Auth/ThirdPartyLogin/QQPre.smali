.class public Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre;
.super Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;
.source "QQPre.java"


# static fields
.field private static QQ_code:I = 0x2b5d

.field private static TecentAPP_id:Ljava/lang/String;

.field private static failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

.field private static listener:Lcom/tencent/tauth/IUiListener;

.field private static mTencent:Lcom/tencent/tauth/Tencent;

.field private static successCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;-><init>()V

    return-void
.end method

.method public static Login(Landroid/app/Activity;)V
    .locals 3

    .line 51
    new-instance v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre$1;

    invoke-direct {v0, p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre$1;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre;->listener:Lcom/tencent/tauth/IUiListener;

    .line 81
    sget-object v1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre;->mTencent:Lcom/tencent/tauth/Tencent;

    const-string v2, "all"

    invoke-virtual {v1, p0, v2, v0}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    return-void
.end method

.method public static Start(Ljava/lang/String;Landroid/content/Context;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V
    .locals 0

    .line 30
    :try_start_0
    sput-object p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre;->TecentAPP_id:Ljava/lang/String;

    .line 31
    invoke-static {p0, p1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object p0

    sput-object p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre;->mTencent:Lcom/tencent/tauth/Tencent;

    .line 32
    sput-object p2, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre;->successCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;

    .line 33
    sput-object p3, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre;->failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 36
    sget-object p1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre;->failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

    if-eqz p1, :cond_0

    .line 38
    invoke-interface {p1, p0}, Lcom/huawei/hmf/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    .line 40
    :cond_0
    throw p0
.end method

.method static synthetic access$000()Lcom/huawei/hmf/tasks/OnSuccessListener;
    .locals 1

    .line 19
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre;->successCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;

    return-object v0
.end method

.method static synthetic access$100()Lcom/huawei/hmf/tasks/OnFailureListener;
    .locals 1

    .line 19
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre;->failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

    return-object v0
.end method

.method public static getQQ_code()I
    .locals 1

    .line 46
    sget v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre;->QQ_code:I

    return v0
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x2b5d

    if-ne p0, v0, :cond_0

    .line 87
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre;->listener:Lcom/tencent/tauth/IUiListener;

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/tauth/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    :cond_0
    return-void
.end method
