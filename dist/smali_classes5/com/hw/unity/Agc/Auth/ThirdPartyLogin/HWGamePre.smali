.class public Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre;
.super Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;
.source "HWGamePre.java"


# static fields
.field private static GameService:Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthService; = null

.field public static TAG:Ljava/lang/String; = "HuaweiGameLogin"

.field private static failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

.field private static successCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;-><init>()V

    return-void
.end method

.method public static Login(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 1

    if-nez p0, :cond_0

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ":signIn intent is null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre;->showToast(Ljava/lang/String;Landroid/app/Activity;)V

    return-void

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/huawei/hms/support/hwid/HuaweiIdAuthManager;->parseAuthResultFromIntent(Landroid/content/Intent;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p0

    .line 59
    new-instance v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p0

    new-instance p1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre$$ExternalSyntheticLambda1;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public static Start(Landroid/app/Activity;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V
    .locals 0

    .line 34
    :try_start_0
    sput-object p1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre;->successCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;

    .line 35
    sput-object p2, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre;->failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

    const/4 p1, 0x0

    .line 36
    invoke-static {p0, p1}, Lcom/huawei/hms/jos/JosApps;->getJosAppsClient(Landroid/app/Activity;Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;)Lcom/huawei/hms/jos/JosAppsClient;

    move-result-object p1

    .line 37
    invoke-interface {p1}, Lcom/huawei/hms/jos/JosAppsClient;->init()V

    .line 38
    new-instance p1, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;

    sget-object p2, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;->DEFAULT_AUTH_REQUEST_PARAM_GAME:Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;

    invoke-direct {p1, p2}, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;-><init>(Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;)V

    .line 39
    invoke-virtual {p1}, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;->createParams()Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;

    move-result-object p1

    .line 40
    invoke-static {p0, p1}, Lcom/huawei/hms/support/hwid/HuaweiIdAuthManager;->getService(Landroid/app/Activity;Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;)Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthService;

    move-result-object p1

    sput-object p1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre;->GameService:Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    invoke-interface {p1}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthService;->getSignInIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x26af

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :catch_0
    move-exception p0

    .line 43
    sget-object p1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre;->failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

    if-eqz p1, :cond_0

    .line 45
    invoke-interface {p1, p0}, Lcom/huawei/hmf/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    .line 47
    :cond_0
    throw p0
.end method

.method private static currentPlayerInfo(Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;Landroid/app/Activity;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V
    .locals 1

    .line 65
    invoke-static {p1, p0}, Lcom/huawei/hms/jos/games/Games;->getPlayersClient(Landroid/app/Activity;Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;)Lcom/huawei/hms/jos/games/PlayersClient;

    move-result-object p0

    .line 66
    invoke-interface {p0}, Lcom/huawei/hms/jos/games/PlayersClient;->getCurrentPlayer()Lcom/huawei/hmf/tasks/Task;

    move-result-object p0

    new-instance v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre$$ExternalSyntheticLambda2;-><init>(Lcom/huawei/hmf/tasks/OnSuccessListener;Landroid/app/Activity;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p0

    new-instance p2, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre$$ExternalSyntheticLambda3;

    invoke-direct {p2, p3, p1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre$$ExternalSyntheticLambda3;-><init>(Lcom/huawei/hmf/tasks/OnFailureListener;Landroid/app/Activity;)V

    .line 87
    invoke-virtual {p0, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method static synthetic lambda$Login$0(Landroid/app/Activity;Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;)V
    .locals 2

    .line 59
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre;->successCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;

    sget-object v1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre;->failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

    invoke-static {p1, p0, v0, v1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre;->currentPlayerInfo(Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;Landroid/app/Activity;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V

    return-void
.end method

.method static synthetic lambda$Login$1(Ljava/lang/Exception;)V
    .locals 1

    .line 60
    sget-object p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre;->TAG:Ljava/lang/String;

    const-string v0, "parseAuthResultFromIntent failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$currentPlayerInfo$2(Lcom/huawei/hmf/tasks/OnSuccessListener;Landroid/app/Activity;Lcom/huawei/hms/jos/games/player/Player;)V
    .locals 4

    .line 68
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPlayerInfo Success, player info: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p2}, Lcom/huawei/hms/jos/games/player/Player;->hasHiResImage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/huawei/hms/jos/games/player/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p2}, Lcom/huawei/hms/jos/games/player/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "PlayerSign"

    .line 73
    invoke-virtual {p2}, Lcom/huawei/hms/jos/games/player/Player;->getPlayerSign()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "PlayerId"

    .line 74
    invoke-virtual {p2}, Lcom/huawei/hms/jos/games/player/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "DisplayName"

    .line 75
    invoke-virtual {p2}, Lcom/huawei/hms/jos/games/player/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ImageUrl"

    .line 76
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "PlayerLevel"

    .line 77
    invoke-virtual {p2}, Lcom/huawei/hms/jos/games/player/Player;->getLevel()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "SignTs"

    .line 78
    invoke-virtual {p2}, Lcom/huawei/hms/jos/games/player/Player;->getSignTs()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_1

    .line 80
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/huawei/hmf/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 82
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ":success Callback is null"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre;->showToast(Ljava/lang/String;Landroid/app/Activity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 86
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic lambda$currentPlayerInfo$3(Lcom/huawei/hmf/tasks/OnFailureListener;Landroid/app/Activity;Ljava/lang/Exception;)V
    .locals 1

    .line 88
    instance-of v0, p2, Lcom/huawei/hms/common/ApiException;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 90
    invoke-interface {p0, p2}, Lcom/huawei/hmf/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    goto :goto_0

    .line 92
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ":fail Callback is null"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre;->showToast(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method
